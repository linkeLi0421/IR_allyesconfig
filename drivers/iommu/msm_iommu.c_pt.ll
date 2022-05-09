; ModuleID = '/llk/IR_all_yes/drivers/iommu/msm_iommu.c_pt.bc'
source_filename = "../drivers/iommu/msm_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.msm_iommu_dev = type { ptr, i32, ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, [4 x i32], %struct.iommu_device }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_priv = type { %struct.list_head, %struct.iommu_domain, %struct.io_pgtable_cfg, ptr, ptr, %struct.spinlock }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.81 }
%struct.anon.81 = type { [4 x i64], i32 }
%struct.msm_iommu_ctx_dev = type { ptr, i32, [32 x i32], i32, %struct.list_head }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@msm_iommu_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013msm_iommu: Invalid device ID in context interrupt handler\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_iommu_fault_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iommu/msm_iommu.c\00", [38 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry_ptr = internal global ptr @msm_iommu_fault_handler._entry, section ".printk_index", align 4
@msm_iommu_fault_handler._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013msm_iommu: Unexpected IOMMU page fault!\0A\00", [53 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry_ptr.5 = internal global ptr @msm_iommu_fault_handler._entry.3, section ".printk_index", align 4
@msm_iommu_fault_handler._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013msm_iommu: base = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry_ptr.8 = internal global ptr @msm_iommu_fault_handler._entry.6, section ".printk_index", align 4
@msm_iommu_fault_handler._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013msm_iommu: Fault occurred in context %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry_ptr.11 = internal global ptr @msm_iommu_fault_handler._entry.9, section ".printk_index", align 4
@msm_iommu_fault_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013msm_iommu: Interesting registers:\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_iommu_fault_handler._entry_ptr.14 = internal global ptr @msm_iommu_fault_handler._entry.12, section ".printk_index", align 4
@__initcall__kmod_msm_iommu__232_845_msm_iommu_driver_init4 = internal global ptr @msm_iommu_driver_init, section ".initcall4.init", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm_iommu_lock\00", [17 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013msm_iommu: FAR    = %08x    PAR    = %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_ctx_regs\00", [17 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry_ptr = internal global ptr @print_ctx_regs._entry, section ".printk_index", align 4
@print_ctx_regs._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013msm_iommu: FSR    = %08x [%s%s%s%s%s%s%s%s%s%s]\0A\00", [45 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry_ptr.20 = internal global ptr @print_ctx_regs._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TF \00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AFF \00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"APF \00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TLBMF \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTWDEEF \00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTWSEEF \00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MHF \00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SL \00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SS \00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MULTI \00", [25 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.17, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013msm_iommu: FSYNR0 = %08x    FSYNR1 = %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry_ptr.34 = internal global ptr @print_ctx_regs._entry.32, section ".printk_index", align 4
@print_ctx_regs._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013msm_iommu: TTBR0  = %08x    TTBR1  = %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry_ptr.37 = internal global ptr @print_ctx_regs._entry.35, section ".printk_index", align 4
@print_ctx_regs._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.17, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013msm_iommu: SCTLR  = %08x    ACTLR  = %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@print_ctx_regs._entry_ptr.40 = internal global ptr @print_ctx_regs._entry.38, section ".printk_index", align 4
@msm_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm_iommu_probe, ptr @msm_iommu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.43, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_iommu_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@msm_iommu_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013msm_iommu: Failed to register IOMMU driver\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_iommu_driver_init\00", [42 x i8] zeroinitializer }, align 32
@msm_iommu_driver_init._entry_ptr = internal global ptr @msm_iommu_driver_init._entry, section ".printk_index", align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_iommu\00", [22 x i8] zeroinitializer }, align 32
@msm_iommu_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smmu_pclk\00", [22 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 714, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get smmu_pclk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm_iommu_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr = internal global ptr @msm_iommu_probe._entry, section ".printk_index", align 4
@msm_iommu_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.2, i32 720, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not prepare smmu_pclk\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.51 = internal global ptr @msm_iommu_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iommu_clk\00", [22 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 726, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get iommu_clk\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.55 = internal global ptr @msm_iommu_probe._entry.53, section ".printk_index", align 4
@msm_iommu_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 733, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not prepare iommu_clk\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.58 = internal global ptr @msm_iommu_probe._entry.56, section ".printk_index", align 4
@msm_iommu_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.2, i32 741, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get iommu base\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.61 = internal global ptr @msm_iommu_probe._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,ncb\00", [23 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.46, ptr @.str.2, i32 755, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get ncb\0A\00", [45 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.65 = internal global ptr @msm_iommu_probe._entry.63, section ".printk_index", align 4
@msm_iommu_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.46, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013msm_iommu: Invalid PAR value detected\0A\00", [55 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.68 = internal global ptr @msm_iommu_probe._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msm_iommu_secure_irpt_handler\00", [34 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.46, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013msm_iommu: Request IRQ %d failed with ret=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.72 = internal global ptr @msm_iommu_probe._entry.70, section ".printk_index", align 4
@qcom_iommu_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @qcom_iommu_devices, ptr @qcom_iommu_devices }, [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msm-smmu.%pa\00", [19 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.46, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013msm_iommu: Could not add msm-smmu at %pa to sysfs\0A\00", [43 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.76 = internal global ptr @msm_iommu_probe._entry.74, section ".printk_index", align 4
@msm_iommu_ops = internal global { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr @msm_iommu_capable, ptr @msm_iommu_domain_alloc, ptr @msm_iommu_domain_free, ptr @msm_iommu_attach_dev, ptr @msm_iommu_detach_dev, ptr @msm_iommu_map, ptr null, ptr @msm_iommu_unmap, ptr null, ptr null, ptr @msm_iommu_sync_map, ptr null, ptr @msm_iommu_iova_to_phys, ptr @msm_iommu_probe_device, ptr @msm_iommu_release_device, ptr null, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17895424, ptr null }, [60 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.46, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013msm_iommu: Could not register msm-smmu at %pa\0A\00", [47 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.79 = internal global ptr @msm_iommu_probe._entry.77, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@msm_iommu_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.46, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016msm_iommu: device mapped at %p, irq %d with %d ctx banks\0A\00", [36 x i8] zeroinitializer }, align 32
@msm_iommu_probe._entry_ptr.82 = internal global ptr @msm_iommu_probe._entry.80, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm_iommu_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 424, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"domain already attached\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_iommu_attach_dev\00", [43 x i8] zeroinitializer }, align 32
@msm_iommu_attach_dev._entry_ptr = internal global ptr @msm_iommu_attach_dev._entry, section ".printk_index", align 4
@msm_iommu_domain_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->pgtlock\00", [17 x i8] zeroinitializer }, align 32
@msm_iommu_flush_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @__flush_iotlb, ptr @__flush_iotlb_walk, ptr @__flush_iotlb_page }, [20 x i8] zeroinitializer }, align 32
@msm_iommu_domain_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 354, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate pgtable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_iommu_domain_config\00", [40 x i8] zeroinitializer }, align 32
@msm_iommu_domain_config._entry_ptr = internal global ptr @msm_iommu_domain_config._entry, section ".printk_index", align 4
@insert_iommu_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 608, ptr @.str.90, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Stream ID 0x%hx repeated; ignoring\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"insert_iommu_master\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@insert_iommu_master._entry_ptr = internal global ptr @insert_iommu_master._entry, section ".printk_index", align 4
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"msm_iommu_lock\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 648, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 652, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 653, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 662, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 663, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 36, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 569, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 571, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 583, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 585, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 587, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"msm_iommu_driver\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 826, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 841, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 828, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"msm_iommu_dt_match\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 812, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 712, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 714, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 720, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 724, i32 40 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 726, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 733, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 741, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 753, i32 50 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 755, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 770, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 778, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 781, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [19 x i8] c"qcom_iommu_devices\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 37, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 788, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 790, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"msm_iommu_ops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 674, i32 25 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 796, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 802, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 424, i32 6 }
@___asan_gen_.322 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 342, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c"msm_iommu_flush_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 182, i32 37 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 354, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [29 x i8] c"../drivers/iommu/msm_iommu.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 607, i32 4 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__initcall__kmod_msm_iommu__232_845_msm_iommu_driver_init4, ptr @insert_iommu_master._entry, ptr @insert_iommu_master._entry_ptr, ptr @msm_iommu_attach_dev._entry, ptr @msm_iommu_attach_dev._entry_ptr, ptr @msm_iommu_domain_config._entry, ptr @msm_iommu_domain_config._entry_ptr, ptr @msm_iommu_driver_init._entry, ptr @msm_iommu_driver_init._entry_ptr, ptr @msm_iommu_fault_handler._entry, ptr @msm_iommu_fault_handler._entry.12, ptr @msm_iommu_fault_handler._entry.3, ptr @msm_iommu_fault_handler._entry.6, ptr @msm_iommu_fault_handler._entry.9, ptr @msm_iommu_fault_handler._entry_ptr, ptr @msm_iommu_fault_handler._entry_ptr.11, ptr @msm_iommu_fault_handler._entry_ptr.14, ptr @msm_iommu_fault_handler._entry_ptr.5, ptr @msm_iommu_fault_handler._entry_ptr.8, ptr @msm_iommu_probe._entry, ptr @msm_iommu_probe._entry.49, ptr @msm_iommu_probe._entry.53, ptr @msm_iommu_probe._entry.56, ptr @msm_iommu_probe._entry.59, ptr @msm_iommu_probe._entry.63, ptr @msm_iommu_probe._entry.66, ptr @msm_iommu_probe._entry.70, ptr @msm_iommu_probe._entry.74, ptr @msm_iommu_probe._entry.77, ptr @msm_iommu_probe._entry.80, ptr @msm_iommu_probe._entry_ptr, ptr @msm_iommu_probe._entry_ptr.51, ptr @msm_iommu_probe._entry_ptr.55, ptr @msm_iommu_probe._entry_ptr.58, ptr @msm_iommu_probe._entry_ptr.61, ptr @msm_iommu_probe._entry_ptr.65, ptr @msm_iommu_probe._entry_ptr.68, ptr @msm_iommu_probe._entry_ptr.72, ptr @msm_iommu_probe._entry_ptr.76, ptr @msm_iommu_probe._entry_ptr.79, ptr @msm_iommu_probe._entry_ptr.82, ptr @print_ctx_regs._entry, ptr @print_ctx_regs._entry.18, ptr @print_ctx_regs._entry.32, ptr @print_ctx_regs._entry.35, ptr @print_ctx_regs._entry.38, ptr @print_ctx_regs._entry_ptr, ptr @print_ctx_regs._entry_ptr.20, ptr @print_ctx_regs._entry_ptr.34, ptr @print_ctx_regs._entry_ptr.37, ptr @print_ctx_regs._entry_ptr.40, ptr @msm_iommu_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @msm_iommu_driver, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @msm_iommu_dt_match, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @qcom_iommu_devices, ptr @.str.73, ptr @.str.75, ptr @msm_iommu_ops, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @msm_iommu_domain_config.__key, ptr @.str.85, ptr @msm_iommu_flush_ops, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_fault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_fault_handler._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_fault_handler._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_fault_handler._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_fault_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ctx_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ctx_regs._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ctx_regs._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ctx_regs._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ctx_regs._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_domain_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_flush_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_iommu_domain_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_iommu_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_iommu_fault_handler(i32 %irq, ptr noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @msm_iommu_lock) #8
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.end, label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %fail

do.end3:                                          ; preds = %entry
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %2 = ptrtoint ptr %1 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %2) #11
  %pclk.i = getelementptr inbounds %struct.msm_iommu_dev, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end3.fail_crit_edge

