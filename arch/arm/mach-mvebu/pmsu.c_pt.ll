; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/pmsu.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/pmsu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@pmsu_mp_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mvebu_boot_wa_end = external dso_local global [0 x i8], align 1
@mvebu_boot_wa_start = external dso_local global [0 x i8], align 1
@mvebu_setup_boot_addr_wa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013mvebu-pmsu: Unable to map SRAM to setup the boot address WA\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mvebu_setup_boot_addr_wa\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arch/arm/mach-mvebu/pmsu.c\00", [37 x i8] zeroinitializer }, align 32
@mvebu_setup_boot_addr_wa._entry_ptr = internal global ptr @mvebu_setup_boot_addr_wa._entry, section ".printk_index", align 4
@armada_370_xp_pmsu_idle_enter.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmsu\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"armada_370_xp_pmsu_idle_enter\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to suspend the system\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mvebu-pmsu: Failed to suspend the system\0A\00", [54 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__initcall__kmod_pmsu__229_534_mvebu_v7_cpu_pm_init3 = internal global ptr @mvebu_v7_cpu_pm_init, section ".initcall3.init", align 4
@__initcall__kmod_pmsu__230_535_mvebu_v7_pmsu_initearly = internal global ptr @mvebu_v7_pmsu_init, section ".initcallearly.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@of_pmsu_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-xp-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada380\00", [46 x i8] zeroinitializer }, align 32
@mvebu_v7_cpu_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014mvebu-pmsu: CPU hotplug support is currently broken on Armada 38x: disabling\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvebu_v7_cpu_pm_init\00", [43 x i8] zeroinitializer }, align 32
@mvebu_v7_cpu_pm_init._entry_ptr = internal global ptr @mvebu_v7_cpu_pm_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,armadaxp\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada370\00", [46 x i8] zeroinitializer }, align 32
@mvebu_v7_cpuidle_device = internal global { %struct.platform_device, [224 x i8] } zeroinitializer, align 32
@mvebu_v7_cpu_pm_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mvebu_v7_cpu_pm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,coherency-fabric\00", [39 x i8] zeroinitializer }, align 32
@mvebu_cpu_resume = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpuidle-armada-xp\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"broken-idle\00", [20 x i8] zeroinitializer }, align 32
@broken_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014mvebu-pmsu: CPU idle is currently broken: disabling\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"broken_idle\00", [20 x i8] zeroinitializer }, align 32
@broken_idle._entry_ptr = internal global ptr @broken_idle._entry, section ".printk_index", align 4
@pmsu_mp_phys_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpuidle-armada-370\00", [45 x i8] zeroinitializer }, align 32
@armada_38x_cpuidle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014mvebu-pmsu: CPU idle is currently broken on Armada 38x: disabling\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"armada_38x_cpuidle_init\00", [40 x i8] zeroinitializer }, align 32
@armada_38x_cpuidle_init._entry_ptr = internal global ptr @armada_38x_cpuidle_init._entry, section ".printk_index", align 4
@mvebu_v7_pmsu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mvebu-pmsu: Initializing Power Management Service Unit\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvebu_v7_pmsu_init\00", [45 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry_ptr = internal global ptr @mvebu_v7_pmsu_init._entry, section ".printk_index", align 4
@mvebu_v7_pmsu_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mvebu-pmsu: unable to get resource\0A\00", [58 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry_ptr.24 = internal global ptr @mvebu_v7_pmsu_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"marvell,armada-370-xp-pmsu\00", [37 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mvebu-pmsu: [Firmware Warn]: deprecated pmsu binding\0A\00", [40 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry_ptr.28 = internal global ptr @mvebu_v7_pmsu_init._entry.26, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@mvebu_v7_pmsu_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013mvebu-pmsu: unable to request region\0A\00", [56 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry_ptr.31 = internal global ptr @mvebu_v7_pmsu_init._entry.29, section ".printk_index", align 4
@mvebu_v7_pmsu_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.21, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013mvebu-pmsu: unable to map registers\0A\00", [57 x i8] zeroinitializer }, align 32
@mvebu_v7_pmsu_init._entry_ptr.34 = internal global ptr @mvebu_v7_pmsu_init._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"pmsu_mp_base\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 102, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 141, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 304, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"of_pmsu_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 106, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 509, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 511, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 514, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 516, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"mvebu_v7_cpuidle_device\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 379, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"mvebu_v7_cpu_pm_notifier\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 375, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 478, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"mvebu_cpu_resume\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 104, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 487, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 383, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 384, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"pmsu_mp_phys_base\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 101, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 418, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 431, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 171, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 174, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 179, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 180, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 187, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [30 x i8] c"../arch/arm/mach-mvebu/pmsu.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 196, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__initcall__kmod_pmsu__229_534_mvebu_v7_cpu_pm_init3, ptr @__initcall__kmod_pmsu__230_535_mvebu_v7_pmsu_initearly, ptr @armada_38x_cpuidle_init._entry, ptr @armada_38x_cpuidle_init._entry_ptr, ptr @broken_idle._entry, ptr @broken_idle._entry_ptr, ptr @mvebu_setup_boot_addr_wa._entry, ptr @mvebu_setup_boot_addr_wa._entry_ptr, ptr @mvebu_v7_cpu_pm_init._entry, ptr @mvebu_v7_cpu_pm_init._entry_ptr, ptr @mvebu_v7_pmsu_init._entry, ptr @mvebu_v7_pmsu_init._entry.22, ptr @mvebu_v7_pmsu_init._entry.26, ptr @mvebu_v7_pmsu_init._entry.29, ptr @mvebu_v7_pmsu_init._entry.32, ptr @mvebu_v7_pmsu_init._entry_ptr, ptr @mvebu_v7_pmsu_init._entry_ptr.24, ptr @mvebu_v7_pmsu_init._entry_ptr.28, ptr @mvebu_v7_pmsu_init._entry_ptr.31, ptr @mvebu_v7_pmsu_init._entry_ptr.34, ptr @pmsu_mp_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @of_pmsu_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mvebu_v7_cpuidle_device, ptr @mvebu_v7_cpu_pm_notifier, ptr @.str.12, ptr @mvebu_cpu_resume, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pmsu_mp_phys_base, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsu_mp_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_setup_boot_addr_wa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pmsu_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_cpu_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_cpuidle_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_cpu_pm_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cpu_resume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broken_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsu_mp_phys_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_38x_cpuidle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_pmsu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_pmsu_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_pmsu_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_pmsu_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_v7_pmsu_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef %hw_cpu, ptr noundef %boot_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %boot_addr to i32
  %call = tail call i32 @__phys_addr_symbol(i32 noundef %0) #7
  %1 = tail call i32 @llvm.bswap.i32(i32 %call)
  %2 = load ptr, ptr @pmsu_mp_base, align 4
  %mul = shl i32 %hw_cpu, 8
  %add1 = add i32 %mul, 292
  %add.ptr = getelementptr i8, ptr %2, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_setup_boot_addr_wa(i32 noundef %crypto_eng_target, i32 noundef %crypto_eng_attribute, i32 noundef %resume_addr_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mvebu_mbus_del_window(i32 noundef -1048576, i32 noundef 1048576) #7
  %call1 = tail call i32 @mvebu_mbus_add_window_by_id(i32 noundef %crypto_eng_target, i32 noundef %crypto_eng_attribute, i32 noundef -65536, i32 noundef 65536) #7
  %call2 = tail call ptr @ioremap(i32 noundef -65536, i32 noundef 65536) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memcpy(ptr %call2, ptr @mvebu_boot_wa_start, i32 sub (i32 ptrtoint (ptr @mvebu_boot_wa_end to i32), i32 ptrtoint (ptr @mvebu_boot_wa_start to i32)))
  %add.ptr = getelementptr i8, ptr %call2, i32 sub (i32 ptrtoint (ptr @mvebu_boot_wa_end to i32), i32 ptrtoint (ptr @mvebu_boot_wa_start to i32))
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %resume_addr_reg) #7, !srcloc !91
  tail call void @iounmap(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_del_window(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_add_window_by_id(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_370_xp_pmsu_idle_enter(i32 noundef %deepidle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deepidle)
  %tobool.not = icmp eq i32 %deepidle, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %call = tail call fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #7, !srcloc !92
  tail call void @ll_disable_coherency() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void asm sideeffect "wfi", "~{memory}"() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 4608) #7, !srcloc !96
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 9216) #7, !srcloc !97
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 18432) #7, !srcloc !98
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %0, i32 2097152) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @ll_enable_coherency() #7
  tail call void asm sideeffect "mrc\09p15, 0, r0, c1, c0, 0 \0A\09tst\09r0, $0 \0A\09orreq\09r0, r0, #(1 << 2) \0A\09mcreq\09p15, 0, r0, c1, c0, 0 \0A\09isb\09", "Ir,~{r0}"(i32 4) #7, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @armada_370_xp_pmsu_idle_enter.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@armada_370_xp_pmsu_idle_enter, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !103

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @armada_370_xp_pmsu_idle_enter.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end3, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pmsu_mp_base, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %6, 8
  %add = add i32 %mul, 268
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %8 = or i32 %7, 13059
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !91
  %10 = load ptr, ptr @pmsu_mp_base, align 4
  %add9 = add i32 %mul, 260
  %add.ptr10 = getelementptr i8, ptr %10, i32 %add9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !104
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %and = shl i32 %flags, 20
  %13 = and i32 %and, 1048576
  %14 = or i32 %13, %12
  %or17 = or i32 %14, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %16 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %15) #7, !srcloc !91
  %and24 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.then26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load ptr, ptr @pmsu_mp_base, align 4
  %add30 = add i32 %mul, 264
  %add.ptr31 = getelementptr i8, ptr %17, i32 %add30
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr41 = getelementptr i8, ptr %20, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %19) #7, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_disable_coherency() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_enable_coherency() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_38x_do_cpu_suspend(i32 noundef %deepidle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deepidle)
  %tobool.not = icmp ne i32 %deepidle, 0
  %spec.select = zext i1 %tobool.not to i32
  %call = tail call fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %spec.select)
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #7, !srcloc !111
  %call1 = tail call ptr @mvebu_get_scu_base() #7
  %call2 = tail call i32 @scu_power_mode(ptr noundef %call1, i32 noundef 3) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_do_idle, align 4
  %call4 = tail call i32 %7() #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mvebu_get_scu_base() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pmsu_mp_base, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %6, 8
  %add = add i32 %mul, 260
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %8 = and i32 %7, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #7, !srcloc !91
  %10 = load ptr, ptr @pmsu_mp_base, align 4
  %add9 = add i32 %mul, 268
  %add.ptr10 = getelementptr i8, ptr %10, i32 %add9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %12 = and i32 %11, -13060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #7, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_v7_cpu_pm_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_pmsu_table, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cpu_hotplug_disable() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @armada_xp_cpuidle_init() #11
  br label %if.end22

