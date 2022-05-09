; ModuleID = '/llk/IR_all_yes/arch/arm/mach-exynos/suspend.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/suspend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_pm_data = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_wkup_irq = type { i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__of_table_exynos3250_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos4210_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos4412_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos5250_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos5420_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@exynos_pmu_of_device_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_pm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@exynos_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find PMU node\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos_pm_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-exynos/suspend.c\00", [33 x i8] zeroinitializer }, align 32
@exynos_pm_init._entry_ptr = internal global ptr @exynos_pm_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@exynos_pm_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Outdated DT detected, suspend/resume will NOT work\0A\00", [42 x i8] zeroinitializer }, align 32
@exynos_pm_init._entry_ptr.6 = internal global ptr @exynos_pm_init._entry.4, section ".printk_index", align 4
@pm_data = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@exynos_pm_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } zeroinitializer, align 32
@exynos_suspend_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr @exynos_suspend_prepare, ptr null, ptr @exynos_suspend_enter, ptr null, ptr @exynos_suspend_finish, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sysram_base_phys = external dso_local local_unnamed_addr global i32, align 4
@pm_state.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm_state.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm_state.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_state.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm_state.4 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sysram_ns_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@exynos_pmu_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no parent, giving up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_pmu_irq_init\00", [44 x i8] zeroinitializer }, align 32
@exynos_pmu_irq_init._entry_ptr = internal global ptr @exynos_pmu_irq_init._entry, section ".printk_index", align 4
@exynos_pmu_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", [56 x i8] zeroinitializer }, align 32
@exynos_pmu_irq_init._entry_ptr.11 = internal global ptr @exynos_pmu_irq_init._entry.9, section ".printk_index", align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@exynos_pmu_irq_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%pOF: failed to find exynos pmu register\0A\00", [52 x i8] zeroinitializer }, align 32
@exynos_pmu_irq_init._entry_ptr.14 = internal global ptr @exynos_pmu_irq_init._entry.12, section ".printk_index", align 4
@exynos_pmu_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_pmu_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @exynos_pmu_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@exynos_pmu_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr null, ptr @exynos_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@exynos_irqwake_intmask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@exynos3250_pm_data = internal constant { %struct.exynos_pm_data, [36 x i8] } { %struct.exynos_pm_data { ptr @exynos3250_wkup_irq, i32 65342, ptr @exynos3250_pm_prepare, ptr null, ptr @exynos3250_pm_resume, ptr @exynos_pm_suspend, ptr @exynos3250_cpu_suspend }, [36 x i8] zeroinitializer }, align 32
@exynos4_pm_data = internal constant { %struct.exynos_pm_data, [36 x i8] } { %struct.exynos_pm_data { ptr @exynos4_wkup_irq, i32 65342, ptr @exynos_pm_prepare, ptr null, ptr @exynos_pm_resume, ptr @exynos_pm_suspend, ptr @exynos_cpu_suspend }, [36 x i8] zeroinitializer }, align 32
@exynos5250_pm_data = internal constant { %struct.exynos_pm_data, [36 x i8] } { %struct.exynos_pm_data { ptr @exynos5250_wkup_irq, i32 65342, ptr @exynos_pm_prepare, ptr null, ptr @exynos_pm_resume, ptr @exynos_pm_suspend, ptr @exynos_cpu_suspend }, [36 x i8] zeroinitializer }, align 32
@exynos5420_pm_data = internal constant { %struct.exynos_pm_data, [36 x i8] } { %struct.exynos_pm_data { ptr @exynos5250_wkup_irq, i32 16318, ptr @exynos5420_pm_prepare, ptr @exynos5420_prepare_pm_resume, ptr @exynos5420_pm_resume, ptr @exynos5420_pm_suspend, ptr @exynos5420_cpu_suspend }, [36 x i8] zeroinitializer }, align 32
@exynos3250_wkup_irq = internal constant { [3 x %struct.exynos_wkup_irq], [40 x i8] } { [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 73, i32 2 }, %struct.exynos_wkup_irq { i32 74, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], [40 x i8] zeroinitializer }, align 32
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@exynos_cpu_do_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Failed to suspend the system\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_cpu_do_idle\00", [45 x i8] zeroinitializer }, align 32
@exynos_cpu_do_idle._entry_ptr = internal global ptr @exynos_cpu_do_idle._entry, section ".printk_index", align 4
@exynos4_wkup_irq = internal constant { [3 x %struct.exynos_wkup_irq], [40 x i8] } { [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 44, i32 2 }, %struct.exynos_wkup_irq { i32 45, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], [40 x i8] zeroinitializer }, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@exynos5250_wkup_irq = internal constant { [3 x %struct.exynos_wkup_irq], [40 x i8] } { [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 43, i32 2 }, %struct.exynos_wkup_irq { i32 44, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], [40 x i8] zeroinitializer }, align 32
@exynos5420_cpu_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos5420_cpu_suspend\00", [41 x i8] zeroinitializer }, align 32
@exynos5420_cpu_suspend._entry_ptr = internal global ptr @exynos5420_cpu_suspend._entry, section ".printk_index", align 4
@exynos_suspend_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Failed to prepare regulators for suspend (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_suspend_prepare\00", [41 x i8] zeroinitializer }, align 32
@exynos_suspend_prepare._entry_ptr = internal global ptr @exynos_suspend_prepare._entry, section ".printk_index", align 4
@exynos_suspend_enter.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_suspend_enter\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: suspending the system...\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_suspend_enter.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: wakeup masks: %08x,%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_suspend_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: No wake-up sources!\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_suspend_enter._entry_ptr = internal global ptr @exynos_suspend_enter._entry, section ".printk_index", align 4
@exynos_suspend_enter._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: Aborting sleep\0A\00", [42 x i8] zeroinitializer }, align 32
@exynos_suspend_enter._entry_ptr.28 = internal global ptr @exynos_suspend_enter._entry.26, section ".printk_index", align 4
@exynos_suspend_enter.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.29, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: wakeup stat: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@exynos_suspend_enter.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.30, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: resuming the system...\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos_suspend_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Failed to resume regulators from suspend (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_suspend_finish\00", [42 x i8] zeroinitializer }, align 32
@exynos_suspend_finish._entry_ptr = internal global ptr @exynos_suspend_finish._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 666, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 670, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 671, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"exynos_pm_syscore_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 656, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"exynos_suspend_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 592, i32 42 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"pm_state.0\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"pm_state.1\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"pm_state.2\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"pm_state.3\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"pm_state.4\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 195, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 201, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 208, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"exynos_pmu_domain_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 183, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"exynos_pmu_chip\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 124, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 125, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"exynos_irqwake_intmask\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 77, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"exynos3250_pm_data\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 599, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"exynos4_pm_data\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 608, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"exynos5250_pm_data\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 617, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"exynos5420_pm_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 626, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"exynos3250_wkup_irq\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 79, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 243, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"exynos4_wkup_irq\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 85, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"exynos5250_wkup_irq\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 91, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 276, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 576, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 529, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 531, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 536, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 537, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 554, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 557, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [34 x i8] c"../arch/arm/mach-exynos/suspend.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 589, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__of_table_exynos3250_pmu_irq, ptr @__of_table_exynos4210_pmu_irq, ptr @__of_table_exynos4412_pmu_irq, ptr @__of_table_exynos5250_pmu_irq, ptr @__of_table_exynos5420_pmu_irq, ptr @exynos5420_cpu_suspend._entry, ptr @exynos5420_cpu_suspend._entry_ptr, ptr @exynos_cpu_do_idle._entry, ptr @exynos_cpu_do_idle._entry_ptr, ptr @exynos_pm_init._entry, ptr @exynos_pm_init._entry.4, ptr @exynos_pm_init._entry_ptr, ptr @exynos_pm_init._entry_ptr.6, ptr @exynos_pmu_irq_init._entry, ptr @exynos_pmu_irq_init._entry.12, ptr @exynos_pmu_irq_init._entry.9, ptr @exynos_pmu_irq_init._entry_ptr, ptr @exynos_pmu_irq_init._entry_ptr.11, ptr @exynos_pmu_irq_init._entry_ptr.14, ptr @exynos_suspend_enter._entry, ptr @exynos_suspend_enter._entry.26, ptr @exynos_suspend_enter._entry_ptr, ptr @exynos_suspend_enter._entry_ptr.28, ptr @exynos_suspend_finish._entry, ptr @exynos_suspend_finish._entry_ptr, ptr @exynos_suspend_prepare._entry, ptr @exynos_suspend_prepare._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @exynos_pm_syscore_ops, ptr @exynos_suspend_ops, ptr @pm_state.0, ptr @pm_state.1, ptr @pm_state.2, ptr @pm_state.3, ptr @pm_state.4, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @exynos_pmu_domain_ops, ptr @exynos_pmu_chip, ptr @.str.15, ptr @exynos_irqwake_intmask, ptr @exynos3250_pm_data, ptr @exynos4_pm_data, ptr @exynos5250_pm_data, ptr @exynos5420_pm_data, ptr @exynos3250_wkup_irq, ptr @.str.16, ptr @.str.17, ptr @exynos4_wkup_irq, ptr @exynos5250_wkup_irq, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pm_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pm_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_suspend_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_state.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_state.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_state.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_state.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_state.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_irq_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_irqwake_intmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_pm_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_pm_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_pm_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_pm_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_wkup_irq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_cpu_do_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_wkup_irq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_wkup_irq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_cpu_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_suspend_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_suspend_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_suspend_enter._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_suspend_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pmu_irq_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %tobool2.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool2.not, label %do.end6, label %irq_find_host.exit.if.end9_crit_edge

irq_find_host.exit.if.end9_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end6:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %node) #13
  br label %cleanup

if.end9:                                          ; preds = %irq_find_host.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %d.0.i33 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end9_crit_edge ], [ %call.i.i.i, %if.end.if.end9_crit_edge ]
  %call10 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  store ptr %call10, ptr @pmu_base_addr, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %node) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i33, i32 noundef 0, i32 noundef 0, ptr noundef %spec.select.i.i, ptr noundef nonnull @exynos_pmu_domain_ops, ptr noundef null) #10
  %tobool20.not = icmp eq ptr %call1.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %6 = load ptr, ptr @pmu_base_addr, align 4
  call void @iounmap(ptr noundef %6) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  store ptr null, ptr @pmu_base_addr, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %if.then21 ], [ -12, %do.end15 ], [ -6, %do.end6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !118
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_pmu_of_device_ids, ptr noundef nonnull %match) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef null) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end17, label %if.end38, !prof !119

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 670, i32 noundef 9, ptr noundef null) #10
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  call void @of_node_put(ptr noundef nonnull %call) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end
  call void @of_node_put(ptr noundef nonnull %call) #10
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  store ptr %4, ptr @pm_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1544
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !120
  %7 = call i32 @llvm.bswap.i32(i32 %6) #10
  %8 = load ptr, ptr @pm_data, align 4
  %wake_disable_mask = getelementptr inbounds %struct.exynos_pm_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wake_disable_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wake_disable_mask, align 4
  %or = or i32 %10, %7
  %11 = call i32 @llvm.bswap.i32(i32 %or) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %12 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 1544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %11) #10, !srcloc !121
  %13 = load ptr, ptr @pm_data, align 4
  %pm_suspend = getelementptr inbounds %struct.exynos_pm_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm_suspend, align 4
  store ptr %15, ptr getelementptr inbounds (%struct.syscore_ops, ptr @exynos_pm_syscore_ops, i32 0, i32 1), align 4
  %pm_resume = getelementptr inbounds %struct.exynos_pm_data, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm_resume, align 4
  store ptr %17, ptr getelementptr inbounds (%struct.syscore_ops, ptr @exynos_pm_syscore_ops, i32 0, i32 2), align 4
  call void @register_syscore_ops(ptr noundef nonnull @exynos_pm_syscore_ops) #10
  call void @suspend_set_ops(ptr noundef nonnull @exynos_suspend_ops) #10
  %call40 = call zeroext i1 @exynos_secure_firmware_available() #13
  br i1 %call40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_base_phys to i32))
  %18 = load i32, ptr @sysram_base_phys, align 4
  store i32 %18, ptr @pm_state.3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %19 = load ptr, ptr @sysram_ns_base_addr, align 4
  store ptr %19, ptr @pm_state.2, align 4
  store i1 true, ptr @pm_state.4, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_base_addr to i32))
  %20 = load ptr, ptr @sysram_base_addr, align 4
  store ptr %20, ptr @pm_state.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then41, %do.end17, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pmu_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #10
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp623.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp623.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %add = add i32 %i.024, %virq
  %add7 = add i32 %i.024, %5
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add7, ptr noundef nonnull @exynos_pmu_chip, ptr noundef null) #10
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  %6 = call ptr @memcpy(ptr %parent_fwspec, ptr %data, i32 72)
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwnode, align 4
  %11 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent_fwspec, align 4
  %call9 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_pmu_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hwirq, align 4
  %arrayidx8 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pm_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %mask18 = getelementptr inbounds %struct.exynos_wkup_irq, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not19 = icmp eq i32 %4, 0
  br i1 %tobool3.not19, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %hwirq4 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq4, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp24 = icmp eq i32 %8, %6
  br i1 %cmp24, label %while.body.lr.ph.if.then5_crit_edge, label %while.body.lr.ph.while.cond_crit_edge

