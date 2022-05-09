; ModuleID = '/llk/IR_all_yes/drivers/irqchip/qcom-pdc.c_pt.bc'
source_filename = "../drivers/irqchip/qcom-pdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pdc_pin_region = type { i32, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_qcom_pdc__187_420_qcom_pdc_driver_init6 = internal global ptr @qcom_pdc_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description188 = internal constant [73 x i8] c"qcom_pdc.description=Qualcomm Technologies, Inc. Power Domain Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [39 x i8] c"qcom_pdc.file=drivers/irqchip/qcom-pdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [24 x i8] c"qcom_pdc.license=GPL v2\00", section ".modinfo", align 1
@qcom_pdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qcom_pdc_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_pdc\00", [23 x i8] zeroinitializer }, align 32
@qcom_pdc_irqchip_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_pdc_init }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pdc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qcom_pdc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF: unable to map PDC registers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_pdc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/irqchip/qcom-pdc.c\00", [37 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry_ptr = internal global ptr @qcom_pdc_init._entry, section ".printk_index", align 4
@qcom_pdc_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%pOF: unable to find PDC's parent domain\0A\00", [52 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry_ptr.6 = internal global ptr @qcom_pdc_init._entry.4, section ".printk_index", align 4
@qcom_pdc_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%pOF: failed to init PDC pin-hwirq mapping\0A\00", [50 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry_ptr.9 = internal global ptr @qcom_pdc_init._entry.7, section ".printk_index", align 4
@qcom_pdc_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_pdc_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @qcom_pdc_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%pOF: GIC domain add failed\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry_ptr.12 = internal global ptr @qcom_pdc_init._entry.10, section ".printk_index", align 4
@qcom_pdc_gpio_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr @qcom_pdc_gpio_domain_select, ptr null, ptr null, ptr null, ptr @qcom_pdc_gpio_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%pOF: PDC domain add failed for GPIO domain\0A\00", [49 x i8] zeroinitializer }, align 32
@qcom_pdc_init._entry_ptr.15 = internal global ptr @qcom_pdc_init._entry.13, section ".printk_index", align 4
@pdc_region = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,pdc-ranges\00", [16 x i8] zeroinitializer }, align 32
@pdc_region_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@qcom_pdc_gic_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr @qcom_pdc_gic_enable, ptr @qcom_pdc_gic_disable, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @qcom_pdc_gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_get_parent_state, ptr @irq_chip_set_parent_state, ptr @irq_chip_set_vcpu_affinity_parent, ptr null, ptr null, ptr null, ptr null, i32 533 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PDC\00", [28 x i8] zeroinitializer }, align 32
@pdc_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pdc_lock\00", [23 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@switch.table.qcom_pdc_gic_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.qcom_pdc_gic_set_type.19 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6, i32 2, i32 7, i32 4, i32 6, i32 6, i32 6, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"qcom_pdc_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 420, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"qcom_pdc_irqchip_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 418, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"pdc_base\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 42, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 369, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 375, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 382, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"qcom_pdc_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 257, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 390, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"qcom_pdc_gpio_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 311, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 401, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"pdc_region\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 43, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 322, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"pdc_region_cnt\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 44, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"qcom_pdc_gic_chip\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 170, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 171, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"pdc_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [30 x i8] c"../drivers/irqchip/qcom-pdc.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 41, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [35 x i8] c"switch.table.qcom_pdc_gic_set_type\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [38 x i8] c"switch.table.qcom_pdc_gic_set_type.19\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__initcall__kmod_qcom_pdc__187_420_qcom_pdc_driver_init6, ptr @qcom_pdc_init._entry, ptr @qcom_pdc_init._entry.10, ptr @qcom_pdc_init._entry.13, ptr @qcom_pdc_init._entry.4, ptr @qcom_pdc_init._entry.7, ptr @qcom_pdc_init._entry_ptr, ptr @qcom_pdc_init._entry_ptr.12, ptr @qcom_pdc_init._entry_ptr.15, ptr @qcom_pdc_init._entry_ptr.6, ptr @qcom_pdc_init._entry_ptr.9, ptr @qcom_pdc_driver, ptr @.str, ptr @qcom_pdc_irqchip_match_table, ptr @pdc_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @qcom_pdc_ops, ptr @.str.11, ptr @qcom_pdc_gpio_ops, ptr @.str.14, ptr @pdc_region, ptr @.str.16, ptr @pdc_region_cnt, ptr @qcom_pdc_gic_chip, ptr @.str.17, ptr @pdc_lock, ptr @.str.18, ptr @switch.table.qcom_pdc_gic_set_type, ptr @switch.table.qcom_pdc_gic_set_type.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_irqchip_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_gpio_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_region to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_region_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pdc_gic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qcom_pdc_gic_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qcom_pdc_gic_set_type.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_pdc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pdc_init(ptr noundef %node, ptr noundef %parent) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #9
  store ptr %call, ptr @pdc_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %node) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %tobool3.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool3.not, label %do.end7, label %irq_find_host.exit.if.end10_crit_edge