do.end3.fail_crit_edge:                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %do.end3
  %clk.i = getelementptr inbounds %struct.msm_iommu_dev, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.__enable_clocks.exit_crit_edge, label %if.then2.i

if.end.i.__enable_clocks.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__enable_clocks.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.__enable_clocks.exit_crit_edge, label %if.then6.i

if.then2.i.__enable_clocks.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__enable_clocks.exit

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  br label %fail

__enable_clocks.exit:                             ; preds = %if.then2.i.__enable_clocks.exit_crit_edge, %if.end.i.__enable_clocks.exit_crit_edge
  %ncb = getelementptr inbounds %struct.msm_iommu_dev, ptr %dev_id, i32 0, i32 1
  %9 = ptrtoint ptr %ncb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ncb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp60 = icmp sgt i32 %10, 0
  br i1 %cmp60, label %__enable_clocks.exit.for.body_crit_edge, label %__enable_clocks.exit.for.end_crit_edge

__enable_clocks.exit.for.end_crit_edge:           ; preds = %__enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

__enable_clocks.exit.for.body_crit_edge:          ; preds = %__enable_clocks.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %__enable_clocks.exit.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %__enable_clocks.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 32
  %shl = shl i32 %i.061, 12
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %shl
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %do.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %i.061) #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %shl
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !161
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %add.ptr6.i = getelementptr i8, ptr %15, i32 40
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %shl
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !161
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %add.ptr14.i = getelementptr i8, ptr %15, i32 28
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 %shl
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !161
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %19, i32 noundef %21) #11
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i53, ptr @.str.22, ptr @.str.21
  %and25.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %cond27.i = select i1 %tobool26.not.i, ptr @.str.22, ptr @.str.23
  %and28.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.22, ptr @.str.24
  %and31.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.22, ptr @.str.25
  %and34.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %cond36.i = select i1 %tobool35.not.i, ptr @.str.22, ptr @.str.26
  %and37.i = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %cond39.i = select i1 %tobool38.not.i, ptr @.str.22, ptr @.str.27
  %and40.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %cond42.i = select i1 %tobool41.not.i, ptr @.str.22, ptr @.str.28
  %and43.i = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, ptr @.str.22, ptr @.str.29
  %and46.i = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %cond48.i = select i1 %tobool47.not.i, ptr @.str.22, ptr @.str.30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool50.not.i = icmp sgt i32 %17, -1
  %cond51.i = select i1 %tobool50.not.i, ptr @.str.22, ptr @.str.31
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %17, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond27.i, ptr noundef nonnull %cond30.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond36.i, ptr noundef nonnull %cond39.i, ptr noundef nonnull %cond42.i, ptr noundef nonnull %cond45.i, ptr noundef nonnull %cond48.i, ptr noundef nonnull %cond51.i) #11
  %add.ptr59.i = getelementptr i8, ptr %15, i32 44
  %add.ptr61.i = getelementptr i8, ptr %add.ptr59.i, i32 %shl
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #8, !srcloc !161
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %add.ptr67.i = getelementptr i8, ptr %15, i32 48
  %add.ptr69.i = getelementptr i8, ptr %add.ptr67.i, i32 %shl
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !161
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %23, i32 noundef %25) #11
  %add.ptr80.i = getelementptr i8, ptr %15, i32 16
  %add.ptr82.i = getelementptr i8, ptr %add.ptr80.i, i32 %shl
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #8, !srcloc !161
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %add.ptr88.i = getelementptr i8, ptr %15, i32 20
  %add.ptr90.i = getelementptr i8, ptr %add.ptr88.i, i32 %shl
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #8, !srcloc !161
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %27, i32 noundef %29) #11
  %add.ptr103.i = getelementptr i8, ptr %15, i32 %shl
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103.i) #8, !srcloc !161
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %add.ptr109.i = getelementptr i8, ptr %15, i32 4
  %add.ptr111.i = getelementptr i8, ptr %add.ptr109.i, i32 %shl
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #8, !srcloc !161
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %31, i32 noundef %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  %add.ptr37 = getelementptr i8, ptr %35, i32 32
  %add.ptr39 = getelementptr i8, ptr %add.ptr37, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 251658304) #8, !srcloc !173
  br label %for.inc

for.inc:                                          ; preds = %do.end24, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %36 = ptrtoint ptr %ncb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ncb, align 4
  %cmp = icmp slt i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__enable_clocks.exit.for.end_crit_edge
  %38 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i, align 4
  %tobool.not.i55 = icmp eq ptr %39, null
  br i1 %tobool.not.i55, label %for.end.__disable_clocks.exit_crit_edge, label %if.then.i

for.end.__disable_clocks.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__disable_clocks.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %39) #8
  br label %__disable_clocks.exit

__disable_clocks.exit:                            ; preds = %if.then.i, %for.end.__disable_clocks.exit_crit_edge
  %40 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  br label %fail

fail:                                             ; preds = %__disable_clocks.exit, %if.then6.i, %do.end3.fail_crit_edge, %do.end
  tail call void @_raw_spin_unlock(ptr noundef nonnull @msm_iommu_lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_iommu_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %ioaddr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioaddr) #8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ioaddr, align 4, !annotation !174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !174
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %ctx_list = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ctx_list, ptr %ctx_list, align 4
  %prev.i = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx_list, ptr %prev.i, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.44) #8
  %pclk = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45) #11
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @clk_prepare(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.52) #8
  %clk = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %clk, align 4
  %cmp.i292 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %do.end28, label %if.end33

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54) #11
  %16 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %17) #8
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  %call35 = tail call i32 @clk_prepare(ptr noundef %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.57) #11
  %23 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %call44 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 4
  %call46 = tail call ptr @devm_ioremap_resource(ptr noundef %26, ptr noundef %call44) #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call46, ptr %call.i, align 4
  %cmp.i293 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %do.end52, label %if.end56

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.60) #11
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %fail

if.end56:                                         ; preds = %if.end43
  %33 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call44, align 4
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ioaddr, align 4
  %call57 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call57, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  br i1 %cmp, label %if.end56.fail_crit_edge, label %if.end60

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end60:                                         ; preds = %if.end56
  %37 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.62, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool63.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.64) #11
  br label %fail

if.end69:                                         ; preds = %if.end60
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %ncb = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %ncb to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ncb, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call fastcc void @msm_iommu_reset(ptr noundef %47, i32 noundef %44)
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %51 = or i32 %50, 16777216
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %add.ptr89 = getelementptr i8, ptr %55, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 0) #8, !srcloc !173
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %add.ptr96 = getelementptr i8, ptr %57, i32 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #8, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @arm_heavy_mb() #8
  %59 = and i32 %58, -769
  %60 = or i32 %59, 256
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %add.ptr107 = getelementptr i8, ptr %62, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %60) #8, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %add.ptr115 = getelementptr i8, ptr %64, i32 2064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #8, !srcloc !173
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %add.ptr120 = getelementptr i8, ptr %66, i32 28
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #8, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %add.ptr130 = getelementptr i8, ptr %69, i32 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #8, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @arm_heavy_mb() #8
  %71 = and i32 %70, -769
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %add.ptr141 = getelementptr i8, ptr %73, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %71) #8, !srcloc !173
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %77 = and i32 %76, -16777217
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #8, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool165.not = icmp eq i32 %67, 0
  br i1 %tobool165.not, label %do.end169, label %if.end172

do.end169:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #11
  br label %fail