while.body.lr.ph.while.cond_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.cond

while.body.lr.ph.if.then5_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.lr.ph.while.cond_crit_edge
  %wkup_irq.02025 = phi ptr [ %incdec.ptr, %while.body.while.cond_crit_edge ], [ %2, %while.body.lr.ph.while.cond_crit_edge ]
  %mask = getelementptr %struct.exynos_wkup_irq, ptr %wkup_irq.02025, i32 1, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr %struct.exynos_wkup_irq, ptr %wkup_irq.02025, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr, align 4
  %cmp = icmp eq i32 %12, %6
  br i1 %cmp, label %while.body.if.then5_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.if.then5_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %while.body.if.then5_crit_edge, %while.body.lr.ph.if.then5_crit_edge
  %.lcssa = phi i32 [ %4, %while.body.lr.ph.if.then5_crit_edge ], [ %10, %while.body.if.then5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool6.not = icmp eq i32 %state, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %13 = load i32, ptr @exynos_irqwake_intmask, align 4
  %or = or i32 %13, %.lcssa
  br label %if.end10

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %.lcssa, -1
  %14 = load i32, ptr @exynos_irqwake_intmask, align 4
  %and = and i32 %14, %neg
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %storemerge = phi i32 [ %or, %if.then7 ], [ %and, %if.else ]
  store i32 %storemerge, ptr @exynos_irqwake_intmask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %while.cond.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %while.cond.preheader.cleanup_crit_edge ], [ -2, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos3250_pm_prepare() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @exynos_irqwake_intmask, align 4
  %and.i = and i32 %0, 2147483647
  %1 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 9736
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !120
  %5 = and i32 %4, -268435457
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i4 = getelementptr i8, ptr %6, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #10, !srcloc !121
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %7 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %7, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5, i32 -1391788032) #10, !srcloc !121
  %call2 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume to i32)) #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %call2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %9 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %8) #10, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos3250_pm_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !122
  %and.i = and i32 %0, -16711696
  %call1 = tail call i32 @exynos_pm_central_resume() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.early_wakeup_crit_edge