if.else:                                          ; preds = %if.end5
  %call10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @armada_370_cpuidle_init() #11
  br label %if.end22

if.else14:                                        ; preds = %if.else
  %call15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else14.cleanup_crit_edge, label %if.end22.thread

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.thread:                                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %if.end25

if.end22:                                         ; preds = %if.then12, %if.then8
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ %call13, %if.then12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %if.end22.thread
  %0 = load ptr, ptr @pmsu_mp_base, align 4
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %if.end25.mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit_crit_edge, label %if.end.i

if.end25.mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %2 = or i32 %1, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #7, !srcloc !91
  br label %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit

mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit:    ; preds = %if.end.i, %if.end25.mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit_crit_edge
  %4 = load ptr, ptr @mvebu_v7_cpuidle_device, align 8
  %tobool26.not = icmp eq ptr %4, null
  br i1 %tobool26.not, label %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit.if.end29_crit_edge, label %if.then27

mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit.if.end29_crit_edge: ; preds = %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @platform_device_register(ptr noundef nonnull @mvebu_v7_cpuidle_device) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %mvebu_v7_pmsu_enable_l2_powerdown_onidle.exit.if.end29_crit_edge
  %call30 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @mvebu_v7_cpu_pm_notifier) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end22.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else14.cleanup_crit_edge ], [ %ret.0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_v7_pmsu_init() #5 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_pmsu_table, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %out

if.end10:                                         ; preds = %do.end
  %call11 = call i32 @of_device_is_compatible(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end22_crit_edge, label %do.end16

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %sub = add i32 %3, -256
  store i32 %sub, ptr %res, align 4
  %sub21 = add i32 %3, 3839
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub21, ptr %0, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end16, %if.end10.if.end22_crit_edge
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %full_name = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name, align 4
  %call25 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %add.i, ptr noundef %10, i32 noundef 0) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %out

if.end33:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  store i32 %12, ptr @pmsu_mp_phys_base, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %sub.i55 = sub i32 1, %12
  %add.i56 = add i32 %sub.i55, %14
  %call37 = call ptr @ioremap(i32 noundef %12, i32 noundef %add.i56) #7
  store ptr %call37, ptr @pmsu_mp_base, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %sub.i58 = sub i32 1, %16
  %add.i59 = add i32 %sub.i58, %18
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %add.i59) #7
  br label %out