if.end172:                                        ; preds = %if.end69
  %80 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev2, align 4
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  %call175 = call i32 @devm_request_threaded_irq(ptr noundef %81, i32 noundef %83, ptr noundef null, ptr noundef nonnull @msm_iommu_fault_handler, i32 noundef 8320, ptr noundef nonnull @.str.69, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end184, label %do.end180

do.end180:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 4
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %85, i32 noundef %call175) #11
  br label %fail

if.end184:                                        ; preds = %if.end172
  %dev_node = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 6
  %86 = load ptr, ptr @qcom_iommu_devices, align 4
  %call.i.i294 = call zeroext i1 @__list_add_valid(ptr noundef %dev_node, ptr noundef nonnull @qcom_iommu_devices, ptr noundef %86) #8
  br i1 %call.i.i294, label %if.end.i.i, label %if.end184.list_add.exit_crit_edge

if.end184.list_add.exit_crit_edge:                ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev_node, ptr %prev1.i.i, align 4
  %88 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %dev_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @qcom_iommu_devices, ptr %prev3.i.i, align 4
  store volatile ptr %dev_node, ptr @qcom_iommu_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end184.list_add.exit_crit_edge
  %iommu185 = getelementptr inbounds %struct.msm_iommu_dev, ptr %call.i, i32 0, i32 10
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %call187 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu185, ptr noundef %91, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull %ioaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end195, label %do.end192

do.end192:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %ioaddr) #11
  br label %fail

if.end195:                                        ; preds = %list_add.exit
  %call198 = call i32 @iommu_device_register(ptr noundef %iommu185, ptr noundef nonnull @msm_iommu_ops, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end206, label %do.end203

do.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %ioaddr) #11
  br label %fail

if.end206:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %call207 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @msm_iommu_ops) #8
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 4
  %96 = ptrtoint ptr %ncb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ncb, align 4
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %93, i32 noundef %95, i32 noundef %97) #11
  br label %cleanup

fail:                                             ; preds = %do.end203, %do.end192, %do.end180, %do.end169, %do.end67, %if.end56.fail_crit_edge, %do.end52
  %ret.0 = phi i32 [ %32, %do.end52 ], [ %call.i.i, %do.end67 ], [ %call175, %do.end180 ], [ %call187, %do.end192 ], [ %call198, %do.end203 ], [ -19, %do.end169 ], [ -19, %if.end56.fail_crit_edge ]
  %98 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk, align 4
  call void @clk_unprepare(ptr noundef %99) #8
  %100 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pclk, align 4
  call void @clk_unprepare(ptr noundef %101) #8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end206, %do.end40, %do.end28, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %call13, %do.end18 ], [ %20, %do.end28 ], [ %call35, %do.end40 ], [ %ret.0, %fail ], [ 0, %if.end206 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioaddr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.msm_iommu_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #8
  %pclk = getelementptr inbounds %struct.msm_iommu_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_iommu_reset(ptr noundef %base, i32 noundef %ncb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 1048448
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !173
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %add.ptr25 = getelementptr i8, ptr %base, i32 1048460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #8, !srcloc !173
  %add.ptr30 = getelementptr i8, ptr %base, i32 1048204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %5) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !173
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %7 = and i32 %6, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %7) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %add.ptr69 = getelementptr i8, ptr %base, i32 1048064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %add.ptr73 = getelementptr i8, ptr %base, i32 1048320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %add.ptr77 = getelementptr i8, ptr %base, i32 1048572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #8, !srcloc !173
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %9 = or i32 %8, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncb)
  %cmp340 = icmp sgt i32 %ncb, 0
  br i1 %cmp340, label %do.body94.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body94.lr.ph:                                  ; preds = %entry
  %add.ptr195 = getelementptr i8, ptr %base, i32 4
  %add.ptr207 = getelementptr i8, ptr %base, i32 36
  %add.ptr213 = getelementptr i8, ptr %base, i32 16
  %add.ptr219 = getelementptr i8, ptr %base, i32 20
  %add.ptr225 = getelementptr i8, ptr %base, i32 24
  %add.ptr231 = getelementptr i8, ptr %base, i32 76
  %add.ptr237 = getelementptr i8, ptr %base, i32 28
  %add.ptr243 = getelementptr i8, ptr %base, i32 40
  %add.ptr249 = getelementptr i8, ptr %base, i32 2048
  %add.ptr255 = getelementptr i8, ptr %base, i32 68
  %add.ptr261 = getelementptr i8, ptr %base, i32 72
  %add.ptr267 = getelementptr i8, ptr %base, i32 60
  %add.ptr273 = getelementptr i8, ptr %base, i32 8
  br label %do.body94

do.body94:                                        ; preds = %do.body94.do.body94_crit_edge, %do.body94.lr.ph
  %ctx.0341 = phi i32 [ 0, %do.body94.lr.ph ], [ %inc, %do.body94.do.body94_crit_edge ]
  %shl = shl i32 %ctx.0341, 2
  %or = or i32 %shl, 1044480
  %add.ptr98 = getelementptr i8, ptr %base, i32 %or
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %11 = and i32 %10, -513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %11) #8, !srcloc !173
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %13 = and i32 %12, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %13) #8, !srcloc !173
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %15 = and i32 %14, -2049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %15) #8, !srcloc !173
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %17 = and i32 %16, -12289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %17) #8, !srcloc !173
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %19 = and i32 %18, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %19) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  %shl196 = shl i32 %ctx.0341, 12
  %add.ptr197 = getelementptr i8, ptr %add.ptr195, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %add.ptr203 = getelementptr i8, ptr %base, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %add.ptr209 = getelementptr i8, ptr %add.ptr207, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %add.ptr215 = getelementptr i8, ptr %add.ptr213, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %add.ptr221 = getelementptr i8, ptr %add.ptr219, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %add.ptr227 = getelementptr i8, ptr %add.ptr225, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %add.ptr233 = getelementptr i8, ptr %add.ptr231, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %add.ptr239 = getelementptr i8, ptr %add.ptr237, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %add.ptr245 = getelementptr i8, ptr %add.ptr243, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %add.ptr251 = getelementptr i8, ptr %add.ptr249, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr251, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %add.ptr257 = getelementptr i8, ptr %add.ptr255, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %add.ptr263 = getelementptr i8, ptr %add.ptr261, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.ptr269 = getelementptr i8, ptr %add.ptr267, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr269, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %add.ptr275 = getelementptr i8, ptr %add.ptr273, i32 %shl196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 0) #8, !srcloc !173
  %inc = add nuw nsw i32 %ctx.0341, 1
  %exitcond.not = icmp eq i32 %inc, %ncb
  br i1 %exitcond.not, label %do.body94.for.end_crit_edge, label %do.body94.do.body94_crit_edge

do.body94.do.body94_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