entry.early_wakeup_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 6939) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %2 = load ptr, ptr @firmware_ops, align 4
  %resume = getelementptr inbounds %struct.firmware_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.critedge, label %cond.true

cond.true:                                        ; preds = %if.end
  %call4 = tail call i32 %4() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call4)
  %phi.cmp = icmp eq i32 %call4, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp5 = icmp eq i32 %and.i, 1090568336
  %or.cond = select i1 %phi.cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %cond.true.if.then6_crit_edge, label %cond.true.early_wakeup_crit_edge

cond.true.early_wakeup_crit_edge:                 ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

cond.true.if.then6_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

land.lhs.true.critedge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp5.old = icmp eq i32 %and.i, 1090568336
  br i1 %cmp5.old, label %land.lhs.true.critedge.if.then6_crit_edge, label %land.lhs.true.critedge.early_wakeup_crit_edge

land.lhs.true.critedge.early_wakeup_crit_edge:    ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

land.lhs.true.critedge.if.then6_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true.critedge.if.then6_crit_edge, %cond.true.if.then6_crit_edge
  tail call void @exynos_cpu_restore_register() #10
  br label %early_wakeup

early_wakeup:                                     ; preds = %if.then6, %land.lhs.true.critedge.early_wakeup_crit_edge, %cond.true.early_wakeup_crit_edge, %entry.early_wakeup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #10, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pm_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_pm_central_suspend() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 257) #10, !srcloc !121
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !122
  %and.i = and i32 %1, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exynos_cpu_save_register() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos3250_cpu_suspend(i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %_do_idle.i = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %_do_idle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_do_idle.i, align 4
  %call1.i = tail call i32 %8() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sys_powerdown_conf(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_pm_central_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_restore_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_pm_central_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_save_register() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pm_prepare() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext false) #10
  %0 = load i32, ptr @exynos_irqwake_intmask, align 4
  %and.i = and i32 %0, 2147483647
  %1 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #10, !srcloc !121
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %3, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1, i32 -1391788032) #10, !srcloc !121
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume to i32)) #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %call) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pm_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @exynos_pm_central_resume() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.early_wakeup_crit_edge

