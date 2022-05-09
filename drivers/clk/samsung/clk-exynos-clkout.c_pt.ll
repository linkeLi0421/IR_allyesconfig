; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos-clkout.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos-clkout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.exynos_clkout_variant = type { i32 }
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
%struct.exynos_clkout = type { %struct.clk_gate, %struct.clk_mux, %struct.spinlock, ptr, ptr, i32, %struct.clk_hw_onecell_data }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_exynos_clkout__183_240_exynos_clkout_driver_init6 = internal global ptr @exynos_clkout_driver_init, section ".initcall6.init", align 4
@exynos_clkout_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_clkout_probe, ptr @exynos_clkout_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_clkout_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_clkout_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_clkout_driver_exit = internal global ptr @exynos_clkout_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [63 x i8] c"clk_exynos_clkout.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [61 x i8] c"clk_exynos_clkout.author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [65 x i8] c"clk_exynos_clkout.description=Samsung Exynos clock output driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [61 x i8] c"clk_exynos_clkout.file=drivers/clk/samsung/clk-exynos-clkout\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [30 x i8] c"clk_exynos_clkout.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos-clkout\00", [18 x i8] zeroinitializer }, align 32
@exynos_clkout_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@exynos_clkout_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_clkout_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&clkout->slock\00", [17 x i8] zeroinitializer }, align 32
@__const.exynos_clkout_probe.name = private unnamed_addr constant [9 x i8] c"clkoutXX\00", align 1
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clkout%d\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@exynos_clkout_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 194, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register clkout clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_clkout_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clk/samsung/clk-exynos-clkout.c\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_clkout_probe._entry_ptr = internal global ptr @exynos_clkout_probe._entry, section ".printk_index", align 4
@exynos_clkout_match_parent_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 87, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"not instantiated from MFD\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"exynos_clkout_match_parent_dev\00", [33 x i8] zeroinitializer }, align 32
@exynos_clkout_match_parent_dev._entry_ptr = internal global ptr @exynos_clkout_match_parent_dev._entry, section ".printk_index", align 4
@exynos_clkout_match_parent_dev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.7, i32 93, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot match parent device\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos_clkout_match_parent_dev._entry_ptr.14 = internal global ptr @exynos_clkout_match_parent_dev._entry.12, section ".printk_index", align 4
@exynos_clkout_exynos4 = internal constant { %struct.exynos_clkout_variant, [28 x i8] } { %struct.exynos_clkout_variant { i32 15 }, [28 x i8] zeroinitializer }, align 32
@exynos_clkout_exynos5 = internal constant { %struct.exynos_clkout_variant, [28 x i8] } { %struct.exynos_clkout_variant { i32 31 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"exynos_clkout_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 231, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 233, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"exynos_clkout_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 51, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"exynos_clkout_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 228, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 132, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 138, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 141, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 168, i32 56 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 194, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 93, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"exynos_clkout_exynos4\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 43, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"exynos_clkout_exynos5\00", align 1
@___asan_gen_.79 = private constant [43 x i8] c"../drivers/clk/samsung/clk-exynos-clkout.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 47, i32 43 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_exynos_clkout_driver_exit, ptr @__initcall__kmod_clk_exynos_clkout__183_240_exynos_clkout_driver_init6, ptr @exynos_clkout_driver_exit, ptr @exynos_clkout_match_parent_dev._entry, ptr @exynos_clkout_match_parent_dev._entry.12, ptr @exynos_clkout_match_parent_dev._entry_ptr, ptr @exynos_clkout_match_parent_dev._entry_ptr.14, ptr @exynos_clkout_probe._entry, ptr @exynos_clkout_probe._entry_ptr, ptr @exynos_clkout_driver, ptr @.str, ptr @exynos_clkout_ids, ptr @exynos_clkout_pm_ops, ptr @exynos_clkout_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @exynos_clkout_exynos4, ptr @exynos_clkout_exynos5], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_match_parent_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_match_parent_dev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_exynos4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_clkout_exynos5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_clkout_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_clkout_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_clkout_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_clkout_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_clkout_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_names = alloca [32 x ptr], align 4
  %parents = alloca [32 x ptr], align 4
  %name = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %parent_names) #7
  %0 = call ptr @memset(ptr %parent_names, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %parents) #7
  %1 = call ptr @memset(ptr %parents, i32 255, i32 128)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup93_crit_edge, label %if.end

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup93

if.end.i:                                         ; preds = %if.end
  %call.i152 = tail call ptr @of_match_device(ptr noundef nonnull @exynos_clkout_ids, ptr noundef nonnull %3) #7
  %tobool2.not.i = icmp eq ptr %call.i152, null
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end6

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup93

if.end6:                                          ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i152, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %np = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %np, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %of_node12 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node12, align 8
  %15 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %np, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %slock = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_clkout_probe.__key, i16 noundef signext 3) #7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end14
  %i.0159 = phi i32 [ 0, %if.end14 ], [ %inc.pre-phi, %cleanup.for.body_crit_edge ]
  %parent_count.0158 = phi i32 [ 0, %if.end14 ], [ %parent_count.1, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %name) #7
  %17 = call ptr @memcpy(ptr %name, ptr @__const.exynos_clkout_probe.name, i32 9)
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %i.0159)
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %call19 = call ptr @of_clk_get_by_name(ptr noundef %19, ptr noundef nonnull %name) #7
  %arrayidx = getelementptr [32 x ptr], ptr %parents, i32 0, i32 %i.0159
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call19, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw nsw i32 %i.0159, 1
  br label %cleanup

