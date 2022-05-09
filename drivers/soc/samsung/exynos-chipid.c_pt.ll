; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos-chipid.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-chipid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.exynos_soc_id = type { ptr, i32 }
%struct.exynos_chipid_variant = type { i32, i32, i32 }
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_exynos_chipid__183_203_exynos_chipid_driver_init6 = internal global ptr @exynos_chipid_driver_init, section ".initcall6.init", align 4
@exynos_chipid_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_chipid_probe, ptr @exynos_chipid_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_chipid_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_chipid_driver_exit = internal global ptr @exynos_chipid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [74 x i8] c"exynos_chipid.description=Samsung Exynos ChipID controller and ASV driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [74 x i8] c"exynos_chipid.author=Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [59 x i8] c"exynos_chipid.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [61 x i8] c"exynos_chipid.author=Pankaj Dubey <pankaj.dubey@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [65 x i8] c"exynos_chipid.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [53 x i8] c"exynos_chipid.file=drivers/soc/samsung/exynos_chipid\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [26 x i8] c"exynos_chipid.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos-chipid\00", [18 x i8] zeroinitializer }, align 32
@exynos_chipid_of_device_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_chipid_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_chipid_drv_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Samsung Exynos\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@exynos_chipid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013Unknown SoC\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_chipid_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/samsung/exynos-chipid.c\00", [60 x i8] zeroinitializer }, align 32
@exynos_chipid_probe._entry_ptr = internal global ptr @exynos_chipid_probe._entry, section ".printk_index", align 4
@exynos_chipid_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 152, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_chipid_probe._entry_ptr.12 = internal global ptr @exynos_chipid_probe._entry.8, section ".printk_index", align 4
@soc_ids = internal constant { [16 x %struct.exynos_soc_id], [32 x i8] } { [16 x %struct.exynos_soc_id] [%struct.exynos_soc_id { ptr @.str.13, i32 -481878016 }, %struct.exynos_soc_id { ptr @.str.14, i32 1126170624 }, %struct.exynos_soc_id { ptr @.str.14, i32 1126236160 }, %struct.exynos_soc_id { ptr @.str.15, i32 1126301696 }, %struct.exynos_soc_id { ptr @.str.16, i32 -465494016 }, %struct.exynos_soc_id { ptr @.str.17, i32 1129447424 }, %struct.exynos_soc_id { ptr @.str.18, i32 -450494464 }, %struct.exynos_soc_id { ptr @.str.19, i32 -448724992 }, %struct.exynos_soc_id { ptr @.str.20, i32 -448659456 }, %struct.exynos_soc_id { ptr @.str.21, i32 -448581632 }, %struct.exynos_soc_id { ptr @.str.22, i32 -448528384 }, %struct.exynos_soc_id { ptr @.str.23, i32 -448651264 }, %struct.exynos_soc_id { ptr @.str.24, i32 -415105024 }, %struct.exynos_soc_id { ptr @.str.25, i32 -410497024 }, %struct.exynos_soc_id { ptr @.str.26, i32 -477954048 }, %struct.exynos_soc_id { ptr @.str.27, i32 -1431830528 }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS3250\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS4210\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS4212\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS4412\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5250\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5260\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5410\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5420\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5433\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5440\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS5800\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS7420\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXYNOS7885\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXYNOS850\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EXYNOSAUTOV9\00", [19 x i8] zeroinitializer }, align 32
@exynos4210_chipid_drv_data = internal constant { %struct.exynos_chipid_variant, [20 x i8] } { %struct.exynos_chipid_variant { i32 0, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@exynos850_chipid_drv_data = internal constant { %struct.exynos_chipid_variant, [20 x i8] } { %struct.exynos_chipid_variant { i32 16, i32 20, i32 16 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 1126170624, i64 1126236160, i64 1126301696, i64 1129447424, i64 2863136768, i64 3813089280, i64 3817013248, i64 3829473280, i64 3844472832, i64 3846242304, i64 3846307840, i64 3846316032, i64 3846385664, i64 3846438912, i64 3879862272, i64 3884470272]
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"exynos_chipid_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 195, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 197, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"exynos_chipid_of_device_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 183, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 126, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 128, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 129, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 133, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 136, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 151, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"soc_ids\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 43, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 46, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 47, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 49, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 50, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 51, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 52, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 53, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 54, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 55, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 56, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 57, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 58, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 60, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 61, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 62, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"exynos4210_chipid_drv_data\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 171, i32 43 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"exynos850_chipid_drv_data\00", align 1
@___asan_gen_.125 = private constant [39 x i8] c"../drivers/soc/samsung/exynos-chipid.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 177, i32 43 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_exynos_chipid_driver_exit, ptr @__initcall__kmod_exynos_chipid__183_203_exynos_chipid_driver_init6, ptr @exynos_chipid_driver_exit, ptr @exynos_chipid_probe._entry, ptr @exynos_chipid_probe._entry.8, ptr @exynos_chipid_probe._entry_ptr, ptr @exynos_chipid_probe._entry_ptr.12, ptr @exynos_chipid_driver, ptr @.str, ptr @exynos_chipid_of_device_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @soc_ids, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @exynos4210_chipid_drv_data, ptr @exynos850_chipid_drv_data], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_chipid_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_chipid_of_device_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_chipid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_chipid_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_chipid_drv_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos850_chipid_drv_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_chipid_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_chipid_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_chipid_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_chipid_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_chipid_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @device_node_to_regmap(ptr noundef %1) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !87
  %call.i = call i32 @regmap_read(ptr noundef %call2, i32 noundef 0, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i73 = icmp slt i32 %call.i, 0
  br i1 %cmp.i73, label %if.end6.exynos_chipid_get_chipid_info.exit.thread_crit_edge, label %if.end.i

if.end6.exynos_chipid_get_chipid_info.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_chipid_get_chipid_info.exit.thread

if.end.i:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %and.i = and i32 %5, -4096
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %if.end.i.if.end9_crit_edge, label %if.then2.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 @regmap_read(ptr noundef %call2, i32 noundef %7, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.exynos_chipid_get_chipid_info.exit.thread_crit_edge, label %if.then2.i.if.end9_crit_edge

if.then2.i.if.end9_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then2.i.exynos_chipid_get_chipid_info.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_chipid_get_chipid_info.exit.thread

exynos_chipid_get_chipid_info.exit.thread:        ; preds = %if.then2.i.exynos_chipid_get_chipid_info.exit.thread_crit_edge, %if.end6.exynos_chipid_get_chipid_info.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.exynos_chipid_get_chipid_info.exit.thread_crit_edge ], [ %call.i, %if.end6.exynos_chipid_get_chipid_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end9:                                          ; preds = %if.then2.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %main_rev_shift.i = getelementptr inbounds %struct.exynos_chipid_variant, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %main_rev_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %main_rev_shift.i, align 4
  %shr.i = lshr i32 %9, %11
  %sub_rev_shift.i = getelementptr inbounds %struct.exynos_chipid_variant, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %sub_rev_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sub_rev_shift.i, align 4
  %shr10.i = lshr i32 %9, %13
  %and11.i = and i32 %shr10.i, 15
  %and9.i = shl i32 %shr.i, 4
  %shl.i = and i32 %and9.i, 240
  %or.i = or i32 %shl.i, %and11.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %call.i74 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i74, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i74, i32 0, i32 1
  %14 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.1, ptr %family, align 4
  %call.i75 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #5
  %call16 = call i32 @of_property_read_string(ptr noundef %call.i75, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i74) #5
  call void @of_node_put(ptr noundef %call.i75) #5
  %call18 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %or.i) #5
  %revision19 = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i74, i32 0, i32 2
  %15 = ptrtoint ptr %revision19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %revision19, align 4
  %16 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %product_id_to_soc_id.exit.thread [
    i32 -481878016, label %if.end14.product_id_to_soc_id.exit_crit_edge
    i32 1126170624, label %if.then.fold.split.i
    i32 1126236160, label %if.then.fold.split9.i
    i32 1126301696, label %if.then.fold.split10.i
    i32 -465494016, label %if.then.fold.split11.i
    i32 1129447424, label %if.then.fold.split12.i
    i32 -450494464, label %if.then.fold.split13.i
    i32 -448724992, label %if.then.fold.split14.i
    i32 -448659456, label %if.then.fold.split15.i
    i32 -448581632, label %if.then.fold.split16.i
    i32 -448528384, label %if.then.fold.split17.i
    i32 -448651264, label %if.then.fold.split18.i
    i32 -415105024, label %if.then.fold.split19.i
    i32 -410497024, label %if.then.fold.split20.i
    i32 -477954048, label %if.then.fold.split21.i
    i32 -1431830528, label %if.then.fold.split22.i
  ]

if.end14.product_id_to_soc_id.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

product_id_to_soc_id.exit.thread:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %soc_id85 = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i74, i32 0, i32 4
  %17 = ptrtoint ptr %soc_id85 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %soc_id85, align 4
  br label %do.end

if.then.fold.split.i:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split9.i:                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split10.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split11.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split12.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split13.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split14.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split15.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split16.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split17.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split18.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split19.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split20.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split21.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

if.then.fold.split22.i:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %product_id_to_soc_id.exit

product_id_to_soc_id.exit:                        ; preds = %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %if.end14.product_id_to_soc_id.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end14.product_id_to_soc_id.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ], [ 12, %if.then.fold.split19.i ], [ 13, %if.then.fold.split20.i ], [ 14, %if.then.fold.split21.i ], [ 15, %if.then.fold.split22.i ]
  %arrayidx.i = getelementptr [16 x %struct.exynos_soc_id], ptr @soc_ids, i32 0, i32 %i.07.lcssa.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i74, i32 0, i32 4
  %20 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %soc_id, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %product_id_to_soc_id.exit.do.end_crit_edge, label %if.end25

product_id_to_soc_id.exit.do.end_crit_edge:       ; preds = %product_id_to_soc_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %product_id_to_soc_id.exit.do.end_crit_edge, %product_id_to_soc_id.exit.thread
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end25:                                         ; preds = %product_id_to_soc_id.exit
  %call26 = call ptr @soc_device_register(ptr noundef nonnull %call.i74) #5
  %cmp.i77 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call32 = call i32 @exynos_asv_init(ptr noundef %dev, ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %err

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %24, i32 noundef %and.i, i32 noundef %or.i) #8
  br label %cleanup

err:                                              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @soc_device_unregister(ptr noundef %call26) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end35, %if.then28, %do.end, %if.end9.cleanup_crit_edge, %exynos_chipid_get_chipid_info.exit.thread, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %21, %if.then28 ], [ %call32, %err ], [ 0, %if.end35 ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %retval.0.i.ph, %exynos_chipid_get_chipid_info.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_chipid_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @soc_device_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_asv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_exynos_chipid__183_203_exynos_chipid_driver_init6, !1, !"__initcall__kmod_exynos_chipid__183_203_exynos_chipid_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_exynos_chipid_driver_exit, !1, !"__exitcall_exynos_chipid_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 206, i32 1}
!7 = !{ptr @__UNIQUE_ID_author186, !8, !"__UNIQUE_ID_author186", i1 false, i1 false}
!8 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 207, i32 1}
!9 = !{ptr @__UNIQUE_ID_author187, !10, !"__UNIQUE_ID_author187", i1 false, i1 false}
!10 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 208, i32 1}
!11 = !{ptr @__UNIQUE_ID_author188, !12, !"__UNIQUE_ID_author188", i1 false, i1 false}
!12 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 209, i32 1}
!13 = !{ptr @__UNIQUE_ID_file189, !14, !"__UNIQUE_ID_file189", i1 false, i1 false}
!14 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 210, i32 1}
!15 = !{ptr @__UNIQUE_ID_license190, !14, !"__UNIQUE_ID_license190", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 197, i32 11}
!18 = !{ptr @exynos_chipid_driver, !19, !"exynos_chipid_driver", i1 false, i1 false}
!19 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 195, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 126, i32 25}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 128, i32 30}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 129, i32 32}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 133, i32 7}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 136, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exynos_chipid_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_chipid_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 151, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @exynos_chipid_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @exynos_chipid_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 46, i32 4}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 47, i32 4}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 49, i32 4}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 50, i32 4}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 51, i32 4}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 52, i32 4}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 53, i32 4}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 54, i32 4}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 55, i32 4}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 56, i32 4}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 57, i32 4}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 58, i32 4}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 60, i32 4}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 61, i32 4}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 62, i32 4}
!70 = !{ptr @soc_ids, !71, !"soc_ids", i1 false, i1 false}
!71 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 43, i32 3}
!72 = !{ptr @exynos_chipid_of_device_ids, !73, !"exynos_chipid_of_device_ids", i1 false, i1 false}
!73 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 183, i32 34}
!74 = !{ptr @exynos4210_chipid_drv_data, !75, !"exynos4210_chipid_drv_data", i1 false, i1 false}
!75 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 171, i32 43}
!76 = !{ptr @exynos850_chipid_drv_data, !77, !"exynos850_chipid_drv_data", i1 false, i1 false}
!77 = !{!"../drivers/soc/samsung/exynos-chipid.c", i32 177, i32 43}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