entry.early_wakeup_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

if.end:                                           ; preds = %entry
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !122
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.end3, label %if.end3.thread

if.end3:                                          ; preds = %if.end
  tail call void @exynos_scu_enable() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %1 = load ptr, ptr @firmware_ops, align 4
  %resume = getelementptr inbounds %struct.firmware_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.then9_crit_edge, label %if.end3.cond.true_crit_edge

if.end3.cond.true_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end3.thread:                                   ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %4 = load ptr, ptr @firmware_ops, align 4
  %resume12 = getelementptr inbounds %struct.firmware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %resume12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resume12, align 4
  %tobool4.not13 = icmp eq ptr %6, null
  br i1 %tobool4.not13, label %if.end3.thread.early_wakeup_crit_edge, label %if.end3.thread.cond.true_crit_edge

if.end3.thread.cond.true_crit_edge:               ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.end3.thread.early_wakeup_crit_edge:            ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

cond.true:                                        ; preds = %if.end3.thread.cond.true_crit_edge, %if.end3.cond.true_crit_edge
  %7 = phi ptr [ %6, %if.end3.thread.cond.true_crit_edge ], [ %3, %if.end3.cond.true_crit_edge ]
  %call6 = tail call i32 %7() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call6)
  %phi.cmp = icmp ne i32 %call6, -38
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %phi.cmp, i1 true, i1 %cmp.not
  br i1 %brmerge, label %cond.true.early_wakeup_crit_edge, label %cond.true.if.then9_crit_edge