out:                                              ; preds = %do.end42, %if.end33.out_crit_edge, %do.end30, %do.end7
  %ret.0 = phi i32 [ -2, %do.end7 ], [ 0, %if.end33.out_crit_edge ], [ -12, %do.end42 ], [ -16, %do.end30 ]
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_pmsu_dfs_request(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr @pmsu_mp_base, align 4
  %mul = shl i32 %1, 8
  %add = add i32 %mul, 288
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %4 = and i32 %3, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !91
  %6 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %8 = or i32 %7, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #7, !srcloc !91
  %call19 = tail call i32 @smp_call_function_single(i32 noundef %cpu, ptr noundef nonnull @mvebu_pmsu_dfs_request_local, ptr noundef null, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add20 = add i32 %10, 100
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub65 = sub i32 %11, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub65)
  %cmp66 = icmp slt i32 %sub65, 0
  br i1 %cmp66, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %12 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %add20
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub30 = sub i32 %add20, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %while.end.cleanup_crit_edge, label %if.end33

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr38 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %20 = and i32 %19, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr48 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %20) #7, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -62, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pmsu_dfs_request_local(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !125
  %and.i94 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not = icmp eq i32 %and.i94, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %5 = load ptr, ptr @pmsu_mp_base, align 4
  %mul = shl i32 %3, 8
  %add = add i32 %mul, 268
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %7 = or i32 %6, 259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr21 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %7) #7, !srcloc !91
  %9 = load ptr, ptr @pmsu_mp_base, align 4
  %add25 = add i32 %mul, 260
  %add.ptr26 = getelementptr i8, ptr %9, i32 %add25
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %11 = or i32 %10, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr36 = getelementptr i8, ptr %12, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %11) #7, !srcloc !91
  tail call void asm sideeffect "wfi", "~{memory}"() #7, !srcloc !130
  %13 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr41 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %15 = and i32 %14, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr50 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %15) #7, !srcloc !91
  br i1 %tobool.not, label %if.then60, label %do.end12.do.body62_crit_edge

