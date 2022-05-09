; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+exynos_get_pmu_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_exynos_get_pmu_regmap\09\09\09\09"
module asm "\09.long\09__crc_exynos_get_pmu_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exynos_get_pmu_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22exynos_get_pmu_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_exynos_get_pmu_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.exynos_pmu_context = type { ptr, ptr }
%struct.exynos_pmu_conf = type { i32, [3 x i8] }
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

@pmu_base_addr = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@pmu_context = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@exynos_pmu_of_device_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4412_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@__kstrtab_exynos_get_pmu_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_exynos_get_pmu_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_exynos_get_pmu_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exynos_get_pmu_regmap to i32), ptr @__kstrtab_exynos_get_pmu_regmap, ptr @__kstrtabns_exynos_get_pmu_regmap }, section "___ksymtab_gpl+exynos_get_pmu_regmap", align 4
@__initcall__kmod_exynos_pmu__171_164_exynos_pmu_init2 = internal global ptr @exynos_pmu_init, section ".initcall2.init", align 4
@exynos3250_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos4210_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos4412_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos5250_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos5420_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_pmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_pmu_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-pmu\00", [21 x i8] zeroinitializer }, align 32
@exynos_pmu_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@exynos_pmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error populating children, reboot and poweroff might not work properly\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_pmu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/samsung/exynos-pmu.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_pmu_probe._entry_ptr = internal global ptr @exynos_pmu_probe._entry, section ".printk_index", align 4
@exynos_pmu_probe.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_pmu\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Exynos PMU Driver probe done\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos-clkout\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"pmu_base_addr\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 26, i32 15 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"pmu_context\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 27, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"exynos_pmu_of_device_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 75, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"exynos_pmu_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 151, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 153, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"exynos_pmu_devs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 103, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 145, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 147, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [36 x i8] c"../drivers/soc/samsung/exynos-pmu.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 104, i32 12 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_exynos_pmu__171_164_exynos_pmu_init2, ptr @__ksymtab_exynos_get_pmu_regmap, ptr @exynos_pmu_probe._entry, ptr @exynos_pmu_probe._entry_ptr, ptr @pmu_base_addr, ptr @pmu_context, ptr @exynos_pmu_of_device_ids, ptr @exynos_pmu_driver, ptr @.str, ptr @exynos_pmu_devs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_base_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_context to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_of_device_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_pmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pmu_raw_writel(i32 noundef %val, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pmu_raw_readl(i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %offset
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !40
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_sys_powerdown_conf(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pmu_context, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pmu_data1 = getelementptr inbounds %struct.exynos_pmu_context, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pmu_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmu_data1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %powerdown_conf = getelementptr inbounds %struct.exynos_pmu_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %powerdown_conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %powerdown_conf, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %4(i32 noundef %mode) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.if.end17_crit_edge, label %for.cond.preheader

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.cond.preheader:                               ; preds = %if.end7
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.not39 = icmp eq i32 %10, -1
  br i1 %cmp.not39, label %for.cond.preheader.if.end17_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi i32 [ %20, %for.body.for.body_crit_edge ], [ %10, %for.cond.preheader.for.body_crit_edge ]
  %12 = phi ptr [ %18, %for.body.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.exynos_pmu_conf, ptr %12, i32 %i.040, i32 1, i32 %mode
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv = zext i8 %14 to i32
  %15 = shl nuw i32 %conv, 24
  %16 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #5, !srcloc !39
  %inc = add i32 %i.040, 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %arrayidx = getelementptr %struct.exynos_pmu_conf, ptr %18, i32 %inc
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %20, -1
  br i1 %cmp.not, label %for.body.if.end17_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %for.body.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %powerdown_conf_extra = getelementptr inbounds %struct.exynos_pmu_data, ptr %2, i32 0, i32 3
  %21 = ptrtoint ptr %powerdown_conf_extra to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %powerdown_conf_extra, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %22(i32 noundef %mode) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_get_pmu_regmap() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_pmu_of_device_ids, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.then ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pmu_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_pmu_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_pmu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  store ptr %call, ptr @pmu_base_addr, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  store ptr %call.i, ptr @pmu_context, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %2 = load ptr, ptr @pmu_context, align 4
  %pmu_data = getelementptr inbounds %struct.exynos_pmu_context, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pmu_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %pmu_data, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end7.if.end17_crit_edge, label %land.lhs.true

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %pmu_init = getelementptr inbounds %struct.exynos_pmu_data, ptr %call9, i32 0, i32 1
  %4 = ptrtoint ptr %pmu_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_init, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %land.lhs.true.if.end17_crit_edge, label %if.then14

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5() #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %6 = load ptr, ptr @pmu_context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %driver_data.i.i, align 4
  %call18 = tail call i32 @devm_mfd_add_devices(ptr noundef %dev1, i32 noundef -1, ptr noundef nonnull @exynos_pmu_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @devm_of_platform_populate(ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.do.body26_crit_edge, label %do.end

if.end21.do.body26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %do.body26

do.body26:                                        ; preds = %do.end, %if.end21.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_pmu_probe.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_pmu_probe, %if.then31)) #5
          to label %cleanup [label %if.then31], !srcloc !41

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_pmu_probe.__UNIQUE_ID_ddebug170, ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body26, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_exynos_get_pmu_regmap, !1, !"__ksymtab_exynos_get_pmu_regmap", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 115, i32 1}
!2 = !{ptr @__initcall__kmod_exynos_pmu__171_164_exynos_pmu_init2, !3, !"__initcall__kmod_exynos_pmu__171_164_exynos_pmu_init2", i1 false, i1 false}
!3 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 164, i32 1}
!4 = !{ptr @pmu_base_addr, !5, !"pmu_base_addr", i1 false, i1 false}
!5 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 26, i32 15}
!6 = !{ptr @pmu_context, !7, !"pmu_context", i1 false, i1 false}
!7 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 27, i32 35}
!8 = !{ptr @exynos_pmu_of_device_ids, !9, !"exynos_pmu_of_device_ids", i1 false, i1 false}
!9 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 75, i32 34}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 153, i32 13}
!12 = !{ptr @exynos_pmu_driver, !13, !"exynos_pmu_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 151, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 145, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_pmu_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_pmu_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 147, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @exynos_pmu_probe.__UNIQUE_ID_ddebug170, !23, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 104, i32 12}
!28 = !{ptr @exynos_pmu_devs, !29, !"exynos_pmu_devs", i1 false, i1 false}
!29 = !{!"../drivers/soc/samsung/exynos-pmu.c", i32 103, i32 30}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 3992311}
!40 = !{i64 3992729}
!41 = !{i64 2148860117, i64 2148860122, i64 2148860135, i64 2148860179, i64 2148860213, i64 2148860234}