irq_find_host.exit.if.end10_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end7:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %node) #12
  br label %fail

if.end10:                                         ; preds = %irq_find_host.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %d.0.i70 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end10_crit_edge ], [ %call.i.i.i, %if.end.if.end10_crit_edge ]
  %call.i = call i32 @of_property_count_elems_of_size(ptr noundef %node, ptr noundef nonnull @.str.16, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %rem.i = srem i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i67 = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i67
  br i1 %or.cond.i, label %if.end.i, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.end.i:                                         ; preds = %if.end10
  %div76.i = udiv i32 %call.i, 3
  store i32 %div76.i, ptr @pdc_region_cnt, align 4
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div76.i, i32 12) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !61

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @pdc_region, align 4
  br label %if.then3.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #13
  store ptr %call8.i.i.i, ptr @pdc_region, align 4
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.if.then3.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then3.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %9 = load i32, ptr @pdc_region_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp580.i = icmp sgt i32 %9, 0
  br i1 %cmp580.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end19_crit_edge

for.cond.preheader.i.if.end19_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then3.i:                                       ; preds = %if.end7.i.i.i.if.then3.i_crit_edge, %kcalloc.exit.thread.i
  store i32 0, ptr @pdc_region_cnt, align 4
  br label %do.end16

for.body.i:                                       ; preds = %for.inc37.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.081.i = phi i32 [ %inc38.i, %for.inc37.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %n.081.i, 3
  %10 = load ptr, ptr @pdc_region, align 4
  %arrayidx.i = getelementptr %struct.pdc_pin_region, ptr %10, i32 %n.081.i
  %call6.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.16, i32 noundef %mul.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.do.end16_crit_edge

for.body.i.do.end16_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.end9.i:                                        ; preds = %for.body.i
  %add11.i = add i32 %mul.i, 1
  %11 = load ptr, ptr @pdc_region, align 4
  %parent_base.i = getelementptr %struct.pdc_pin_region, ptr %11, i32 %n.081.i, i32 1
  %call13.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.16, i32 noundef %add11.i, ptr noundef %parent_base.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end9.i.do.end16_crit_edge

if.end9.i.do.end16_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.end16.i:                                       ; preds = %if.end9.i
  %add18.i = add i32 %mul.i, 2
  %12 = load ptr, ptr @pdc_region, align 4
  %cnt.i = getelementptr %struct.pdc_pin_region, ptr %12, i32 %n.081.i, i32 2
  %call20.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.16, i32 noundef %add18.i, ptr noundef %cnt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.cond24.preheader.i, label %if.end16.i.do.end16_crit_edge

if.end16.i.do.end16_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

for.cond24.preheader.i:                           ; preds = %if.end16.i
  %13 = load ptr, ptr @pdc_region, align 4
  %cnt2677.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %n.081.i, i32 2
  %14 = ptrtoint ptr %cnt2677.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt2677.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2778.not.i = icmp eq i32 %15, 0
  br i1 %cmp2778.not.i, label %for.cond24.preheader.i.for.inc37.i_crit_edge, label %for.cond24.preheader.i.for.body28.i_crit_edge

for.cond24.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond24.preheader.i
  br label %for.body28.i

for.cond24.preheader.i.for.inc37.i_crit_edge:     ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.cond24.preheader.i.for.body28.i_crit_edge
  %16 = phi ptr [ %25, %for.body28.i.for.body28.i_crit_edge ], [ %13, %for.cond24.preheader.i.for.body28.i_crit_edge ]
  %i.079.i = phi i32 [ %inc.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %for.cond24.preheader.i.for.body28.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.pdc_pin_region, ptr %16, i32 %n.081.i
  %17 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25.i, align 4
  %add31.i = add i32 %18, %i.079.i
  %and.i = and i32 %add31.i, 31
  %19 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 16
  %20 = lshr i32 %add31.i, 3
  %mul.i.i = and i32 %20, 536870908
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !62
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %and36.i = and i32 %22, %neg.i
  %23 = call i32 @llvm.bswap.i32(i32 %and36.i) #9
  %24 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %24, i32 16
  %add.ptr1.i73.i = getelementptr i8, ptr %add.ptr.i71.i, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i73.i, i32 %23) #9, !srcloc !63
  %inc.i = add nuw i32 %i.079.i, 1
  %25 = load ptr, ptr @pdc_region, align 4
  %cnt26.i = getelementptr %struct.pdc_pin_region, ptr %25, i32 %n.081.i, i32 2
  %26 = ptrtoint ptr %cnt26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cnt26.i, align 4
  %cmp27.i = icmp ult i32 %inc.i, %27
  br i1 %cmp27.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.for.inc37.i_crit_edge

for.body28.i.for.inc37.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

for.inc37.i:                                      ; preds = %for.body28.i.for.inc37.i_crit_edge, %for.cond24.preheader.i.for.inc37.i_crit_edge
  %inc38.i = add nuw nsw i32 %n.081.i, 1
  %28 = load i32, ptr @pdc_region_cnt, align 4
  %cmp5.i = icmp slt i32 %inc38.i, %28
  br i1 %cmp5.i, label %for.inc37.i.for.body.i_crit_edge, label %for.inc37.i.if.end19_crit_edge

for.inc37.i.if.end19_crit_edge:                   ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.inc37.i.for.body.i_crit_edge:                 ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end16:                                         ; preds = %if.end16.i.do.end16_crit_edge, %if.end9.i.do.end16_crit_edge, %for.body.i.do.end16_crit_edge, %if.then3.i, %if.end10.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end10.do.end16_crit_edge ], [ -12, %if.then3.i ], [ %call6.i, %for.body.i.do.end16_crit_edge ], [ %call13.i, %if.end9.i.do.end16_crit_edge ], [ %call20.i, %if.end16.i.do.end16_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node) #12
  br label %fail