do.end12.do.body62_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.then60:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body62

do.body62:                                        ; preds = %if.then60, %do.end12.do.body62_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool70.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool70.not, label %if.then74, label %do.body62.do.end77_crit_edge, !prof !134

do.body62.do.end77_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body62.do.end77_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !135
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_xp_cpuidle_init() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @broken_idle(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @armada_370_xp_cpu_resume, ptr @mvebu_cpu_resume, align 4
  store ptr @armada_370_xp_cpu_suspend, ptr getelementptr inbounds (%struct.platform_device, ptr @mvebu_v7_cpuidle_device, i32 0, i32 3, i32 7), align 8
  store ptr @.str.13, ptr @mvebu_v7_cpuidle_device, align 8
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_370_cpuidle_init() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @broken_idle(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @pmsu_mp_phys_base, align 4
  %add = add i32 %0, 292
  %call5 = tail call i32 @mvebu_setup_boot_addr_wa(i32 noundef 9, i32 noundef 1, i32 noundef %add)
  store ptr @armada_370_xp_cpu_resume, ptr @mvebu_cpu_resume, align 4
  store ptr @armada_370_xp_cpu_suspend, ptr getelementptr inbounds (%struct.platform_device, ptr @mvebu_v7_cpuidle_device, i32 0, i32 3, i32 7), align 8
  store ptr @.str.17, ptr @mvebu_v7_cpuidle_device, align 8
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @broken_idle(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_370_xp_cpu_resume() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_cpu_suspend(i32 noundef %deepidle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_suspend(i32 noundef %deepidle, ptr noundef nonnull @armada_370_xp_pmsu_idle_enter) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_v7_cpu_pm_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr nocapture noundef readnone %hcpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 2, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load ptr, ptr @mvebu_cpu_resume, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call i32 @__phys_addr_symbol(i32 noundef %8) #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %call.i) #7
  %10 = load ptr, ptr @pmsu_mp_base, align 4
  %mul.i = shl i32 %6, 8
  %add1.i = add i32 %mul.i, 292
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !91
  br label %if.end3

if.then2:                                         ; preds = %entry
  %11 = load ptr, ptr @pmsu_mp_base, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.then2.if.end3_crit_edge, label %if.end.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %mul.i5 = shl i32 %17, 8
  %add.i = add i32 %mul.i5, 260
  %add.ptr.i6 = getelementptr i8, ptr %11, i32 %add.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %19 = and i32 %18, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %20, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %19) #7, !srcloc !91
  %21 = load ptr, ptr @pmsu_mp_base, align 4
  %add9.i = add i32 %mul.i5, 268
  %add.ptr10.i = getelementptr i8, ptr %21, i32 %add9.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %23 = and i32 %22, -13060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr @pmsu_mp_base, align 4
  %add.ptr23.i = getelementptr i8, ptr %24, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %23) #7, !srcloc !91
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.then2.if.end3_crit_edge, %if.then, %entry.if.end3_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 141, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mvebu_setup_boot_addr_wa._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mvebu_setup_boot_addr_wa._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 304, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @armada_370_xp_pmsu_idle_enter.__UNIQUE_ID_ddebug228, !7, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_pmsu__229_534_mvebu_v7_cpu_pm_init3, !13, !"__initcall__kmod_pmsu__229_534_mvebu_v7_cpu_pm_init3", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 534, i32 1}
!14 = !{ptr @__initcall__kmod_pmsu__230_535_mvebu_v7_pmsu_initearly, !15, !"__initcall__kmod_pmsu__230_535_mvebu_v7_pmsu_initearly", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 535, i32 1}
!16 = !{ptr @pmsu_mp_base, !17, !"pmsu_mp_base", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 102, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 509, i32 31}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 511, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mvebu_v7_cpu_pm_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mvebu_v7_cpu_pm_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 514, i32 31}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 516, i32 36}
!29 = !{ptr @of_pmsu_table, !30, !"of_pmsu_table", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 106, i32 34}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 478, i32 43}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 487, i32 33}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 383, i32 32}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 384, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @broken_idle._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @broken_idle._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mvebu_cpu_resume, !43, !"mvebu_cpu_resume", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 104, i32 14}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 418, i32 33}
!46 = !{ptr @pmsu_mp_phys_base, !47, !"pmsu_mp_phys_base", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 101, i32 20}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 431, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @armada_38x_cpuidle_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @armada_38x_cpuidle_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mvebu_v7_cpuidle_device, !54, !"mvebu_v7_cpuidle_device", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 379, i32 31}
!55 = !{ptr @mvebu_v7_cpu_pm_notifier, !56, !"mvebu_v7_cpu_pm_notifier", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 375, i32 30}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 171, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mvebu_v7_pmsu_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mvebu_v7_pmsu_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 174, i32 3}
!64 = !{ptr @mvebu_v7_pmsu_init._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mvebu_v7_pmsu_init._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 179, i32 34}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 180, i32 3}
!70 = !{ptr @mvebu_v7_pmsu_init._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mvebu_v7_pmsu_init._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 187, i32 3}
!74 = !{ptr @mvebu_v7_pmsu_init._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mvebu_v7_pmsu_init._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-mvebu/pmsu.c", i32 196, i32 3}
!78 = !{ptr @mvebu_v7_pmsu_init._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mvebu_v7_pmsu_init._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2154072180}
!91 = !{i64 3086700}
!92 = !{i64 2154089089, i64 2154089106, i64 2154089136, i64 2154089184, i64 2154089227, i64 2154089275, i64 2154089289, i64 2154089339, i64 2154089387, i64 2154089445, i64 2154089493, i64 2154089507, i64 2154089521}
!93 = !{i64 2154089741}
!94 = !{i64 2154089826}
!95 = !{i64 2152755887}
!96 = !{i64 2152747234, i64 2152747247}
!97 = !{i64 2152749512, i64 2152749525}
!98 = !{i64 2152751793, i64 2152751806}
!99 = !{i64 2152756183, i64 2152756196}
!100 = !{i64 2152760054}
!101 = !{i64 2152760139}
!102 = !{i64 8381, i64 8410, i64 8429, i64 8461, i64 8497}
!103 = !{i64 2148736676, i64 2148736681, i64 2148736694, i64 2148736738, i64 2148736772, i64 2148736793}
!104 = !{i64 3087118}
!105 = !{i64 2154085611}
!106 = !{i64 2154086385}
!107 = !{i64 2154087202}
!108 = !{i64 2154087640}
!109 = !{i64 2154088457}
!110 = !{i64 2154088809}
!111 = !{i64 2154092158, i64 2154092175, i64 2154092205, i64 2154092253, i64 2154092296, i64 2154092344, i64 2154092358, i64 2154092408, i64 2154092456, i64 2154092514, i64 2154092562, i64 2154092576, i64 2154092590}
!112 = !{i64 2154093627}
!113 = !{i64 2154093981}
!114 = !{i64 2154094798}
!115 = !{i64 2154095572}
!116 = !{i64 2154084224}
!117 = !{i64 2154084527}
!118 = !{i64 2154116649}
!119 = !{i64 2154116999}
!120 = !{i64 2154117810}
!121 = !{i64 2154118162}
!122 = !{i64 2154119377}
!123 = !{i64 2154120962}
!124 = !{i64 2154121314}
!125 = !{i64 647342, i64 647403}
!126 = !{i64 2154112165}
!127 = !{i64 2154112681}
!128 = !{i64 2154113480}
!129 = !{i64 2154113828}
!130 = !{i64 2154114110}
!131 = !{i64 2154114671}
!132 = !{i64 2154115019}
!133 = !{i64 650074}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 650359}