do.body94.for.end_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body94.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @msm_iommu_capable(i32 noundef %cap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_iommu_domain_alloc(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %fail_nomem, label %if.end2

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %domain = getelementptr inbounds %struct.msm_priv, ptr %call7.i.i, i32 0, i32 1
  %geometry = getelementptr inbounds %struct.msm_priv, ptr %call7.i.i, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.msm_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %4 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.msm_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 2
  %5 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

fail_nomem:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_nomem, %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain, %if.end2 ], [ null, %fail_nomem ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_domain_free(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_attach_dev(ptr noundef %domain, ptr noundef %dev) #0 align 64 {
entry:
  %.compoundliteral.sroa.8.i = alloca [44 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -8
  %dev1 = getelementptr i8, ptr %domain, i32 116
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  %pgtlock.i = getelementptr i8, ptr %domain, i32 120
  tail call void @__raw_spin_lock_init(ptr noundef %pgtlock.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @msm_iommu_domain_config.__key, i16 noundef signext 3) #8
  %cfg.i = getelementptr i8, ptr %domain, i32 40
  %1 = load i32, ptr getelementptr inbounds (%struct.iommu_ops, ptr @msm_iommu_ops, i32 0, i32 39), align 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %.compoundliteral.sroa.8.i.4.i.4..sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.8.i, i32 4
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.8.i.4.i.4..sroa_idx, i32 0, i32 40)
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cfg.i, align 8
  %.compoundliteral.sroa.2.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 44
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %.compoundliteral.sroa.2.0.cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 48
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0.cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %.compoundliteral.sroa.3.0.cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 52
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0.cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %.compoundliteral.sroa.4.0.cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 56
  %9 = ptrtoint ptr %.compoundliteral.sroa.5.0.cfg.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %.compoundliteral.sroa.5.0.cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.69.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 60
  %10 = ptrtoint ptr %.compoundliteral.sroa.69.0.cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @msm_iommu_flush_ops, ptr %.compoundliteral.sroa.69.0.cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 64
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0.cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %.compoundliteral.sroa.7.0.cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.8.0.cfg.sroa_idx.i = getelementptr i8, ptr %domain, i32 68
  %12 = call ptr @memcpy(ptr %.compoundliteral.sroa.8.0.cfg.sroa_idx.i, ptr %.compoundliteral.sroa.8.i, i32 44)
  %call2.i = tail call ptr @alloc_io_pgtable_ops(i32 noundef 4, ptr noundef %cfg.i, ptr noundef %add.ptr.i) #8
  %iop.i = getelementptr i8, ptr %domain, i32 112
  %13 = ptrtoint ptr %iop.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %iop.i, align 8
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end5.i, label %if.end.i

do.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.86) #11
  br label %msm_iommu_domain_config.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %.compoundliteral.sroa.2.0.cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %.compoundliteral.sroa.2.0.cfg.sroa_idx.i, align 4
  store i32 %17, ptr getelementptr inbounds (%struct.iommu_ops, ptr @msm_iommu_ops, i32 0, i32 39), align 4
  br label %msm_iommu_domain_config.exit

msm_iommu_domain_config.exit:                     ; preds = %if.end.i, %do.end5.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  %.pn116 = load ptr, ptr @qcom_iommu_devices, align 4
  %cmp9.not118 = icmp eq ptr %.pn116, @qcom_iommu_devices
  br i1 %cmp9.not118, label %msm_iommu_domain_config.exit.fail_crit_edge, label %for.body.lr.ph

msm_iommu_domain_config.exit.fail_crit_edge:      ; preds = %msm_iommu_domain_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body.lr.ph:                                   ; preds = %msm_iommu_domain_config.exit
  %of_node14 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %18 = getelementptr i8, ptr %domain, i32 72
  %tcr.i = getelementptr i8, ptr %domain, i32 76
  %prrr.i = getelementptr i8, ptr %domain, i32 84
  %nmrr.i = getelementptr i8, ptr %domain, i32 80
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %for.body.lr.ph
  %.pn119 = phi ptr [ %.pn116, %for.body.lr.ph ], [ %.pn, %for.inc53.for.body_crit_edge ]
  %iommu.0120 = getelementptr i8, ptr %.pn119, i32 -24
  %ctx_list = getelementptr i8, ptr %.pn119, i32 16
  %19 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx_list, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 -140
  %21 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr13, align 4
  %23 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node14, align 8
  %cmp15 = icmp eq ptr %22, %24
  br i1 %cmp15, label %if.then, label %for.body.for.inc53_crit_edge

for.body.for.inc53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.then:                                          ; preds = %for.body
  %pclk.i = getelementptr i8, ptr %.pn119, i32 -4
  %25 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i85 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i85, label %if.end.i86, label %if.then.fail_crit_edge

if.then.fail_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i86:                                       ; preds = %if.then
  %clk.i = getelementptr i8, ptr %.pn119, i32 -8
  %27 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %if.end.i86.__enable_clocks.exit_crit_edge, label %if.then2.i

if.end.i86.__enable_clocks.exit_crit_edge:        ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %__enable_clocks.exit

if.then2.i:                                       ; preds = %if.end.i86
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.__enable_clocks.exit_crit_edge, label %if.then6.i

if.then2.i.__enable_clocks.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__enable_clocks.exit

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  br label %fail

__enable_clocks.exit:                             ; preds = %if.then2.i.__enable_clocks.exit_crit_edge, %if.end.i86.__enable_clocks.exit_crit_edge
  %31 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn84110 = load ptr, ptr %ctx_list, align 4
  %cmp26.not112 = icmp eq ptr %.pn84110, %ctx_list
  br i1 %cmp26.not112, label %__enable_clocks.exit.for.end_crit_edge, label %for.body29.lr.ph

__enable_clocks.exit.for.end_crit_edge:           ; preds = %__enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body29.lr.ph:                                 ; preds = %__enable_clocks.exit
  %context_map = getelementptr i8, ptr %.pn119, i32 24
  %ncb = getelementptr i8, ptr %.pn119, i32 -20
  br label %for.body29

for.body29:                                       ; preds = %config_mids.exit.for.body29_crit_edge, %for.body29.lr.ph
  %.pn84113 = phi ptr [ %.pn84110, %for.body29.lr.ph ], [ %.pn84, %config_mids.exit.for.body29_crit_edge ]
  %master.0115 = getelementptr i8, ptr %.pn84113, i32 -140
  %num = getelementptr i8, ptr %.pn84113, i32 -136
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not = icmp eq i32 %33, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #11
  br label %fail

if.end35:                                         ; preds = %for.body29
  %34 = ptrtoint ptr %ncb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ncb, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end35
  %call.i87 = tail call i32 @_find_next_zero_bit_be(ptr noundef %context_map, i32 noundef %35, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i87, i32 %35)
  %cmp.i = icmp eq i32 %call.i87, %35
  br i1 %cmp.i, label %msm_iommu_alloc_ctx.exit.thread, label %do.cond.i

msm_iommu_alloc_ctx.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -28, ptr %num, align 4
  br label %fail

do.cond.i:                                        ; preds = %do.body.i
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i87, ptr noundef %context_map) #8
  %tobool.not.i88 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i88, label %msm_iommu_alloc_ctx.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

msm_iommu_alloc_ctx.exit:                         ; preds = %do.cond.i
  %37 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.i87, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call.i87)
  %cmp39 = icmp ugt i32 %call.i87, -4096
  br i1 %cmp39, label %msm_iommu_alloc_ctx.exit.fail_crit_edge, label %if.end45, !prof !226

msm_iommu_alloc_ctx.exit.fail_crit_edge:          ; preds = %msm_iommu_alloc_ctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end45:                                         ; preds = %msm_iommu_alloc_ctx.exit
  %num_mids.i = getelementptr i8, ptr %.pn84113, i32 -4
  %38 = ptrtoint ptr %num_mids.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_mids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp142.i = icmp sgt i32 %39, 0
  br i1 %cmp142.i, label %if.end45.for.body.i_crit_edge, label %if.end45.config_mids.exit_crit_edge

if.end45.config_mids.exit_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_mids.exit

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %i.0143.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_iommu_ctx_dev, ptr %master.0115, i32 0, i32 2, i32 %i.0143.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %42 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iommu.0120, align 4
  %shl.i = shl i32 %41, 2
  %add.ptr.i89 = getelementptr i8, ptr %45, i32 1044480
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i89, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iommu.0120, align 4
  %shl6.i = shl i32 %43, 2
  %add.ptr7.i = getelementptr i8, ptr %47, i32 1046528
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 %shl6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #8, !srcloc !173
  %48 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iommu.0120, align 4
  %or.i = or i32 %shl.i, 1044480
  %add.ptr12.i = getelementptr i8, ptr %49, i32 %or.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %51 = and i32 %50, -520093697
  %52 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iommu.0120, align 4
  %add.ptr20.i = getelementptr i8, ptr %53, i32 %or.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %51) #8, !srcloc !173
  %54 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iommu.0120, align 4
  %add.ptr30.i = getelementptr i8, ptr %55, i32 %or.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %57 = and i32 %56, -16711681
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %and38.i = and i32 %43, 255
  %shl39.i = shl nuw nsw i32 %and38.i, 8
  %add40.i = or i32 %58, %shl39.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %add40.i) #8
  %60 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iommu.0120, align 4
  %add.ptr44.i = getelementptr i8, ptr %61, i32 %or.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %59) #8, !srcloc !173
  %62 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iommu.0120, align 4
  %or53.i = or i32 %shl6.i, 1046528
  %add.ptr54.i = getelementptr i8, ptr %63, i32 %or53.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %65 = and i32 %64, -7937
  %66 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iommu.0120, align 4
  %add.ptr66.i = getelementptr i8, ptr %67, i32 %or53.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %65) #8, !srcloc !173
  %68 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iommu.0120, align 4
  %add.ptr74.i = getelementptr i8, ptr %69, i32 8
  %shl75.i = shl i32 %43, 12
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %shl75.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  tail call void @arm_heavy_mb() #8
  %71 = and i32 %70, 16777215
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %add86.i = or i32 %72, %and38.i
  %73 = tail call i32 @llvm.bswap.i32(i32 %add86.i) #8
  %74 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iommu.0120, align 4
  %add.ptr88.i = getelementptr i8, ptr %75, i32 8
  %add.ptr90.i = getelementptr i8, ptr %add.ptr88.i, i32 %shl75.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 %73) #8, !srcloc !173
  %76 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iommu.0120, align 4
  %add.ptr100.i = getelementptr i8, ptr %77, i32 %or.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  tail call void @arm_heavy_mb() #8
  %79 = or i32 %78, 49152
  %80 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iommu.0120, align 4
  %add.ptr112.i = getelementptr i8, ptr %81, i32 %or.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 %79) #8, !srcloc !173
  %inc.i = add nuw nsw i32 %i.0143.i, 1
  %82 = ptrtoint ptr %num_mids.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_mids.i, align 4
  %cmp.i90 = icmp slt i32 %inc.i, %83
  br i1 %cmp.i90, label %for.body.i.for.body.i_crit_edge, label %for.body.i.config_mids.exit_crit_edge

for.body.i.config_mids.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_mids.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