if.end19:                                         ; preds = %for.inc37.i.if.end19_crit_edge, %for.cond.preheader.i.if.end19_crit_edge
  %tobool21.not = icmp eq ptr %node, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select = select i1 %tobool21.not, ptr null, ptr %fwnode
  %call22 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i70, i32 noundef 0, i32 noundef 168, ptr noundef %spec.select, ptr noundef nonnull @qcom_pdc_ops, ptr noundef null) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %node) #12
  br label %fail

if.end30:                                         ; preds = %if.end19
  %call39 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i70, i32 noundef 65536, i32 noundef 256, ptr noundef %spec.select, ptr noundef nonnull @qcom_pdc_gpio_ops, ptr noundef null) #9
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %node) #12
  call void @irq_domain_remove(ptr noundef nonnull %call22) #9
  br label %fail

if.end47:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call39, i32 noundef 9) #9
  br label %cleanup

fail:                                             ; preds = %do.end44, %do.end27, %do.end16, %do.end7
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end16 ], [ -12, %do.end44 ], [ -12, %do.end27 ], [ -6, %do.end7 ]
  %29 = load ptr, ptr @pdc_region, align 4
  call void @kfree(ptr noundef %29) #9
  %30 = load ptr, ptr @pdc_base, align 4
  call void @iounmap(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end47, %do.end
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end47 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pdc_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #9
  %0 = getelementptr inbounds i8, ptr %parent_fwspec, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  %cmp.i.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.cleanup_crit_edge, label %is_of_node.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_of_node.exit.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param.i, align 4
  %arrayidx3.i = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %and.i = and i32 %11, 15
  %call1 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %9, ptr noundef nonnull @qcom_pdc_gic_chip, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = load i32, ptr @pdc_region_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.i = icmp sgt i32 %12, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end4.if.then6_crit_edge

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

for.body.lr.ph.i:                                 ; preds = %if.end4
  %13 = load ptr, ptr @pdc_region, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp1.not.i = icmp ult i32 %9, %15
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cnt.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i, i32 2
  %16 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt.i, align 4
  %add.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp3.i = icmp ugt i32 %add.i, %9
  br i1 %cmp3.i, label %get_parent_hwirq.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.if.then6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then6_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

get_parent_hwirq.exit:                            ; preds = %land.lhs.true.i
  %parent_base.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i, i32 1
  %18 = ptrtoint ptr %parent_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parent_base.i, align 4
  %add4.i = sub i32 %9, %15
  %sub.i = add i32 %19, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp = icmp eq i32 %sub.i, -1
  br i1 %cmp, label %get_parent_hwirq.exit.if.then6_crit_edge, label %if.end8

get_parent_hwirq.exit.if.then6_crit_edge:         ; preds = %get_parent_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %get_parent_hwirq.exit.if.then6_crit_edge, %for.inc.i.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %call7 = tail call i32 @irq_domain_disconnect_hierarchy(ptr noundef %21, i32 noundef %virq) #9
  br label %cleanup

if.end8:                                          ; preds = %get_parent_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %and12 = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, i32 %and.i, i32 4
  %type.2 = select i1 %tobool9.not, i32 %spec.select, i32 1
  %parent16 = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %22 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent16, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fwnode, align 4
  %26 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %27 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %28 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %param, align 4
  %arrayidx19 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %type.2, ptr %arrayidx21, align 4
  %call22 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.end.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call22, %if.end8 ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_pdc_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hwirq, align 4
  %arrayidx3 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %10, 15
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_disconnect_hierarchy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pdc_gic_enable(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %div.i = sdiv i32 %1, 32
  tail call void @_raw_spin_lock(ptr noundef nonnull @pdc_lock) #9
  %2 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 16
  %mul.i.i = shl nsw i32 %div.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !62
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %rem10.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem10.i
  %or.i = or i32 %4, %shl.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %6 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 16
  %add.ptr1.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9.i, i32 %5) #9, !srcloc !63
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pdc_lock) #9
  tail call void @irq_chip_enable_parent(ptr noundef %d) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pdc_gic_disable(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %div.i = sdiv i32 %1, 32
  tail call void @_raw_spin_lock(ptr noundef nonnull @pdc_lock) #9
  %2 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 16
  %mul.i.i = shl nsw i32 %div.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !62
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %rem10.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem10.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %6 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 16
  %add.ptr1.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9.i, i32 %5) #9, !srcloc !63
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pdc_lock) #9
  tail call void @irq_chip_disable_parent(ptr noundef %d) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pdc_gic_set_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qcom_pdc_gic_set_type, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep39 = getelementptr inbounds [8 x i32], ptr @switch.table.qcom_pdc_gic_set_type.19, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 272
  %mul.i = shl i32 %5, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !62
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = shl nuw nsw i32 %switch.load40, 24
  %11 = load ptr, ptr @pdc_base, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 272
  %mul.i37 = shl i32 %9, 2
  %add.ptr1.i38 = getelementptr i8, ptr %add.ptr.i36, i32 %mul.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38, i32 %10) #9, !srcloc !63
  %call20 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %switch.lookup
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %switch.load40)
  %cmp.not = icmp eq i32 %12, %switch.load40
  br i1 %cmp.not, label %if.end23.cleanup_crit_edge, label %if.then24

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @irq_chip_set_parent_state(ptr noundef %d, i32 noundef 0, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end23.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_get_parent_state(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_enable_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_disable_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_pdc_gpio_domain_select(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %fwspec, i32 noundef %bus_token) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bus_token)
  %cmp = icmp eq i32 %bus_token, 9
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pdc_gpio_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #9
  %0 = getelementptr inbounds i8, ptr %parent_fwspec, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  %cmp.i.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.cleanup_crit_edge, label %is_of_node.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_of_node.exit.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param.i, align 4
  %arrayidx3.i = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %and.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @irq_domain_disconnect_hierarchy(ptr noundef %domain, i32 noundef %virq) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %9, ptr noundef nonnull @qcom_pdc_gic_chip, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = load i32, ptr @pdc_region_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.i = icmp sgt i32 %12, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

for.body.lr.ph.i:                                 ; preds = %if.end7
  %13 = load ptr, ptr @pdc_region, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp1.not.i = icmp ult i32 %9, %15
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cnt.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i, i32 2
  %16 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt.i, align 4
  %add.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp3.i = icmp ugt i32 %add.i, %9
  br i1 %cmp3.i, label %get_parent_hwirq.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.if.then10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then10_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

get_parent_hwirq.exit:                            ; preds = %land.lhs.true.i
  %parent_base.i = getelementptr %struct.pdc_pin_region, ptr %13, i32 %i.018.i, i32 1
  %18 = ptrtoint ptr %parent_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parent_base.i, align 4
  %add4.i = sub i32 %9, %15
  %sub.i = add i32 %19, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp9 = icmp eq i32 %sub.i, -1
  br i1 %cmp9, label %get_parent_hwirq.exit.if.then10_crit_edge, label %if.end12

get_parent_hwirq.exit.if.then10_crit_edge:        ; preds = %get_parent_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %get_parent_hwirq.exit.if.then10_crit_edge, %for.inc.i.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %call11 = tail call i32 @irq_domain_disconnect_hierarchy(ptr noundef %21, i32 noundef %virq) #9
  br label %cleanup

if.end12:                                         ; preds = %get_parent_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %and16 = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %spec.select = select i1 %tobool17.not, i32 %and.i, i32 4
  %type.2 = select i1 %tobool13.not, i32 %spec.select, i32 1
  %parent20 = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %22 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent20, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fwnode, align 4
  %26 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %27 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %28 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %param, align 4
  %arrayidx23 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %type.2, ptr %arrayidx25, align 4
  %call26 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end3.cleanup_crit_edge, %if.then1, %if.then.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call11, %if.then10 ], [ %call26, %if.end12 ], [ %call4, %if.end3.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_qcom_pdc__187_420_qcom_pdc_driver_init6, !1, !"__initcall__kmod_qcom_pdc__187_420_qcom_pdc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/qcom-pdc.c", i32 420, i32 1}