if.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call ptr @__clk_get_name(ptr noundef %call19) #7
  %add = add nuw nsw i32 %i.0159, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  %inc.pre-phi = phi i32 [ %add, %if.end24 ], [ %.pre, %if.then22 ]
  %call26.sink = phi ptr [ %call26, %if.end24 ], [ @.str.3, %if.then22 ]
  %parent_count.1 = phi i32 [ %add, %if.end24 ], [ %parent_count.0158, %if.then22 ]
  %21 = getelementptr [32 x ptr], ptr %parent_names, i32 0, i32 %i.0159
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26.sink, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %name) #7
  %exitcond.not = icmp eq i32 %inc.pre-phi, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_count.1)
  %tobool28.not = icmp eq i32 %parent_count.1, 0
  br i1 %tobool28.not, label %for.end.cleanup93_crit_edge, label %if.end30

for.end.cleanup93_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end30:                                         ; preds = %for.end
  %23 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %np, align 4
  %call32 = call ptr @of_iomap(ptr noundef %24, i32 noundef 0) #7
  %reg = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call32, ptr %reg, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end30.clks_put_crit_edge, label %if.end36

if.end30.clks_put_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %clks_put

if.end36:                                         ; preds = %if.end30
  %add.ptr = getelementptr i8, ptr %call32, i32 2560
  %reg38 = getelementptr inbounds %struct.clk_gate, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %reg38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %reg38, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bit_idx, align 4
  %flags = getelementptr inbounds %struct.clk_gate, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %flags, align 1
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %slock, ptr %lock, align 4
  %mux = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 1
  %reg45 = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %reg45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %reg45, align 4
  %mask = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %shift, align 4
  %lock50 = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %lock50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %slock, ptr %lock50, align 4
  %call55 = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %parent_names, i32 noundef %parent_count.1, ptr noundef %mux, ptr noundef nonnull @clk_mux_ops, ptr noundef null, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @clk_gate_ops, i32 noundef 132) #7
  %hws = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 1
  %34 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call55, ptr %hws, align 4
  %cmp.i153 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call55 to i32
  br label %err_unmap