cond.true.if.then9_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

cond.true.early_wakeup_crit_edge:                 ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

if.then9:                                         ; preds = %cond.true.if.then9_crit_edge, %if.end3.if.then9_crit_edge
  tail call void @exynos_cpu_restore_register() #10
  br label %early_wakeup

early_wakeup:                                     ; preds = %if.then9, %cond.true.early_wakeup_crit_edge, %if.end3.thread.early_wakeup_crit_edge, %entry.early_wakeup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !121
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu_suspend(i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.exynos_flush_cache_all.exit_crit_edge, label %if.then.i.i

entry.exynos_flush_cache_all.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exynos_flush_cache_all.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1() #10
  br label %exynos_flush_cache_all.exit

exynos_flush_cache_all.exit:                      ; preds = %if.then.i.i, %entry.exynos_flush_cache_all.exit_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %_do_idle.i = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %_do_idle.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_do_idle.i, align 4
  %call1.i = tail call i32 %9() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_delayed_reset_assertion(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_scu_enable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5420_pm_prepare() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @exynos_irqwake_intmask, align 4
  %and.i = and i32 %0, 2147483647
  %1 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2316
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !120
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  store i32 %5, ptr @pm_state.1, align 4
  %6 = load ptr, ptr @pm_state.2, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !120
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr @pm_state.0, align 4
  %9 = load ptr, ptr @pm_state.2, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #10, !srcloc !121
  %.b25 = load i1, ptr @pm_state.4, align 4
  br i1 %.b25, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = load i32, ptr @pm_state.3, align 4
  %add = add i32 %10, 40
  %shr = lshr i32 %add, 2
  %or = or i32 %shr, 1073741824
  tail call void @exynos_smc(i32 noundef -101, i32 noundef %or, i32 noundef 0, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %11 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %11, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 -1391788032) #10, !srcloc !121
  %call6 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %call6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %13 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i28 = getelementptr i8, ptr %14, i32 9736
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #10, !srcloc !120
  %16 = and i32 %15, -268435457
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %17 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i29 = getelementptr i8, ptr %17, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %16) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i30 = getelementptr i8, ptr %18, i32 5604
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !120
  %20 = or i32 %19, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %21 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 5604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %20) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %22 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i32 = getelementptr i8, ptr %22, i32 9480
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #10, !srcloc !120
  %24 = and i32 %23, -134217729
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %25 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i33 = getelementptr i8, ptr %25, i32 9480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %24) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %26 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i34 = getelementptr i8, ptr %26, i32 16744
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #10, !srcloc !120
  %28 = or i32 %27, 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %29 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i35 = getelementptr i8, ptr %29, i32 16744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %28) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %30 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i36 = getelementptr i8, ptr %30, i32 16776
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #10, !srcloc !120
  %32 = or i32 %31, 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %33 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i37 = getelementptr i8, ptr %33, i32 16776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %32) #10, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5420_prepare_pm_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !123
  %call1 = tail call i32 @mcpm_cpu_powered_up() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !124

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 459, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = and i32 %0, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i24 = getelementptr i8, ptr %3, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #10, !srcloc !121
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5420_pm_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4096
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !120
  %2 = or i32 %1, 50331648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i18 = getelementptr i8, ptr %3, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %2) #10, !srcloc !121
  %4 = load i32, ptr @pm_state.0, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load ptr, ptr @pm_state.2, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !121
  %.b17 = load i1, ptr @pm_state.4, align 4
  br i1 %.b17, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load i32, ptr @pm_state.3, align 4
  %add = add i32 %7, 40
  %shr = lshr i32 %add, 2
  %or1 = or i32 %shr, 1073741824
  tail call void @exynos_smc(i32 noundef -101, i32 noundef %or1, i32 noundef -54915824, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -267452416) #10, !srcloc !121
  %call2 = tail call i32 @exynos_pm_central_resume() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.early_wakeup_crit_edge

