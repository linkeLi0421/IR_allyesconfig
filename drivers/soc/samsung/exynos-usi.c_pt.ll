; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos-usi.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-usi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_usi_mode = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.exynos_usi_variant = type { i32, i32, i32, i32, i32, ptr }
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
%struct.exynos_usi = type { ptr, ptr, ptr, i32, i8, ptr, i32, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_exynos_usi__171_281_exynos_usi_driver_init6 = internal global ptr @exynos_usi_driver_init, section ".initcall6.init", align 4
@exynos_usi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_usi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_usi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_usi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_usi_driver_exit = internal global ptr @exynos_usi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [42 x i8] c"exynos_usi.description=Samsung USI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [61 x i8] c"exynos_usi.author=Sam Protsenko <semen.protsenko@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [47 x i8] c"exynos_usi.file=drivers/soc/samsung/exynos-usi\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [23 x i8] c"exynos_usi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-usi\00", [21 x i8] zeroinitializer }, align 32
@exynos_usi_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-usi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_usi_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_usi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_usi_resume_noirq, ptr null, ptr @exynos_usi_resume_noirq, ptr null, ptr @exynos_usi_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"samsung,mode\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,sysreg\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung,clkreq-on\00", [46 x i8] zeroinitializer }, align 32
@exynos_usi_modes = internal constant { [4 x %struct.exynos_usi_mode], [32 x i8] } { [4 x %struct.exynos_usi_mode] [%struct.exynos_usi_mode { ptr @.str.8, i32 0 }, %struct.exynos_usi_mode { ptr @.str.9, i32 1 }, %struct.exynos_usi_mode { ptr @.str.10, i32 2 }, %struct.exynos_usi_mode { ptr @.str.11, i32 4 }], [32 x i8] zeroinitializer }, align 32
@exynos_usi_set_sw_conf.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_usi\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_usi_set_sw_conf\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/samsung/exynos-usi.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"protocol: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos850_usi_data = internal constant { %struct.exynos_usi_variant, [40 x i8] } { %struct.exynos_usi_variant { i32 2, i32 7, i32 0, i32 3, i32 2, ptr @exynos850_usi_clk_names }, [40 x i8] zeroinitializer }, align 32
@exynos850_usi_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipclk\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"exynos_usi_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 273, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 275, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"exynos_usi_dt_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 86, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"exynos_usi_pm\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 269, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 182, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 189, i32 52 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 198, i32 45 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"exynos_usi_modes\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 69, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 119, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 70, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 71, i32 28 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 72, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 73, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"exynos850_usi_data\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 77, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"exynos850_usi_clk_names\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 76, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 76, i32 57 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [36 x i8] c"../drivers/soc/samsung/exynos-usi.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 76, i32 65 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_exynos_usi_driver_exit, ptr @__initcall__kmod_exynos_usi__171_281_exynos_usi_driver_init6, ptr @exynos_usi_driver_exit, ptr @exynos_usi_driver, ptr @.str, ptr @exynos_usi_dt_match, ptr @exynos_usi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @exynos_usi_modes, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @exynos850_usi_data, ptr @exynos850_usi_clk_names, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_usi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_usi_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_usi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_usi_modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos850_usi_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos850_usi_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_usi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_usi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_usi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_usi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_usi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #5
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mode.i, align 4, !annotation !57
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %mode.i, i32 noundef 1, i32 noundef 0) #5
  %6 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.exynos_usi_parse_dt.exit_crit_edge

if.end7.exynos_usi_parse_dt.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_usi_parse_dt.exit

if.end.i:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %min_mode.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %min_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp.i = icmp ult i32 %8, %12
  br i1 %cmp.i, label %if.end.i.exynos_usi_parse_dt.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.exynos_usi_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_usi_parse_dt.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_mode.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %max_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp2.i = icmp ugt i32 %8, %14
  br i1 %cmp2.i, label %lor.lhs.false.i.exynos_usi_parse_dt.exit.thread_crit_edge, label %if.end4.i

lor.lhs.false.i.exynos_usi_parse_dt.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_usi_parse_dt.exit.thread

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %mode5.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %mode5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %mode5.i, align 4
  %call6.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %sysreg.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6.i, ptr %sysreg.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call6.i to i32
  br label %exynos_usi_parse_dt.exit