if.end66:                                         ; preds = %if.end36
  %data = getelementptr inbounds %struct.exynos_clkout, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %data, align 4
  %37 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %np, align 4
  %call70 = call i32 @of_clk_add_hw_provider(ptr noundef %38, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end66.cleanup93_crit_edge, label %err_clk_unreg

if.end66.cleanup93_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

err_clk_unreg:                                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hws, align 4
  call void @clk_hw_unregister(ptr noundef %40) #7
  br label %err_unmap

err_unmap:                                        ; preds = %err_clk_unreg, %if.then61
  %ret.0 = phi i32 [ %35, %if.then61 ], [ %call70, %err_clk_unreg ]
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg, align 4
  call void @iounmap(ptr noundef %42) #7
  br label %clks_put

clks_put:                                         ; preds = %err_unmap, %if.end30.clks_put_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_unmap ], [ -19, %if.end30.clks_put_crit_edge ]
  br label %for.body80

for.body80:                                       ; preds = %for.inc86.for.body80_crit_edge, %clks_put
  %i.1161 = phi i32 [ 0, %clks_put ], [ %inc87, %for.inc86.for.body80_crit_edge ]
  %arrayidx81 = getelementptr [32 x ptr], ptr %parents, i32 0, i32 %i.1161
  %43 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx81, align 4
  %cmp.i154 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %for.body80.for.inc86_crit_edge, label %if.then83

for.body80.for.inc86_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

if.then83:                                        ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef %44) #7
  br label %for.inc86

for.inc86:                                        ; preds = %if.then83, %for.body80.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.1161, 1
  %exitcond162.not = icmp eq i32 %inc87, 32
  br i1 %exitcond162.not, label %do.end91, label %for.inc86.for.body80_crit_edge

for.inc86.for.body80_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80

do.end91:                                         ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %cleanup93

cleanup93:                                        ; preds = %do.end91, %if.end66.cleanup93_crit_edge, %for.end.cleanup93_crit_edge, %do.end6.i, %do.end.i, %entry.cleanup93_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end91 ], [ -12, %entry.cleanup93_crit_edge ], [ -22, %for.end.cleanup93_crit_edge ], [ 0, %if.end66.cleanup93_crit_edge ], [ -22, %do.end6.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %parents) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %parent_names) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_clkout_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %np = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  tail call void @of_clk_del_provider(ptr noundef %3) #7
  %hws = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 1
  %4 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hws, align 4
  tail call void @clk_hw_unregister(ptr noundef %5) #7
  %reg = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_clkout_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !59
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %pmu_debug_save = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pmu_debug_save to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pmu_debug_save, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_clkout_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %pmu_debug_save = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pmu_debug_save to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmu_debug_save, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %reg = getelementptr inbounds %struct.exynos_clkout, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !62
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_clk_exynos_clkout__183_240_exynos_clkout_driver_init6, !1, !"__initcall__kmod_clk_exynos_clkout__183_240_exynos_clkout_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_exynos_clkout_driver_exit, !1, !"__exitcall_exynos_clkout_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 242, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 245, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 233, i32 11}
!14 = !{ptr @exynos_clkout_driver, !15, !"exynos_clkout_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 231, i32 31}
!16 = !{ptr @exynos_clkout_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 132, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 138, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 141, i32 22}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 168, i32 56}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 194, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @exynos_clkout_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @exynos_clkout_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 87, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @exynos_clkout_match_parent_dev._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @exynos_clkout_match_parent_dev._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 93, i32 3}
!40 = !{ptr @exynos_clkout_match_parent_dev._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @exynos_clkout_match_parent_dev._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @exynos_clkout_ids, !43, !"exynos_clkout_ids", i1 false, i1 false}
!43 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 51, i32 34}
!44 = !{ptr @exynos_clkout_exynos4, !45, !"exynos_clkout_exynos4", i1 false, i1 false}
!45 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 43, i32 43}
!46 = !{ptr @exynos_clkout_exynos5, !47, !"exynos_clkout_exynos5", i1 false, i1 false}
!47 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 47, i32 43}
!48 = !{ptr @exynos_clkout_pm_ops, !49, !"exynos_clkout_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/clk/samsung/clk-exynos-clkout.c", i32 228, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 5143502}
!60 = !{i64 2152994551}
!61 = !{i64 2152994820}
!62 = !{i64 5143084}