config_mids.exit:                                 ; preds = %for.body.i.config_mids.exit_crit_edge, %if.end45.config_mids.exit_crit_edge
  %84 = ptrtoint ptr %iommu.0120 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iommu.0120, align 4
  %86 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num, align 4
  tail call fastcc void @__reset_context(ptr noundef %85, i32 noundef %87) #8
  %shl.i91 = shl i32 %87, 12
  %add.ptr1.i92 = getelementptr i8, ptr %85, i32 %shl.i91
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i92) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %89 = or i32 %88, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %89) #8, !srcloc !173
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i92) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %91 = or i32 %90, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %91) #8, !srcloc !173
  %add.ptr33.i = getelementptr i8, ptr %85, i32 4
  %add.ptr35.i = getelementptr i8, ptr %add.ptr33.i, i32 %shl.i91
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  tail call void @arm_heavy_mb() #8
  %93 = or i32 %92, 3145728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %93) #8, !srcloc !173
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %95 = or i32 %94, 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %95) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %tcr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tcr.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  %add.ptr72.i = getelementptr i8, ptr %85, i32 24
  %add.ptr74.i93 = getelementptr i8, ptr %add.ptr72.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i93, i32 %98) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %18, align 8
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  %add.ptr79.i = getelementptr i8, ptr %85, i32 16
  %add.ptr81.i = getelementptr i8, ptr %add.ptr79.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %101) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  %add.ptr85.i = getelementptr i8, ptr %85, i32 20
  %add.ptr87.i = getelementptr i8, ptr %add.ptr85.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %prrr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %prrr.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #8
  %add.ptr92.i = getelementptr i8, ptr %85, i32 52
  %add.ptr94.i = getelementptr i8, ptr %add.ptr92.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %104) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %nmrr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nmrr.i, align 8
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #8
  %add.ptr99.i = getelementptr i8, ptr %85, i32 56
  %add.ptr101.i = getelementptr i8, ptr %add.ptr99.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %107) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.ptr105.i = getelementptr i8, ptr %85, i32 2048
  %add.ptr107.i = getelementptr i8, ptr %add.ptr105.i, i32 %shl.i91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107.i, i32 0) #8, !srcloc !173
  %shl112.i = shl i32 %87, 2
  %or.i94 = or i32 %shl112.i, 1046528
  %add.ptr113.i = getelementptr i8, ptr %85, i32 %or.i94
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  tail call void @arm_heavy_mb() #8
  %109 = and i32 %108, -256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 %109) #8, !srcloc !173
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  tail call void @arm_heavy_mb() #8
  %111 = or i32 %110, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %111) #8, !srcloc !173
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  %113 = or i32 %112, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %113) #8, !srcloc !173
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %115 = or i32 %114, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %115) #8, !srcloc !173
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %117 = or i32 %116, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %117) #8, !srcloc !173
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @arm_heavy_mb() #8
  %119 = or i32 %118, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %119) #8, !srcloc !173
  %add.ptr231.i = getelementptr i8, ptr %85, i32 76
  %add.ptr233.i = getelementptr i8, ptr %add.ptr231.i, i32 %shl.i91
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233.i) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  %121 = or i32 %120, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233.i, i32 %121) #8, !srcloc !173
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i92) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  tail call void @arm_heavy_mb() #8
  %123 = or i32 %122, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %123) #8, !srcloc !173
  %124 = ptrtoint ptr %.pn84113 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn84 = load ptr, ptr %.pn84113, align 4
  %cmp26.not = icmp eq ptr %.pn84, %ctx_list
  br i1 %cmp26.not, label %config_mids.exit.for.end_crit_edge, label %config_mids.exit.for.body29_crit_edge

config_mids.exit.for.body29_crit_edge:            ; preds = %config_mids.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

config_mids.exit.for.end_crit_edge:               ; preds = %config_mids.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %config_mids.exit.for.end_crit_edge, %__enable_clocks.exit.for.end_crit_edge
  %125 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %clk.i, align 4
  %tobool.not.i96 = icmp eq ptr %126, null
  br i1 %tobool.not.i96, label %for.end.__disable_clocks.exit_crit_edge, label %if.then.i

for.end.__disable_clocks.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__disable_clocks.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %126) #8
  br label %__disable_clocks.exit

__disable_clocks.exit:                            ; preds = %if.then.i, %for.end.__disable_clocks.exit_crit_edge
  %127 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %128) #8
  %dom_node = getelementptr i8, ptr %.pn119, i32 8
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dom_node, ptr noundef %add.ptr.i, ptr noundef %130) #8
  br i1 %call.i.i, label %if.end.i.i, label %__disable_clocks.exit.for.inc53_crit_edge

__disable_clocks.exit.for.inc53_crit_edge:        ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.end.i.i:                                       ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %dom_node, ptr %prev1.i.i, align 4
  %132 = ptrtoint ptr %dom_node to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %130, ptr %dom_node, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn119, i32 12
  %133 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i, ptr %prev3.i.i, align 4
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %dom_node, ptr %add.ptr.i, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.end.i.i, %__disable_clocks.exit.for.inc53_crit_edge, %for.body.for.inc53_crit_edge
  %135 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp9.not = icmp eq ptr %.pn, @qcom_iommu_devices
  br i1 %cmp9.not, label %for.inc53.fail_crit_edge, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc53.fail_crit_edge:                         ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %for.inc53.fail_crit_edge, %msm_iommu_alloc_ctx.exit.fail_crit_edge, %msm_iommu_alloc_ctx.exit.thread, %do.end34, %if.then6.i, %if.then.fail_crit_edge, %msm_iommu_domain_config.exit.fail_crit_edge
  %ret.2 = phi i32 [ -17, %do.end34 ], [ -19, %msm_iommu_alloc_ctx.exit.thread ], [ %call4.i, %if.then6.i ], [ 0, %msm_iommu_domain_config.exit.fail_crit_edge ], [ -19, %msm_iommu_alloc_ctx.exit.fail_crit_edge ], [ 0, %for.inc53.fail_crit_edge ], [ %call.i, %if.then.fail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call5) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_detach_dev(ptr noundef readonly %domain, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -8
  %iop = getelementptr i8, ptr %domain, i32 112
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  tail call void @free_io_pgtable_ops(ptr noundef %1) #8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn56 = load ptr, ptr %add.ptr.i, align 4
  %cmp8.not58 = icmp eq ptr %.pn56, %add.ptr.i
  br i1 %cmp8.not58, label %entry.fail_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body:                                         ; preds = %__disable_clocks.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %__disable_clocks.exit.for.body_crit_edge ], [ %.pn56, %entry.for.body_crit_edge ]
  %iommu.060 = getelementptr i8, ptr %.pn59, i32 -32
  %pclk.i = getelementptr i8, ptr %.pn59, i32 -12
  %3 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %for.body
  %clk.i = getelementptr i8, ptr %.pn59, i32 -16
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end_crit_edge, label %if.then6.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  br label %fail

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %ctx_list = getelementptr i8, ptr %.pn59, i32 8
  %9 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn4653 = load ptr, ptr %ctx_list, align 4
  %cmp17.not54 = icmp eq ptr %.pn4653, %ctx_list
  br i1 %cmp17.not54, label %if.end.for.end_crit_edge, label %for.body20.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body20.lr.ph:                                 ; preds = %if.end
  %context_map = getelementptr i8, ptr %.pn59, i32 16
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %.pn4655 = phi ptr [ %.pn4653, %for.body20.lr.ph ], [ %.pn46, %for.body20.for.body20_crit_edge ]
  %num = getelementptr i8, ptr %.pn4655, i32 -136
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  tail call void @_clear_bit(i32 noundef %11, ptr noundef %context_map) #8
  %12 = ptrtoint ptr %iommu.060 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iommu.060, align 4
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  tail call fastcc void @__reset_context(ptr noundef %13, i32 noundef %15)
  %16 = ptrtoint ptr %.pn4655 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn46 = load ptr, ptr %.pn4655, align 4
  %cmp17.not = icmp eq ptr %.pn46, %ctx_list
  br i1 %cmp17.not, label %for.body20.for.end_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.body20.for.end_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body20.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i, align 4
  %tobool.not.i48 = icmp eq ptr %18, null
  br i1 %tobool.not.i48, label %for.end.__disable_clocks.exit_crit_edge, label %if.then.i

for.end.__disable_clocks.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__disable_clocks.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %18) #8
  br label %__disable_clocks.exit

__disable_clocks.exit:                            ; preds = %if.then.i, %for.end.__disable_clocks.exit_crit_edge
  %19 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  %21 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp8.not = icmp eq ptr %.pn, %add.ptr.i
  br i1 %cmp8.not, label %__disable_clocks.exit.fail_crit_edge, label %__disable_clocks.exit.for.body_crit_edge

__disable_clocks.exit.for.body_crit_edge:         ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__disable_clocks.exit.fail_crit_edge:             ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %__disable_clocks.exit.fail_crit_edge, %if.then6.i, %for.body.fail_crit_edge, %entry.fail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %pa, i32 noundef %len, i32 noundef %prot, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtlock = getelementptr i8, ptr %domain, i32 120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pgtlock) #8
  %iop = getelementptr i8, ptr %domain, i32 112
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call7 = tail call i32 %3(ptr noundef %1, i32 noundef %iova, i32 noundef %pa, i32 noundef %len, i32 noundef %prot, i32 noundef 2592) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pgtlock, i32 noundef %call3) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_unmap(ptr noundef %domain, i32 noundef %iova, i32 noundef %len, ptr noundef %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtlock = getelementptr i8, ptr %domain, i32 120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pgtlock) #8
  %iop = getelementptr i8, ptr %domain, i32 112
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap, align 4
  %call7 = tail call i32 %3(ptr noundef %1, i32 noundef %iova, i32 noundef %len, ptr noundef %gather) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pgtlock, i32 noundef %call3) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_sync_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -8
  tail call fastcc void @__flush_iotlb_range(i32 noundef %iova, i32 noundef %size, i32 noundef 4096, ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_iova_to_phys(ptr nocapture noundef readonly %domain, i32 noundef %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %ctx_list = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ctx_list, align 4
  %cmp.i = icmp eq ptr %3, %ctx_list
  %add.ptr12 = getelementptr i8, ptr %3, i32 -140
  %tobool13.not = icmp eq ptr %add.ptr12, null
  %or.cond = or i1 %cmp.i, %tobool13.not
  br i1 %or.cond, label %entry.fail_crit_edge, label %if.end15

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end15:                                         ; preds = %entry
  %pclk.i = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.fail_crit_edge

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %if.end15
  %clk.i = getelementptr i8, ptr %1, i32 -16
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.do.body20_crit_edge, label %if.then2.i

if.end.i.do.body20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.do.body20_crit_edge, label %if.then2.i.fail.sink.split_crit_edge

if.then2.i.fail.sink.split_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.sink.split

if.then2.i.do.body20_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body20:                                        ; preds = %if.then2.i.do.body20_crit_edge, %if.end.i.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr23 = getelementptr i8, ptr %9, i32 2048
  %num = getelementptr i8, ptr %3, i32 -136
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %shl = shl i32 %11, 12
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  tail call void @arm_heavy_mb() #8
  %and = and i32 %va, -4096
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr29 = getelementptr i8, ptr %14, i32 2064
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  %shl31 = shl i32 %16, 12
  %add.ptr32 = getelementptr i8, ptr %add.ptr29, i32 %shl31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %12) #8, !srcloc !173
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %add.ptr34 = getelementptr i8, ptr %18, i32 28
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num, align 4
  %shl36 = shl i32 %20, 12
  %add.ptr37 = getelementptr i8, ptr %add.ptr34, i32 %shl36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !161
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %add.ptr44 = getelementptr i8, ptr %24, i32 28
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num, align 4
  %shl46 = shl i32 %26, 12
  %add.ptr47 = getelementptr i8, ptr %add.ptr44, i32 %shl46
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  %. = select i1 %tobool52.not, i32 -4096, i32 -16777216
  %.100 = select i1 %tobool52.not, i32 4095, i32 16777215
  %and56 = and i32 %22, %.
  %and57 = and i32 %.100, %va
  %or58 = or i32 %and56, %and57
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %add.ptr63 = getelementptr i8, ptr %30, i32 28
  %31 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num, align 4
  %shl65 = shl i32 %32, 12
  %add.ptr66 = getelementptr i8, ptr %add.ptr63, i32 %shl65
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool72.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool72.not, i32 %or58, i32 0
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  %tobool.not.i93 = icmp eq ptr %36, null
  br i1 %tobool.not.i93, label %do.body20.fail.sink.split_crit_edge, label %if.then.i

do.body20.fail.sink.split_crit_edge:              ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.sink.split

if.then.i:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %36) #8
  br label %fail.sink.split