if.end12.i:                                       ; preds = %if.end4.i
  %sw_conf.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 6
  %call13.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %sw_conf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %exynos_usi_parse_dt.exit.thread65, label %if.end12.i.exynos_usi_parse_dt.exit.thread_crit_edge

if.end12.i.exynos_usi_parse_dt.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_usi_parse_dt.exit.thread

exynos_usi_parse_dt.exit.thread65:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %clkreq_on.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %18 = ptrtoint ptr %clkreq_on.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool.i, ptr %clkreq_on.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #5
  br label %if.end11

exynos_usi_parse_dt.exit.thread:                  ; preds = %if.end12.i.exynos_usi_parse_dt.exit.thread_crit_edge, %lor.lhs.false.i.exynos_usi_parse_dt.exit.thread_crit_edge, %if.end.i.exynos_usi_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call13.i, %if.end12.i.exynos_usi_parse_dt.exit.thread_crit_edge ], [ -22, %if.end.i.exynos_usi_parse_dt.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.exynos_usi_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #5
  br label %cleanup

exynos_usi_parse_dt.exit:                         ; preds = %if.then9.i, %if.end7.exynos_usi_parse_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.then9.i ], [ %6, %if.end7.exynos_usi_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool9.not, label %exynos_usi_parse_dt.exit.if.end11_crit_edge, label %exynos_usi_parse_dt.exit.cleanup_crit_edge

exynos_usi_parse_dt.exit.cleanup_crit_edge:       ; preds = %exynos_usi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exynos_usi_parse_dt.exit.if.end11_crit_edge:      ; preds = %exynos_usi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %exynos_usi_parse_dt.exit.if.end11_crit_edge, %exynos_usi_parse_dt.exit.thread65
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %num_clks.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clks.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i58 = icmp eq i32 %22, 0
  br i1 %cmp.i58, label %if.end11.if.end15_crit_edge, label %if.end.i59

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i59:                                       ; preds = %if.end11
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 8) #5
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !58

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  %clks27.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %clks27.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %clks27.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end.i59
  %28 = extractvalue { i32, i1 } %25, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef %28, i32 noundef 3520) #5
  %clks.i = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool.not.i60 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i60, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %devm_kcalloc.exit.i.for.body.i_crit_edge

devm_kcalloc.exit.i.for.body.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  br label %for.body.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %devm_kcalloc.exit.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %devm_kcalloc.exit.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %clk_names.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %clk_names.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %33, i32 %i.030.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clks.i, align 4
  %arrayidx8.i = getelementptr %struct.clk_bulk_data, ptr %37, i32 %i.030.i
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %arrayidx8.i, align 4
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %exynos_usi_get_clocks.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exynos_usi_get_clocks.exit:                       ; preds = %for.body.i
  %39 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clks.i, align 4
  %call10.i = call i32 @devm_clk_bulk_get(ptr noundef %24, i32 noundef %22, ptr noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool13.not = icmp eq i32 %call10.i, 0
  br i1 %tobool13.not, label %exynos_usi_get_clocks.exit.if.end15_crit_edge, label %exynos_usi_get_clocks.exit.cleanup_crit_edge

exynos_usi_get_clocks.exit.cleanup_crit_edge:     ; preds = %exynos_usi_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exynos_usi_get_clocks.exit.if.end15_crit_edge:    ; preds = %exynos_usi_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %exynos_usi_get_clocks.exit.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp = icmp eq i32 %44, 2
  br i1 %cmp, label %if.then17, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then17:                                        ; preds = %if.end15
  %call18 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.exynos_usi, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call18, ptr %regs, align 4
  %cmp.i62 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then21, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.then17.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %call26 = call fastcc i32 @exynos_usi_configure(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.then21, %exynos_usi_get_clocks.exit.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %exynos_usi_parse_dt.exit.cleanup_crit_edge, %exynos_usi_parse_dt.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then21 ], [ %call30, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i, %exynos_usi_parse_dt.exit.cleanup_crit_edge ], [ %call10.i, %exynos_usi_get_clocks.exit.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %retval.0.i.ph, %exynos_usi_parse_dt.exit.thread ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_usi_configure(ptr nocapture noundef %usi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %data.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 7
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %min_mode.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %min_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.i = icmp ugt i32 %5, %1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mode.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %max_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp2.i = icmp ult i32 %7, %1
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %val3.i = getelementptr [4 x %struct.exynos_usi_mode], ptr @exynos_usi_modes, i32 0, i32 %1, i32 1
  %8 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val3.i, align 4
  %sysreg.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 5
  %10 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysreg.i, align 4
  %sw_conf.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 6
  %12 = ptrtoint ptr %sw_conf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_conf.i, align 4
  %sw_conf_mask.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %sw_conf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_conf_mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_usi_set_sw_conf.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_usi_configure, %if.then12.i)) #5
          to label %if.end [label %if.then12.i], !srcloc !59

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %usi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usi, align 4
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 4
  %arrayidx14.i = getelementptr [4 x %struct.exynos_usi_mode], ptr @exynos_usi_modes, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_usi_set_sw_conf.__UNIQUE_ID_ddebug170, ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef %22) #5
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %if.end6.i
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp eq i32 %26, 2
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %num_clks.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 2
  %29 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clks.i, align 4
  %call.i.i9 = tail call i32 @clk_bulk_prepare(i32 noundef %28, ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i.i = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then1
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %28, ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i10, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %28, ptr noundef %30) #5
  br label %cleanup