if.end.early_wakeup_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %early_wakeup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = load i32, ptr @pm_state.1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %11 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i20 = getelementptr i8, ptr %11, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %10) #10, !srcloc !121
  br label %early_wakeup

early_wakeup:                                     ; preds = %if.end5, %if.end.early_wakeup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %12 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i21 = getelementptr i8, ptr %12, i32 5604
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #10, !srcloc !120
  %14 = and i32 %13, -65537
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 5604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %14) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %16 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 16744
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #10, !srcloc !120
  %18 = and i32 %17, -129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %19 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i24 = getelementptr i8, ptr %19, i32 16744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %18) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %20 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 16776
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #10, !srcloc !120
  %22 = and i32 %21, -129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %23 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i26 = getelementptr i8, ptr %23, i32 16776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %22) #10, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %24 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #10, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5420_pm_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_pm_central_suspend() #10
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !123
  %1 = and i32 %0, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 520
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #10, !srcloc !121
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #10, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5420_cpu_suspend(i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #14, !srcloc !123
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 255
  %and2 = and i32 %0, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %and2, i32 noundef %and, ptr noundef nonnull @exynos_cpu_resume) #10
  tail call void @mcpm_cpu_suspend() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_entry_vector(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_cpu_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_suspend_prepare() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_suspend_enter(i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1540
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !120
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_suspend_enter, %if.then)) #10
          to label %do.body4 [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_suspend_enter.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_suspend_enter, %if.then16)) #10
          to label %do.end19 [label %if.then16], !srcloc !125

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @exynos_irqwake_intmask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_suspend_enter.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %2) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4
  %4 = load i32, ptr @exynos_irqwake_intmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp20 = icmp eq i32 %1, -1
  %or.cond = select i1 %cmp, i1 %cmp20, i1 false
  br i1 %or.cond, label %do.end24, label %if.end32

