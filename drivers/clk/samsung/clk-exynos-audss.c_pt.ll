; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos-audss.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos-audss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.exynos_audss_clk_drvdata = type { i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_exynos_audss__184_301_exynos_audss_clk_driver_init6 = internal global ptr @exynos_audss_clk_driver_init, section ".initcall6.init", align 4
@exynos_audss_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_audss_clk_probe, ptr @exynos_audss_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_audss_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_audss_clk_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_audss_clk_driver_exit = internal global ptr @exynos_audss_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [63 x i8] c"clk_exynos_audss.author=Padmavathi Venna <padma.v@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [69 x i8] c"clk_exynos_audss.description=Exynos Audio Subsystem Clock Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [59 x i8] c"clk_exynos_audss.file=drivers/clk/samsung/clk-exynos-audss\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [32 x i8] c"clk_exynos_audss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias189 = internal constant [49 x i8] c"clk_exynos_audss.alias=platform:exynos-audss-clk\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos-audss-clk\00", [47 x i8] zeroinitializer }, align 32
@exynos_audss_clk_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_drvdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@exynos_audss_clk_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_audss_clk_suspend, ptr @exynos_audss_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fin_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_epll\00", [22 x i8] zeroinitializer }, align 32
@__const.exynos_audss_clk_probe.mout_audss_p = private unnamed_addr constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_audss\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cdclk0\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_audio0\00", [20 x i8] zeroinitializer }, align 32
@__const.exynos_audss_clk_probe.mout_i2s_p = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_pcm0\00", [22 x i8] zeroinitializer }, align 32
@reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@epll = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_in\00", [25 x i8] zeroinitializer }, align 32
@exynos_audss_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 168, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to prepare the epll clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_audss_clk_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clk/samsung/clk-exynos-audss.c\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_audss_clk_probe._entry_ptr = internal global ptr @exynos_audss_clk_probe._entry, section ".printk_index", align 4
@lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdclk\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mout_i2s\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dout_srp\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dout_aud_bus\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dout_i2s\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"srp_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_i2s\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_pcm\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_pcm_in\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adma\00", [27 x i8] zeroinitializer }, align 32
@exynos_audss_clk_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.11, i32 243, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register clock %d\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_audss_clk_probe._entry_ptr.29 = internal global ptr @exynos_audss_clk_probe._entry.27, section ".printk_index", align 4
@exynos_audss_clk_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.11, i32 252, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add clock provider\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_audss_clk_probe._entry_ptr.32 = internal global ptr @exynos_audss_clk_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@exynos4210_drvdata = internal constant { %struct.exynos_audss_clk_drvdata, [24 x i8] } { %struct.exynos_audss_clk_drvdata { i8 32, i32 10 }, [24 x i8] zeroinitializer }, align 32
@exynos5410_drvdata = internal constant { %struct.exynos_audss_clk_drvdata, [24 x i8] } { %struct.exynos_audss_clk_drvdata { i8 64, i32 10 }, [24 x i8] zeroinitializer }, align 32
@exynos5420_drvdata = internal constant { %struct.exynos_audss_clk_drvdata, [24 x i8] } { %struct.exynos_audss_clk_drvdata { i8 -96, i32 11 }, [24 x i8] zeroinitializer }, align 32
@reg_save.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_save.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reg_save.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"exynos_audss_clk_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 291, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 293, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"exynos_audss_clk_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 85, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"exynos_audss_clk_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 284, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 126, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 126, i32 43 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 44 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 54 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 128, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"reg_base\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 22, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"epll\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 30, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 23, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 155, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 156, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 167, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 189, i32 28 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 190, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 195, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 200, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 204, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 208, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 212, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 216, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 220, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 224, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 228, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 236, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 243, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 252, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 21, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"exynos4210_drvdata\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 69, i32 46 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"exynos5410_drvdata\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 74, i32 46 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"exynos5420_drvdata\00", align 1
@___asan_gen_.161 = private constant [42 x i8] c"../drivers/clk/samsung/clk-exynos-audss.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 79, i32 46 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"reg_save.1\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"reg_save.3\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"reg_save.5\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_exynos_audss_clk_driver_exit, ptr @__initcall__kmod_clk_exynos_audss__184_301_exynos_audss_clk_driver_init6, ptr @exynos_audss_clk_driver_exit, ptr @exynos_audss_clk_probe._entry, ptr @exynos_audss_clk_probe._entry.27, ptr @exynos_audss_clk_probe._entry.30, ptr @exynos_audss_clk_probe._entry_ptr, ptr @exynos_audss_clk_probe._entry_ptr.29, ptr @exynos_audss_clk_probe._entry_ptr.32, ptr @exynos_audss_clk_driver, ptr @.str, ptr @exynos_audss_clk_of_match, ptr @exynos_audss_clk_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @reg_base, ptr @epll, ptr @clk_data, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @exynos4210_drvdata, ptr @exynos5410_drvdata, ptr @exynos5420_drvdata, ptr @reg_save.1, ptr @reg_save.3, ptr @reg_save.5], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_audss_clk_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5410_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_save.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_save.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_save.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_audss_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_audss_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_audss_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mout_audss_p = alloca [2 x ptr], align 8
  %mout_i2s_p = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mout_audss_p) #7
  %0 = load i64, ptr @__const.exynos_audss_clk_probe.mout_audss_p, align 8
  %1 = ptrtoint ptr %mout_audss_p to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %mout_audss_p, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mout_i2s_p) #7
  %2 = call ptr @memcpy(ptr %mout_i2s_p, ptr @__const.exynos_audss_clk_probe.mout_i2s_p, i32 12)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  store ptr %call3, ptr @reg_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  store ptr inttoptr (i32 -19 to ptr), ptr @epll, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #7
  store ptr %call.i, ptr @clk_data, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %num_clks = getelementptr inbounds %struct.exynos_audss_clk_drvdata, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %cmp.i180 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call ptr @__clk_get_name(ptr noundef %call14) #7
  %7 = ptrtoint ptr %mout_audss_p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %mout_audss_p, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %cmp.i181 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.end19.if.end31_crit_edge, label %if.then21

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then21:                                        ; preds = %if.end19
  %call22 = tail call ptr @__clk_get_name(ptr noundef %call15) #7
  %arrayidx23 = getelementptr inbounds [2 x ptr], ptr %mout_audss_p, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %arrayidx23, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %call, align 4
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %if.then21.if.end31_crit_edge, label %if.then25

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %if.then21
  store ptr %call15, ptr @epll, align 4
  %call.i182 = tail call i32 @clk_prepare(ptr noundef %call15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then25.do.end_crit_edge

if.then25.do.end_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then25
  %call1.i = tail call i32 @clk_enable(ptr noundef %call15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call15) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then25.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i182, %if.then25.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.if.end31_crit_edge, %if.then21.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !103
  %call.i183 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %12 = load ptr, ptr @reg_base, align 4
  %call34 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %mout_audss_p, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %12, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %13 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %hws, align 4
  %call36 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %call37 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  %cmp.i184 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.end31.if.end42_crit_edge, label %if.then39

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = call ptr @__clk_get_name(ptr noundef %call36) #7
  %arrayidx41 = getelementptr inbounds [3 x ptr], ptr %mout_i2s_p, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call40, ptr %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end31.if.end42_crit_edge
  %cmp.i185 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.end42.if.end47_crit_edge, label %if.then44

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call ptr @__clk_get_name(ptr noundef %call37) #7
  %arrayidx46 = getelementptr inbounds [3 x ptr], ptr %mout_i2s_p, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call45, ptr %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %16 = load ptr, ptr @reg_base, align 4
  %call50 = call ptr @__clk_hw_register_mux(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 3, ptr noundef nonnull %mout_i2s_p, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %16, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %17 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %arrayidx51, align 4
  %18 = load ptr, ptr @reg_base, align 4
  %add.ptr52 = getelementptr i8, ptr %18, i32 4
  %call53 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr52, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 3
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call53, ptr %arrayidx54, align 4
  %20 = load ptr, ptr @reg_base, align 4
  %add.ptr55 = getelementptr i8, ptr %20, i32 4
  %call56 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr55, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 4
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call56, ptr %arrayidx57, align 4
  %22 = load ptr, ptr @reg_base, align 4
  %add.ptr58 = getelementptr i8, ptr %22, i32 4
  %call59 = call ptr @__clk_hw_register_divider(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr58, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 5
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call59, ptr %arrayidx60, align 4
  %24 = load ptr, ptr @reg_base, align 4
  %add.ptr61 = getelementptr i8, ptr %24, i32 8
  %call62 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr61, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %25 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call62, ptr %arrayidx63, align 4
  %26 = load ptr, ptr @reg_base, align 4
  %add.ptr64 = getelementptr i8, ptr %26, i32 8
  %call65 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr64, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 7
  %27 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call65, ptr %arrayidx66, align 4
  %28 = load ptr, ptr @reg_base, align 4
  %add.ptr67 = getelementptr i8, ptr %28, i32 8
  %call68 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr67, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %29 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call68, ptr %arrayidx69, align 4
  %30 = load ptr, ptr @reg_base, align 4
  %add.ptr70 = getelementptr i8, ptr %30, i32 8
  %call71 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr70, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call71, ptr %arrayidx72, align 4
  %call73 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.25) #7
  %cmp.i186 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.end47.if.end77_crit_edge, label %if.then75

if.end47.if.end77_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then75:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = call ptr @__clk_get_name(ptr noundef %call73) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end47.if.end77_crit_edge
  %sclk_pcm_p.0 = phi ptr [ @.str.6, %if.end47.if.end77_crit_edge ], [ %call76, %if.then75 ]
  %32 = load ptr, ptr @reg_base, align 4
  %add.ptr78 = getelementptr i8, ptr %32, i32 8
  %call79 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef %sclk_pcm_p.0, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx80 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %33 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call79, ptr %arrayidx80, align 4
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load81 = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load81)
  %tobool84.not = icmp sgt i8 %bf.load81, -1
  br i1 %tobool84.not, label %if.end77.if.end89_crit_edge, label %if.then85

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load ptr, ptr @reg_base, align 4
  %add.ptr86 = getelementptr i8, ptr %35, i32 8
  %call87 = call ptr @__clk_hw_register_gate(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %arrayidx88 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call87, ptr %arrayidx88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end77.if.end89_crit_edge
  %37 = load ptr, ptr @clk_data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp196.not = icmp eq i32 %39, 0
  br i1 %cmp196.not, label %if.end89.for.end_crit_edge, label %if.end89.for.body_crit_edge

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  br label %for.body

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end89.for.body_crit_edge
  %i.0197 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end89.for.body_crit_edge ]
  %arrayidx91 = getelementptr ptr, ptr %hws, i32 %i.0197
  %40 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx91, align 4
  %cmp.i187 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %do.end96, label %for.inc

do.end96:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx91.le = getelementptr ptr, ptr %hws, i32 %i.0197
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %i.0197) #10
  %42 = ptrtoint ptr %arrayidx91.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx91.le, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %unregister

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0197, 1
  %exitcond.not = icmp eq i32 %inc, %39
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end89.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call100 = call i32 @of_clk_add_hw_provider(ptr noundef %46, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end106, label %do.end105

do.end105:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  br label %unregister

if.end106:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i188 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  br label %cleanup

unregister:                                       ; preds = %do.end105, %do.end96
  %ret.0 = phi i32 [ %44, %do.end96 ], [ %call100, %do.end105 ]
  call fastcc void @exynos_audss_clk_teardown()
  %call.i189 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %47 = load ptr, ptr @epll, align 4
  %cmp.i190 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %unregister.cleanup_crit_edge, label %if.then110

unregister.cleanup_crit_edge:                     ; preds = %unregister
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then110:                                       ; preds = %unregister
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef %47) #7
  call void @clk_unprepare(ptr noundef %47) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %unregister.cleanup_crit_edge, %if.end106, %do.end, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ 0, %if.end106 ], [ %retval.0.i.ph, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %ret.0, %if.then110 ], [ %ret.0, %unregister.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mout_i2s_p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mout_audss_p) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  tail call fastcc void @exynos_audss_clk_teardown()
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %2 = load ptr, ptr @epll, align 4
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %2) #7
  tail call void @clk_unprepare(ptr noundef %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_audss_clk_teardown() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_data, align 4
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %0, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_mux(ptr noundef %2) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %3 = load ptr, ptr @clk_data, align 4
  %arrayidx.1 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_mux(ptr noundef %5) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %6 = load ptr, ptr @clk_data, align 4
  %arrayidx7 = getelementptr %struct.clk_hw_onecell_data, ptr %6, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %cmp.i40 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %for.inc.1.for.inc13_crit_edge, label %if.then9

for.inc.1.for.inc13_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

if.then9:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_divider(ptr noundef %8) #7
  br label %for.inc13

for.inc13:                                        ; preds = %if.then9, %for.inc.1.for.inc13_crit_edge
  %9 = load ptr, ptr @clk_data, align 4
  %arrayidx7.1 = getelementptr %struct.clk_hw_onecell_data, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7.1, align 4
  %cmp.i40.1 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.1, label %for.inc13.for.inc13.1_crit_edge, label %if.then9.1

for.inc13.for.inc13.1_crit_edge:                  ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.1

if.then9.1:                                       ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_divider(ptr noundef %11) #7
  br label %for.inc13.1

for.inc13.1:                                      ; preds = %if.then9.1, %for.inc13.for.inc13.1_crit_edge
  %12 = load ptr, ptr @clk_data, align 4
  %arrayidx7.2 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7.2, align 4
  %cmp.i40.2 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.2, label %for.inc13.1.for.inc13.2_crit_edge, label %if.then9.2

for.inc13.1.for.inc13.2_crit_edge:                ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.2

if.then9.2:                                       ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_divider(ptr noundef %14) #7
  br label %for.inc13.2

for.inc13.2:                                      ; preds = %if.then9.2, %for.inc13.1.for.inc13.2_crit_edge
  %15 = load ptr, ptr @clk_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp1744 = icmp ugt i32 %17, 5
  br i1 %cmp1744, label %for.inc13.2.for.body18_crit_edge, label %for.inc13.2.for.end28_crit_edge

for.inc13.2.for.end28_crit_edge:                  ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.inc13.2.for.body18_crit_edge:                 ; preds = %for.inc13.2
  br label %for.body18

for.body18:                                       ; preds = %for.inc26.for.body18_crit_edge, %for.inc13.2.for.body18_crit_edge
  %18 = phi ptr [ %21, %for.inc26.for.body18_crit_edge ], [ %15, %for.inc13.2.for.body18_crit_edge ]
  %i.245 = phi i32 [ %inc27, %for.inc26.for.body18_crit_edge ], [ 5, %for.inc13.2.for.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.clk_hw_onecell_data, ptr %18, i32 0, i32 1, i32 %i.245
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 4
  %cmp.i41 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %for.body18.for.inc26_crit_edge, label %if.then22

for.body18.for.inc26_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26

if.then22:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_hw_unregister_gate(ptr noundef %20) #7
  br label %for.inc26

for.inc26:                                        ; preds = %if.then22, %for.body18.for.inc26_crit_edge
  %inc27 = add nuw i32 %i.245, 1
  %21 = load ptr, ptr @clk_data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %cmp17 = icmp ult i32 %inc27, %23
  br i1 %cmp17, label %for.inc26.for.body18_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.inc26.for.body18_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %for.inc13.2.for.end28_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !104
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  store i32 %2, ptr @reg_save.1, align 4
  %3 = load ptr, ptr @reg_base, align 4
  %add.ptr.1 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !104
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  store i32 %5, ptr @reg_save.3, align 4
  %6 = load ptr, ptr @reg_base, align 4
  %add.ptr.2 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #7, !srcloc !104
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  store i32 %8, ptr @reg_save.5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %0 = load i32, ptr @reg_save.1, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = load ptr, ptr @reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %1) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %3 = load i32, ptr @reg_save.3, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @reg_base, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %4) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %6 = load i32, ptr @reg_save.5, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = load ptr, ptr @reg_base, align 4
  %add.ptr.2 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %7) #7, !srcloc !107
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_clk_exynos_audss__184_301_exynos_audss_clk_driver_init6, !1, !"__initcall__kmod_clk_exynos_audss__184_301_exynos_audss_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_exynos_audss_clk_driver_exit, !1, !"__exitcall_exynos_audss_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author185, !4, !"__UNIQUE_ID_author185", i1 false, i1 false}
!4 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias189, !11, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 306, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 293, i32 11}
!14 = !{ptr @exynos_audss_clk_driver, !15, !"exynos_audss_clk_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 291, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 126, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 126, i32 43}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 127, i32 30}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 127, i32 44}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 127, i32 54}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 128, i32 27}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 155, i32 30}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 156, i32 29}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 167, i32 5}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @exynos_audss_clk_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @exynos_audss_clk_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 189, i32 28}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 190, i32 33}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 195, i32 31}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 200, i32 31}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 204, i32 35}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 208, i32 31}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 212, i32 30}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 216, i32 30}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 220, i32 31}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 224, i32 30}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 228, i32 34}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 236, i32 28}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 243, i32 4}
!67 = !{ptr @exynos_audss_clk_probe._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @exynos_audss_clk_probe._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 252, i32 3}
!71 = !{ptr @exynos_audss_clk_probe._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @exynos_audss_clk_probe._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @reg_base, !74, !"reg_base", i1 false, i1 false}
!74 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 22, i32 22}
!75 = !{ptr @epll, !76, !"epll", i1 false, i1 false}
!76 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 30, i32 20}
!77 = !{ptr @clk_data, !78, !"clk_data", i1 false, i1 false}
!78 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 23, i32 36}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 21, i32 8}
!81 = !{ptr @lock, !80, !"lock", i1 false, i1 false}
!82 = !{ptr @exynos_audss_clk_of_match, !83, !"exynos_audss_clk_of_match", i1 false, i1 false}
!83 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 85, i32 34}
!84 = !{ptr @exynos4210_drvdata, !85, !"exynos4210_drvdata", i1 false, i1 false}
!85 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 69, i32 46}
!86 = !{ptr @exynos5410_drvdata, !87, !"exynos5410_drvdata", i1 false, i1 false}
!87 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 74, i32 46}
!88 = !{ptr @exynos5420_drvdata, !89, !"exynos5420_drvdata", i1 false, i1 false}
!89 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 79, i32 46}
!90 = !{ptr @exynos_audss_clk_pm_ops, !91, !"exynos_audss_clk_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 284, i32 32}
!92 = distinct !{null, !93, !"reg_save", i1 false, i1 false}
!93 = !{!"../drivers/clk/samsung/clk-exynos-audss.c", i32 36, i32 22}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2148586765, i64 2148586791, i64 2148586820, i64 2148586854, i64 2148586885, i64 2148586908}
!104 = !{i64 4565498}
!105 = !{i64 2153019959}
!106 = !{i64 2153020570}
!107 = !{i64 4565080}