if.end.i10:                                       ; preds = %if.end.i.i
  %regs.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 1
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %34 = and i32 %33, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %34) #5, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #5
  %clkreq_on.i = getelementptr inbounds %struct.exynos_usi, ptr %usi, i32 0, i32 4
  %38 = ptrtoint ptr %clkreq_on.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %clkreq_on.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.i = icmp eq i8 %39, 0
  br i1 %tobool5.not.i, label %if.end.i10.if.end20.i_crit_edge, label %if.then6.i

if.end.i10.if.end20.i_crit_edge:                  ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %43 = and i32 %42, -100663297
  %44 = or i32 %43, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %44) #5, !srcloc !63
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then6.i, %if.end.i10.if.end20.i_crit_edge
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %num_clks22.i = getelementptr inbounds %struct.exynos_usi_variant, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %num_clks22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks22.i, align 4
  %51 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %50, ptr noundef %52) #5
  tail call void @clk_bulk_unprepare(i32 noundef %50, ptr noundef %52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.then3.i.i, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end20.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i9, %if.then1.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_usi_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @exynos_usi_configure(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_exynos_usi__171_281_exynos_usi_driver_init6, !1, !"__initcall__kmod_exynos_usi__171_281_exynos_usi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_exynos_usi_driver_exit, !1, !"__exitcall_exynos_usi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 284, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 285, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 275, i32 12}
!12 = !{ptr @exynos_usi_driver, !13, !"exynos_usi_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 273, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 182, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 189, i32 52}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 198, i32 45}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 119, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @exynos_usi_set_sw_conf.__UNIQUE_ID_ddebug170, !21, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 70, i32 28}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 71, i32 28}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 72, i32 27}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 73, i32 27}
!34 = !{ptr @exynos_usi_modes, !35, !"exynos_usi_modes", i1 false, i1 false}
!35 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 69, i32 37}
!36 = !{ptr @exynos_usi_dt_match, !37, !"exynos_usi_dt_match", i1 false, i1 false}
!37 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 86, i32 34}
!38 = !{ptr @exynos850_usi_data, !39, !"exynos850_usi_data", i1 false, i1 false}
!39 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 77, i32 40}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 76, i32 57}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 76, i32 65}
!44 = !{ptr @exynos850_usi_clk_names, !45, !"exynos850_usi_clk_names", i1 false, i1 false}
!45 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 76, i32 27}
!46 = !{ptr @exynos_usi_pm, !47, !"exynos_usi_pm", i1 false, i1 false}
!47 = !{!"../drivers/soc/samsung/exynos-usi.c", i32 269, i32 32}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2148727066, i64 2148727071, i64 2148727084, i64 2148727128, i64 2148727162, i64 2148727183}
!60 = !{i64 5065077}
!61 = !{i64 2152622324}
!62 = !{i64 2152622624}
!63 = !{i64 5064659}
!64 = !{i8 0, i8 2}
!65 = !{i64 2152623821}
!66 = !{i64 2152624203}