do.end24:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22) #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end32:                                         ; preds = %do.end19
  %5 = load ptr, ptr @pm_data, align 4
  %pm_prepare = getelementptr inbounds %struct.exynos_pm_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pm_prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm_prepare, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %7() #10
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %8() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %9 = load ptr, ptr @firmware_ops, align 4
  %suspend = getelementptr inbounds %struct.firmware_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end36.if.then41_crit_edge, label %cond.end

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

cond.end:                                         ; preds = %if.end36
  %call39 = tail call i32 %11() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call39)
  %cmp40 = icmp eq i32 %call39, -38
  br i1 %cmp40, label %cond.end.if.then41_crit_edge, label %cond.end.if.end43_crit_edge

cond.end.if.end43_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

cond.end.if.then41_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then41:                                        ; preds = %cond.end.if.then41_crit_edge, %if.end36.if.then41_crit_edge
  %12 = load ptr, ptr @pm_data, align 4
  %cpu_suspend = getelementptr inbounds %struct.exynos_pm_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cpu_suspend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_suspend, align 4
  %call42 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef %14) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %cond.end.if.end43_crit_edge
  %ret.0 = phi i32 [ %call42, %if.then41 ], [ %call39, %cond.end.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool44.not = icmp eq i32 %ret.0, 0
  br i1 %tobool44.not, label %if.end46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %15 = load ptr, ptr @pm_data, align 4
  %pm_resume_prepare = getelementptr inbounds %struct.exynos_pm_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pm_resume_prepare to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm_resume_prepare, align 4
  %tobool47.not = icmp eq ptr %17, null
  br i1 %tobool47.not, label %if.end46.do.body51_crit_edge, label %if.then48

if.end46.do.body51_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17() #10
  br label %do.body51

do.body51:                                        ; preds = %if.then48, %if.end46.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_suspend_enter, %if.then63)) #10
          to label %do.body68 [label %if.then63], !srcloc !125

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 1536
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !120
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_suspend_enter.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, i32 noundef %20) #10
  br label %do.body68