!2 = !{ptr @__UNIQUE_ID_description188, !3, !"__UNIQUE_ID_description188", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/qcom-pdc.c", i32 421, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/qcom-pdc.c", i32 422, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @qcom_pdc_driver, !1, !"qcom_pdc_driver", i1 false, i1 false}
!9 = !{ptr @qcom_pdc_irqchip_match_table, !10, !"qcom_pdc_irqchip_match_table", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/qcom-pdc.c", i32 418, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/qcom-pdc.c", i32 369, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qcom_pdc_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @qcom_pdc_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/qcom-pdc.c", i32 375, i32 3}
!19 = !{ptr @qcom_pdc_init._entry.4, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qcom_pdc_init._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/qcom-pdc.c", i32 382, i32 3}
!23 = !{ptr @qcom_pdc_init._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @qcom_pdc_init._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/qcom-pdc.c", i32 390, i32 3}
!27 = !{ptr @qcom_pdc_init._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qcom_pdc_init._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/qcom-pdc.c", i32 401, i32 3}
!31 = !{ptr @qcom_pdc_init._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qcom_pdc_init._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @pdc_base, !34, !"pdc_base", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/qcom-pdc.c", i32 42, i32 22}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/qcom-pdc.c", i32 322, i32 42}
!37 = !{ptr @pdc_region_cnt, !38, !"pdc_region_cnt", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/qcom-pdc.c", i32 44, i32 12}
!39 = !{ptr @qcom_pdc_ops, !40, !"qcom_pdc_ops", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/qcom-pdc.c", i32 257, i32 36}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/qcom-pdc.c", i32 171, i32 12}
!43 = !{ptr @qcom_pdc_gic_chip, !44, !"qcom_pdc_gic_chip", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/qcom-pdc.c", i32 170, i32 24}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/qcom-pdc.c", i32 41, i32 8}
!47 = !{ptr @pdc_lock, !46, !"pdc_lock", i1 false, i1 false}
!48 = !{ptr @qcom_pdc_gpio_ops, !49, !"qcom_pdc_gpio_ops", i1 false, i1 false}
!49 = !{!"../drivers/irqchip/qcom-pdc.c", i32 311, i32 36}
!50 = !{ptr @pdc_region, !51, !"pdc_region", i1 false, i1 false}
!51 = !{!"../drivers/irqchip/qcom-pdc.c", i32 43, i32 31}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 4207518}
!63 = !{i64 4207100}