fail.sink.split:                                  ; preds = %if.then.i, %do.body20.fail.sink.split_crit_edge, %if.then2.i.fail.sink.split_crit_edge
  %ret.2.ph = phi i32 [ %call4.i, %if.then2.i.fail.sink.split_crit_edge ], [ %spec.select, %do.body20.fail.sink.split_crit_edge ], [ %spec.select, %if.then.i ]
  %37 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %38) #8
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end15.fail_crit_edge, %entry.fail_crit_edge
  %ret.2 = phi i32 [ 0, %entry.fail_crit_edge ], [ %call.i, %if.end15.fail_crit_edge ], [ %ret.2.ph, %fail.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call2) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_iommu_probe_device(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  %of_node4.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @qcom_iommu_devices, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @qcom_iommu_devices
  br i1 %cmp.not.i, label %find_iommu_for_dev.exit.thread, label %for.body.i

find_iommu_for_dev.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call2) #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ctx_list.i = getelementptr i8, ptr %.pn.i, i32 16
  %1 = ptrtoint ptr %ctx_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx_list.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %2, i32 -140
  %3 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr3.i, align 4
  %5 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node4.i, align 8
  %cmp5.i = icmp eq ptr %4, %6
  br i1 %cmp5.i, label %find_iommu_for_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

find_iommu_for_dev.exit:                          ; preds = %for.body.i
  %iommu.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call2) #8
  %tobool.not = icmp eq ptr %iommu.0.le.i, null
  br i1 %tobool.not, label %find_iommu_for_dev.exit.cleanup_crit_edge, label %if.end

find_iommu_for_dev.exit.cleanup_crit_edge:        ; preds = %find_iommu_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %find_iommu_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %iommu7 = getelementptr i8, ptr %.pn.i, i32 40
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_iommu_for_dev.exit.cleanup_crit_edge, %find_iommu_for_dev.exit.thread
  %retval.0 = phi ptr [ %iommu7, %if.end ], [ inttoptr (i32 -19 to ptr), %find_iommu_for_dev.exit.thread ], [ inttoptr (i32 -19 to ptr), %find_iommu_for_dev.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_release_device(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %spec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @msm_iommu_lock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @qcom_iommu_devices, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp6.not = icmp eq ptr %.pn, @qcom_iommu_devices
  br i1 %cmp6.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev8 = getelementptr i8, ptr %.pn, i32 -16
  %1 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev8, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %5 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec, align 4
  %cmp9 = icmp eq ptr %4, %6
  br i1 %cmp9, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %storemerge.le = getelementptr i8, ptr %.pn, i32 -24
  %tobool.not = icmp eq ptr %storemerge.le, null
  br i1 %tobool.not, label %for.end.fail_crit_edge, label %lor.lhs.false

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

lor.lhs.false:                                    ; preds = %for.end
  %dev15 = getelementptr i8, ptr %.pn, i32 -16
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 4
  %of_node16 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node16, align 8
  %11 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec, align 4
  %cmp18.not = icmp eq ptr %10, %12
  br i1 %cmp18.not, label %if.end21, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end21:                                         ; preds = %lor.lhs.false
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %13 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end21.dev_iommu_priv_get.exit.i_crit_edge, label %if.then.i.i

if.end21.dev_iommu_priv_get.exit.i_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_iommu_priv_get.exit.i

if.then.i.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i.i, align 4
  br label %dev_iommu_priv_get.exit.i

dev_iommu_priv_get.exit.i:                        ; preds = %if.then.i.i, %if.end21.dev_iommu_priv_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.then.i.i ], [ null, %if.end21.dev_iommu_priv_get.exit.i_crit_edge ]
  %ctx_list.i = getelementptr i8, ptr %.pn, i32 16
  %17 = ptrtoint ptr %ctx_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ctx_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %ctx_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %dev_iommu_priv_get.exit.i.if.end.i_crit_edge

dev_iommu_priv_get.exit.i.if.end.i_crit_edge:     ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %dev_iommu_priv_get.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 148) #12
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call7.i.i.i, align 8
  %list.i = getelementptr inbounds %struct.msm_iommu_ctx_dev, ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %ctx_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %ctx_list.i, ptr noundef %24) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add.exit.i_crit_edge

if.then.i.list_add.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.msm_iommu_ctx_dev, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctx_list.i, ptr %prev3.i.i.i, align 8
  %28 = ptrtoint ptr %ctx_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %ctx_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_add.exit.i_crit_edge
  %29 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iommu.i.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.dev_iommu, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %priv1.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_add.exit.i, %dev_iommu_priv_get.exit.i.if.end.i_crit_edge
  %master.0.i = phi ptr [ %call7.i.i.i, %list_add.exit.i ], [ %retval.0.i.i, %dev_iommu_priv_get.exit.i.if.end.i_crit_edge ]
  %num_mids.i = getelementptr inbounds %struct.msm_iommu_ctx_dev, ptr %master.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %num_mids.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_mids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp34.i = icmp sgt i32 %33, 0
  br i1 %cmp34.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %args.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sid.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_iommu_ctx_dev, ptr %master.0.i, i32 0, i32 2, i32 %sid.035.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp6.i = icmp eq i32 %37, %35
  br i1 %cmp6.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %sid.035.i) #11
  br label %fail

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %sid.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %args9.i = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %38 = ptrtoint ptr %args9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %args9.i, align 4
  %inc13.i = add i32 %33, 1
  %40 = ptrtoint ptr %num_mids.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc13.i, ptr %num_mids.i, align 4
  %arrayidx14.i = getelementptr %struct.msm_iommu_ctx_dev, ptr %master.0.i, i32 0, i32 2, i32 %33
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %arrayidx14.i, align 4
  br label %fail

fail:                                             ; preds = %for.end.i, %do.end.i, %lor.lhs.false.fail_crit_edge, %for.end.fail_crit_edge
  %ret.0 = phi i32 [ -19, %lor.lhs.false.fail_crit_edge ], [ -19, %for.end.fail_crit_edge ], [ 0, %do.end.i ], [ 0, %for.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @msm_iommu_lock, i32 noundef %call2) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__flush_iotlb(ptr noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn44 = load ptr, ptr %cookie, align 4
  %cmp.not46 = icmp eq ptr %.pn44, %cookie
  br i1 %cmp.not46, label %entry.fail_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body:                                         ; preds = %__disable_clocks.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %__disable_clocks.exit.for.body_crit_edge ], [ %.pn44, %entry.for.body_crit_edge ]
  %iommu.048 = getelementptr i8, ptr %.pn47, i32 -32
  %pclk.i = getelementptr i8, ptr %.pn47, i32 -12
  %1 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %for.body
  %clk.i = getelementptr i8, ptr %.pn47, i32 -16
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end_crit_edge, label %if.then6.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  br label %fail

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %ctx_list = getelementptr i8, ptr %.pn47, i32 8
  %7 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn3441 = load ptr, ptr %ctx_list, align 4
  %cmp8.not42 = icmp eq ptr %.pn3441, %ctx_list
  br i1 %cmp8.not42, label %if.end.for.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %.pn3443 = phi ptr [ %.pn34, %do.body.do.body_crit_edge ], [ %.pn3441, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %iommu.048 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu.048, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 2048
  %num = getelementptr i8, ptr %.pn3443, i32 -136
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %shl = shl i32 %11, 12
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #8, !srcloc !173
  %12 = ptrtoint ptr %.pn3443 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn34 = load ptr, ptr %.pn3443, align 4
  %cmp8.not = icmp eq ptr %.pn34, %ctx_list
  br i1 %cmp8.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  %tobool.not.i36 = icmp eq ptr %14, null
  br i1 %tobool.not.i36, label %for.end.__disable_clocks.exit_crit_edge, label %if.then.i

for.end.__disable_clocks.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__disable_clocks.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %14) #8
  br label %__disable_clocks.exit