do.body68:                                        ; preds = %if.then63, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_suspend_enter, %if.then80)) #10
          to label %cleanup [label %if.then80], !srcloc !125

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_suspend_enter.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body68, %if.end43.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %ret.0, %if.end43.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %do.body68 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exynos_suspend_finish() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__of_table_exynos3250_pmu_irq, !1, !"__of_table_exynos3250_pmu_irq", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-exynos/suspend.c", i32 232, i32 1}
!2 = !{ptr @__of_table_exynos4210_pmu_irq, !3, !"__of_table_exynos4210_pmu_irq", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-exynos/suspend.c", i32 233, i32 1}
!4 = !{ptr @__of_table_exynos4412_pmu_irq, !5, !"__of_table_exynos4412_pmu_irq", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-exynos/suspend.c", i32 234, i32 1}
!6 = !{ptr @__of_table_exynos5250_pmu_irq, !7, !"__of_table_exynos5250_pmu_irq", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-exynos/suspend.c", i32 235, i32 1}
!8 = !{ptr @__of_table_exynos5420_pmu_irq, !9, !"__of_table_exynos5420_pmu_irq", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-exynos/suspend.c", i32 236, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-exynos/suspend.c", i32 666, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @exynos_pm_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @exynos_pm_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-exynos/suspend.c", i32 670, i32 6}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-exynos/suspend.c", i32 671, i32 3}
!20 = !{ptr @exynos_pm_init._entry.4, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_pm_init._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pm_data, !23, !"pm_data", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-exynos/suspend.c", i32 70, i32 37}
!24 = distinct !{null, !25, !"pm_state", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-exynos/suspend.c", i32 71, i32 31}
!26 = !{ptr @exynos_pm_syscore_ops, !27, !"exynos_pm_syscore_ops", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-exynos/suspend.c", i32 656, i32 27}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-exynos/suspend.c", i32 195, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @exynos_pmu_irq_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @exynos_pmu_irq_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-exynos/suspend.c", i32 201, i32 3}
!35 = !{ptr @exynos_pmu_irq_init._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @exynos_pmu_irq_init._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-exynos/suspend.c", i32 208, i32 3}
!39 = !{ptr @exynos_pmu_irq_init._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @exynos_pmu_irq_init._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @exynos_pmu_domain_ops, !42, !"exynos_pmu_domain_ops", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-exynos/suspend.c", i32 183, i32 36}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-exynos/suspend.c", i32 125, i32 12}
!45 = !{ptr @exynos_pmu_chip, !46, !"exynos_pmu_chip", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-exynos/suspend.c", i32 124, i32 24}
!47 = !{ptr @exynos_irqwake_intmask, !48, !"exynos_irqwake_intmask", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-exynos/suspend.c", i32 77, i32 12}
!49 = !{ptr @exynos_pmu_of_device_ids, !50, !"exynos_pmu_of_device_ids", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-exynos/suspend.c", i32 636, i32 34}
!51 = !{ptr @exynos3250_pm_data, !52, !"exynos3250_pm_data", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-exynos/suspend.c", i32 599, i32 36}
!53 = !{ptr @exynos3250_wkup_irq, !54, !"exynos3250_wkup_irq", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-exynos/suspend.c", i32 79, i32 37}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-exynos/suspend.c", i32 243, i32 2}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @exynos_cpu_do_idle._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @exynos_cpu_do_idle._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @exynos4_pm_data, !61, !"exynos4_pm_data", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-exynos/suspend.c", i32 608, i32 36}
!62 = !{ptr @exynos4_wkup_irq, !63, !"exynos4_wkup_irq", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-exynos/suspend.c", i32 85, i32 37}
!64 = !{ptr @exynos5250_pm_data, !65, !"exynos5250_pm_data", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-exynos/suspend.c", i32 617, i32 36}
!66 = !{ptr @exynos5250_wkup_irq, !67, !"exynos5250_wkup_irq", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-exynos/suspend.c", i32 91, i32 37}
!68 = !{ptr @exynos5420_pm_data, !69, !"exynos5420_pm_data", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-exynos/suspend.c", i32 626, i32 36}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-exynos/suspend.c", i32 276, i32 2}
!72 = !{ptr @exynos5420_cpu_suspend._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @exynos5420_cpu_suspend._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @exynos_suspend_ops, !75, !"exynos_suspend_ops", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-exynos/suspend.c", i32 592, i32 42}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-exynos/suspend.c", i32 576, i32 3}
!78 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos_suspend_prepare._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @exynos_suspend_prepare._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-exynos/suspend.c", i32 529, i32 2}
!83 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug288, !82, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-exynos/suspend.c", i32 531, i32 2}
!88 = !{ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug289, !87, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-exynos/suspend.c", i32 536, i32 3}
!91 = !{ptr @exynos_suspend_enter._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @exynos_suspend_enter._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-exynos/suspend.c", i32 537, i32 3}
!95 = !{ptr @exynos_suspend_enter._entry.26, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @exynos_suspend_enter._entry_ptr.28, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-exynos/suspend.c", i32 554, i32 2}
!99 = !{ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug290, !98, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-exynos/suspend.c", i32 557, i32 2}
!102 = !{ptr @exynos_suspend_enter.__UNIQUE_ID_ddebug291, !101, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mach-exynos/suspend.c", i32 589, i32 3}
!105 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @exynos_suspend_finish._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @exynos_suspend_finish._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 5379244}
!121 = !{i64 5378826}
!122 = !{i64 2155560796}
!123 = !{i64 2155563410}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2148362380, i64 2148362385, i64 2148362398, i64 2148362442, i64 2148362476, i64 2148362497}