__disable_clocks.exit:                            ; preds = %if.then.i, %for.end.__disable_clocks.exit_crit_edge
  %15 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  %17 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %cookie
  br i1 %cmp.not, label %__disable_clocks.exit.fail_crit_edge, label %__disable_clocks.exit.for.body_crit_edge

__disable_clocks.exit.for.body_crit_edge:         ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__disable_clocks.exit.fail_crit_edge:             ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %__disable_clocks.exit.fail_crit_edge, %if.then6.i, %for.body.fail_crit_edge, %entry.fail_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__flush_iotlb_walk(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__flush_iotlb_range(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__flush_iotlb_page(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__flush_iotlb_range(i32 noundef %iova, i32 noundef %granule, i32 noundef %granule, ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__flush_iotlb_range(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef readonly %cookie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn12 = load ptr, ptr %cookie, align 4
  %cmp.not14 = icmp eq ptr %.pn12, %cookie
  br i1 %cmp.not14, label %entry.fail_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body:                                         ; preds = %__disable_clocks.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %__disable_clocks.exit.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %iova.addr.015 = phi i32 [ %iova.addr.1.lcssa, %__disable_clocks.exit.for.body_crit_edge ], [ %iova, %entry.for.body_crit_edge ]
  %iommu.017 = getelementptr i8, ptr %.pn16, i32 -32
  %pclk.i = getelementptr i8, ptr %.pn16, i32 -12
  %1 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.i:                                         ; preds = %for.body
  %clk.i = getelementptr i8, ptr %.pn16, i32 -16
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @clk_enable(ptr noundef nonnull %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end_crit_edge, label %if.then6.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  br label %fail

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %ctx_list = getelementptr i8, ptr %.pn16, i32 8
  %7 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn18 = load ptr, ptr %ctx_list, align 4
  %cmp8.not9 = icmp eq ptr %.pn18, %ctx_list
  br i1 %cmp8.not9, label %if.end.for.end_crit_edge, label %if.end.do.body.preheader_crit_edge

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  br label %do.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond6.loopexit:                               ; preds = %do.body
  %8 = ptrtoint ptr %.pn111 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn1 = load ptr, ptr %.pn111, align 4
  %cmp8.not = icmp eq ptr %.pn1, %ctx_list
  br i1 %cmp8.not, label %for.cond6.loopexit.for.end_crit_edge, label %for.cond6.loopexit.do.body.preheader_crit_edge

for.cond6.loopexit.do.body.preheader_crit_edge:   ; preds = %for.cond6.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

for.cond6.loopexit.for.end_crit_edge:             ; preds = %for.cond6.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.preheader:                                ; preds = %for.cond6.loopexit.do.body.preheader_crit_edge, %if.end.do.body.preheader_crit_edge
  %.pn111 = phi ptr [ %.pn1, %for.cond6.loopexit.do.body.preheader_crit_edge ], [ %.pn18, %if.end.do.body.preheader_crit_edge ]
  %iova.addr.110 = phi i32 [ %add, %for.cond6.loopexit.do.body.preheader_crit_edge ], [ %iova.addr.015, %if.end.do.body.preheader_crit_edge ]
  %num = getelementptr i8, ptr %.pn111, i32 -136
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %temp_size.0 = phi i32 [ %sub, %do.body.do.body_crit_edge ], [ %size, %do.body.preheader ]
  %iova.addr.2 = phi i32 [ %add, %do.body.do.body_crit_edge ], [ %iova.addr.110, %do.body.preheader ]
  %and = and i32 %iova.addr.2, -4096
  %9 = ptrtoint ptr %iommu.017 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iommu.017, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 8
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %shl = shl i32 %12, 12
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %shl
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !161
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %or = or i32 %14, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %iommu.017 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iommu.017, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 2056
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 4
  %shl21 = shl i32 %19, 12
  %add.ptr22 = getelementptr i8, ptr %add.ptr19, i32 %shl21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %15) #8, !srcloc !173
  %add = add i32 %or, %granule
  %sub = sub i32 %temp_size.0, %granule
  %tobool24.not = icmp eq i32 %sub, 0
  br i1 %tobool24.not, label %for.cond6.loopexit, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %for.cond6.loopexit.for.end_crit_edge, %if.end.for.end_crit_edge
  %iova.addr.1.lcssa = phi i32 [ %iova.addr.015, %if.end.for.end_crit_edge ], [ %add, %for.cond6.loopexit.for.end_crit_edge ]
  %20 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i, align 4
  %tobool.not.i3 = icmp eq ptr %21, null
  br i1 %tobool.not.i3, label %for.end.__disable_clocks.exit_crit_edge, label %if.then.i

for.end.__disable_clocks.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__disable_clocks.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %21) #8
  br label %__disable_clocks.exit

__disable_clocks.exit:                            ; preds = %if.then.i, %for.end.__disable_clocks.exit_crit_edge
  %22 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  %24 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %cookie
  br i1 %cmp.not, label %__disable_clocks.exit.fail_crit_edge, label %__disable_clocks.exit.for.body_crit_edge

__disable_clocks.exit.for.body_crit_edge:         ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__disable_clocks.exit.fail_crit_edge:             ; preds = %__disable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %__disable_clocks.exit.fail_crit_edge, %if.then6.i, %for.body.fail_crit_edge, %entry.fail_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__reset_context(ptr noundef %base, i32 noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %ctx, 2
  %or = or i32 %shl, 1044480
  %add.ptr = getelementptr i8, ptr %base, i32 %or
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !278
  tail call void @arm_heavy_mb() #8
  %1 = and i32 %0, -513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !173
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  tail call void @arm_heavy_mb() #8
  %3 = and i32 %2, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !173
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  tail call void @arm_heavy_mb() #8
  %5 = and i32 %4, -2049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !173
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  tail call void @arm_heavy_mb() #8
  %7 = and i32 %6, -12289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #8, !srcloc !173
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  tail call void @arm_heavy_mb() #8
  %add.ptr91 = getelementptr i8, ptr %base, i32 4
  %shl92 = shl i32 %ctx, 12
  %add.ptr93 = getelementptr i8, ptr %add.ptr91, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %add.ptr99 = getelementptr i8, ptr %base, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  tail call void @arm_heavy_mb() #8
  %add.ptr103 = getelementptr i8, ptr %base, i32 36
  %add.ptr105 = getelementptr i8, ptr %add.ptr103, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %add.ptr109 = getelementptr i8, ptr %base, i32 16
  %add.ptr111 = getelementptr i8, ptr %add.ptr109, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %add.ptr115 = getelementptr i8, ptr %base, i32 20
  %add.ptr117 = getelementptr i8, ptr %add.ptr115, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @arm_heavy_mb() #8
  %add.ptr121 = getelementptr i8, ptr %base, i32 24
  %add.ptr123 = getelementptr i8, ptr %add.ptr121, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  tail call void @arm_heavy_mb() #8
  %add.ptr127 = getelementptr i8, ptr %base, i32 76
  %add.ptr129 = getelementptr i8, ptr %add.ptr127, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void @arm_heavy_mb() #8
  %add.ptr133 = getelementptr i8, ptr %base, i32 28
  %add.ptr135 = getelementptr i8, ptr %add.ptr133, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %add.ptr139 = getelementptr i8, ptr %base, i32 40
  %add.ptr141 = getelementptr i8, ptr %add.ptr139, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  tail call void @arm_heavy_mb() #8
  %add.ptr145 = getelementptr i8, ptr %base, i32 2048
  %add.ptr147 = getelementptr i8, ptr %add.ptr145, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %add.ptr151 = getelementptr i8, ptr %base, i32 68
  %add.ptr153 = getelementptr i8, ptr %add.ptr151, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %add.ptr157 = getelementptr i8, ptr %base, i32 72
  %add.ptr159 = getelementptr i8, ptr %add.ptr157, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 0) #8, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @arm_heavy_mb() #8
  %add.ptr163 = getelementptr i8, ptr %base, i32 60
  %add.ptr165 = getelementptr i8, ptr %add.ptr163, i32 %shl92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 0) #8, !srcloc !173
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !142, !144, !146, !147, !148, !149, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/msm_iommu.c", i32 648, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @msm_iommu_fault_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @msm_iommu_fault_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/msm_iommu.c", i32 652, i32 2}
!8 = !{ptr @msm_iommu_fault_handler._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @msm_iommu_fault_handler._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iommu/msm_iommu.c", i32 653, i32 2}
!12 = !{ptr @msm_iommu_fault_handler._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @msm_iommu_fault_handler._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/msm_iommu.c", i32 662, i32 4}
!16 = !{ptr @msm_iommu_fault_handler._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @msm_iommu_fault_handler._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iommu/msm_iommu.c", i32 663, i32 4}
!20 = !{ptr @msm_iommu_fault_handler._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @msm_iommu_fault_handler._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_msm_iommu__232_845_msm_iommu_driver_init4, !23, !"__initcall__kmod_msm_iommu__232_845_msm_iommu_driver_init4", i1 false, i1 false}
!23 = !{!"../drivers/iommu/msm_iommu.c", i32 845, i32 1}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iommu/msm_iommu.c", i32 36, i32 8}
!26 = !{ptr @msm_iommu_lock, !25, !"msm_iommu_lock", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iommu/msm_iommu.c", i32 569, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @print_ctx_regs._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @print_ctx_regs._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iommu/msm_iommu.c", i32 571, i32 2}
!34 = !{ptr @print_ctx_regs._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @print_ctx_regs._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.26, !33, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.27, !33, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.28, !33, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.29, !33, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.30, !33, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.31, !33, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iommu/msm_iommu.c", i32 583, i32 2}
!49 = !{ptr @print_ctx_regs._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @print_ctx_regs._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iommu/msm_iommu.c", i32 585, i32 2}
!53 = !{ptr @print_ctx_regs._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @print_ctx_regs._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iommu/msm_iommu.c", i32 587, i32 2}
!57 = !{ptr @print_ctx_regs._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @print_ctx_regs._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iommu/msm_iommu.c", i32 841, i32 3}
!61 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @msm_iommu_driver_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @msm_iommu_driver_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iommu/msm_iommu.c", i32 828, i32 11}
!66 = !{ptr @msm_iommu_driver, !67, !"msm_iommu_driver", i1 false, i1 false}
!67 = !{!"../drivers/iommu/msm_iommu.c", i32 826, i32 31}
!68 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/msm_iommu.c", i32 712, i32 41}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iommu/msm_iommu.c", i32 714, i32 3}
!72 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.48, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @msm_iommu_probe._entry, !71, !"_entry", i1 false, i1 false}
!76 = !{ptr @msm_iommu_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iommu/msm_iommu.c", i32 720, i32 3}
!79 = !{ptr @msm_iommu_probe._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @msm_iommu_probe._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iommu/msm_iommu.c", i32 724, i32 40}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iommu/msm_iommu.c", i32 726, i32 3}
!85 = !{ptr @msm_iommu_probe._entry.53, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @msm_iommu_probe._entry_ptr.55, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iommu/msm_iommu.c", i32 733, i32 3}
!89 = !{ptr @msm_iommu_probe._entry.56, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @msm_iommu_probe._entry_ptr.58, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iommu/msm_iommu.c", i32 741, i32 3}
!93 = !{ptr @msm_iommu_probe._entry.59, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @msm_iommu_probe._entry_ptr.61, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.62, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iommu/msm_iommu.c", i32 753, i32 50}
!97 = !{ptr @.str.64, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iommu/msm_iommu.c", i32 755, i32 3}
!99 = !{ptr @msm_iommu_probe._entry.63, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @msm_iommu_probe._entry_ptr.65, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iommu/msm_iommu.c", i32 770, i32 3}
!103 = !{ptr @msm_iommu_probe._entry.66, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @msm_iommu_probe._entry_ptr.68, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iommu/msm_iommu.c", i32 778, i32 6}
!107 = !{ptr @.str.71, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iommu/msm_iommu.c", i32 781, i32 3}
!109 = !{ptr @msm_iommu_probe._entry.70, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @msm_iommu_probe._entry_ptr.72, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.73, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iommu/msm_iommu.c", i32 788, i32 10}
!113 = !{ptr @.str.75, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iommu/msm_iommu.c", i32 790, i32 3}
!115 = !{ptr @msm_iommu_probe._entry.74, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @msm_iommu_probe._entry_ptr.76, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.78, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iommu/msm_iommu.c", i32 796, i32 3}
!119 = !{ptr @msm_iommu_probe._entry.77, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @msm_iommu_probe._entry_ptr.79, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.81, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iommu/msm_iommu.c", i32 802, i32 2}
!123 = !{ptr @msm_iommu_probe._entry.80, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @msm_iommu_probe._entry_ptr.82, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @qcom_iommu_devices, !126, !"qcom_iommu_devices", i1 false, i1 false}
!126 = !{!"../drivers/iommu/msm_iommu.c", i32 37, i32 8}
!127 = !{ptr @msm_iommu_ops, !128, !"msm_iommu_ops", i1 false, i1 false}
!128 = !{!"../drivers/iommu/msm_iommu.c", i32 674, i32 25}
!129 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iommu/msm_iommu.c", i32 424, i32 6}
!131 = !{ptr @.str.84, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @msm_iommu_attach_dev._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @msm_iommu_attach_dev._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @msm_iommu_domain_config.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/iommu/msm_iommu.c", i32 342, i32 2}
!136 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iommu/msm_iommu.c", i32 354, i32 3}
!139 = !{ptr @.str.87, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @msm_iommu_domain_config._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @msm_iommu_domain_config._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @msm_iommu_flush_ops, !143, !"msm_iommu_flush_ops", i1 false, i1 false}
!143 = !{!"../drivers/iommu/msm_iommu.c", i32 182, i32 37}
!144 = !{ptr @.str.88, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iommu/msm_iommu.c", i32 607, i32 4}
!146 = !{ptr @.str.89, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @insert_iommu_master._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @insert_iommu_master._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @msm_iommu_dt_match, !151, !"msm_iommu_dt_match", i1 false, i1 false}
!151 = !{!"../drivers/iommu/msm_iommu.c", i32 812, i32 34}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 4803148}
!162 = !{i64 2154551485}
!163 = !{i64 2154523791}
!164 = !{i64 2154526351}
!165 = !{i64 2154527084}
!166 = !{i64 2154532437}
!167 = !{i64 2154533173}
!168 = !{i64 2154535747}
!169 = !{i64 2154536482}
!170 = !{i64 2154539056}
!171 = !{i64 2154539791}
!172 = !{i64 2154555275}
!173 = !{i64 4802730}
!174 = !{!"auto-init"}
!175 = !{i64 2154566492}
!176 = !{i64 2154566796}
!177 = !{i64 2154567588}
!178 = !{i64 2154568879}
!179 = !{i64 2154569185}
!180 = !{i64 2154569985}
!181 = !{i64 2154570980}
!182 = !{i64 2154572039}
!183 = !{i64 2154572345}
!184 = !{i64 2154573765}
!185 = !{i64 2154574069}
!186 = !{i64 2154388825}
!187 = !{i64 2154389107}
!188 = !{i64 2154390347}
!189 = !{i64 2154390629}
!190 = !{i64 2154391334}
!191 = !{i64 2154392411}
!192 = !{i64 2154392693}
!193 = !{i64 2154393390}
!194 = !{i64 2154394482}
!195 = !{i64 2154394764}
!196 = !{i64 2154395468}
!197 = !{i64 2154396014}
!198 = !{i64 2154396568}
!199 = !{i64 2154397115}
!200 = !{i64 2154398215}
!201 = !{i64 2154398497}
!202 = !{i64 2154399869}
!203 = !{i64 2154400168}
!204 = !{i64 2154401561}
!205 = !{i64 2154401860}
!206 = !{i64 2154403253}
!207 = !{i64 2154403552}
!208 = !{i64 2154404945}
!209 = !{i64 2154405244}
!210 = !{i64 2154406637}
!211 = !{i64 2154406936}
!212 = !{i64 2154407714}
!213 = !{i64 2154408337}
!214 = !{i64 2154408965}
!215 = !{i64 2154409588}
!216 = !{i64 2154410211}
!217 = !{i64 2154410834}
!218 = !{i64 2154411457}
!219 = !{i64 2154412078}
!220 = !{i64 2154412699}
!221 = !{i64 2154413328}
!222 = !{i64 2154413955}
!223 = !{i64 2154414582}
!224 = !{i64 2154415207}
!225 = !{i64 2154415835}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i64 2154433129}
!228 = !{i64 2154433870}
!229 = !{i64 2154435164}
!230 = !{i64 2154435468}
!231 = !{i64 2154436911}
!232 = !{i64 2154437217}
!233 = !{i64 2154438667}
!234 = !{i64 2154438973}
!235 = !{i64 2154440490}
!236 = !{i64 2154440798}
!237 = !{i64 2154442246}
!238 = !{i64 2154442552}
!239 = !{i64 2154460518}
!240 = !{i64 2154460817}
!241 = !{i64 2154462196}
!242 = !{i64 2154462495}
!243 = !{i64 2154463903}
!244 = !{i64 2154464206}
!245 = !{i64 2154465621}
!246 = !{i64 2154465924}
!247 = !{i64 2154466782}
!248 = !{i64 2154467552}
!249 = !{i64 2154468250}
!250 = !{i64 2154468947}
!251 = !{i64 2154469719}
!252 = !{i64 2154470423}
!253 = !{i64 2154471660}
!254 = !{i64 2154471959}
!255 = !{i64 2154473352}
!256 = !{i64 2154473651}
!257 = !{i64 2154475043}
!258 = !{i64 2154475344}
!259 = !{i64 2154476739}
!260 = !{i64 2154477038}
!261 = !{i64 2154478427}
!262 = !{i64 2154478726}
!263 = !{i64 2154480115}
!264 = !{i64 2154480414}
!265 = !{i64 2154481808}
!266 = !{i64 2154482107}
!267 = !{i64 2154483476}
!268 = !{i64 2154483775}
!269 = !{i64 2154519139}
!270 = !{i64 2154519952}
!271 = !{i64 2154521089}
!272 = !{i64 2154522096}
!273 = !{i64 2154523058}
!274 = !{i64 2154423444}
!275 = !{i64 2154431699}
!276 = !{i64 2154432150}
!277 = !{i64 2154443952}
!278 = !{i64 2154444251}
!279 = !{i64 2154445644}
!280 = !{i64 2154445943}
!281 = !{i64 2154447336}
!282 = !{i64 2154447635}
!283 = !{i64 2154449028}
!284 = !{i64 2154449327}
!285 = !{i64 2154450720}
!286 = !{i64 2154451019}
!287 = !{i64 2154451797}
!288 = !{i64 2154452420}
!289 = !{i64 2154453048}
!290 = !{i64 2154453671}
!291 = !{i64 2154454294}
!292 = !{i64 2154454917}
!293 = !{i64 2154455540}
!294 = !{i64 2154456161}
!295 = !{i64 2154456782}
!296 = !{i64 2154457411}
!297 = !{i64 2154458038}
!298 = !{i64 2154458665}
!299 = !{i64 2154459290}
