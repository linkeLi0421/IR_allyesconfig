; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-meson-spifc.c_pt.bc'
source_filename = "../drivers/spi/spi-meson-spifc.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.meson_spifc = type { ptr, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_meson_spifc__236_453_meson_spifc_driver_init6 = internal global ptr @meson_spifc_driver_init, section ".initcall6.init", align 4
@meson_spifc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_spifc_probe, ptr @meson_spifc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_spifc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_spifc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_spifc_driver_exit = internal global ptr @meson_spifc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [63 x i8] c"spi_meson_spifc.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [55 x i8] c"spi_meson_spifc.description=Amlogic Meson SPIFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [49 x i8] c"spi_meson_spifc.file=drivers/spi/spi-meson-spifc\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [31 x i8] c"spi_meson_spifc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"meson-spifc\00", [20 x i8] zeroinitializer }, align 32
@meson_spifc_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-spifc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-spifc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@meson_spifc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_spifc_suspend, ptr @meson_spifc_resume, ptr @meson_spifc_suspend, ptr @meson_spifc_resume, ptr @meson_spifc_suspend, ptr @meson_spifc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_spifc_runtime_suspend, ptr @meson_spifc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_spifc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@spifc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 124, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"spi_meson_spifc:309:(&spifc_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@meson_spifc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missing clock\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_spifc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/spi/spi-meson-spifc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_spifc_probe._entry_ptr = internal global ptr @meson_spifc_probe._entry, section ".printk_index", align 4
@meson_spifc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't prepare clock\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_spifc_probe._entry_ptr.9 = internal global ptr @meson_spifc_probe._entry.7, section ".printk_index", align 4
@meson_spifc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register spi master\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_spifc_probe._entry_ptr.12 = internal global ptr @meson_spifc_probe._entry.10, section ".printk_index", align 4
@meson_spifc_setup_speed.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_meson_spifc\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_spifc_setup_speed\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parent %lu, speed %u, n %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"meson_spifc_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 443, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 447, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"meson_spifc_dt_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 436, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"meson_spifc_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 429, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"spifc_regmap_config\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 82, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 308, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 317, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 324, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 345, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [33 x i8] c"../drivers/spi/spi-meson-spifc.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 173, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_meson_spifc_driver_exit, ptr @__initcall__kmod_spi_meson_spifc__236_453_meson_spifc_driver_init6, ptr @meson_spifc_driver_exit, ptr @meson_spifc_probe._entry, ptr @meson_spifc_probe._entry.10, ptr @meson_spifc_probe._entry.7, ptr @meson_spifc_probe._entry_ptr, ptr @meson_spifc_probe._entry_ptr.12, ptr @meson_spifc_probe._entry_ptr.9, ptr @meson_spifc_driver, ptr @.str, ptr @meson_spifc_dt_match, ptr @meson_spifc_pm_ops, ptr @meson_spifc_probe._key, ptr @spifc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spifc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spifc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_spifc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_spifc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_spifc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 16, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i98 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i98 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i98, align 4
  %dev3 = getelementptr inbounds %struct.meson_spifc, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev3, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  br label %spi_controller_put.exit

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %call10 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %6, ptr noundef null, ptr noundef %call4, ptr noundef nonnull @spifc_regmap_config, ptr noundef nonnull @meson_spifc_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.meson_spifc, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i99 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call10 to i32
  br label %spi_controller_put.exit

if.end16:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  %call18 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %clk, align 4
  %cmp.i100 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #9
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end16
  %call.i101 = tail call i32 @clk_prepare(ptr noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call18) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i101, %if.end25.do.end32_crit_edge ]
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8) #9
  br label %spi_controller_put.exit

if.end34:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call36 = tail call i32 @clk_get_rate(ptr noundef %20) #6
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %num_chipselect, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node39 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %24 = ptrtoint ptr %of_node39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node39, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %bits_per_word_mask, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %26 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %27 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @meson_spifc_transfer_one, ptr %transfer_one, align 4
  %shr = lshr i32 %call36, 6
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %min_speed_hz, align 4
  %shr40 = lshr i32 %call36, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr40, ptr %max_speed_hz, align 8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 48, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 28, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 48, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev3, align 4
  %call.i102 = tail call i32 @__pm_runtime_set_status(ptr noundef %37, i32 noundef 0) #6
  %38 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev3, align 4
  tail call void @pm_runtime_enable(ptr noundef %39) #6
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  %call45 = tail call i32 @devm_spi_register_controller(ptr noundef %41, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end34.cleanup_crit_edge, label %do.end50

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.11) #9
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %45) #6
  tail call void @clk_unprepare(ptr noundef %45) #6
  %46 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %47, i1 noundef zeroext true) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %do.end50, %do.end32, %do.end, %if.then13, %if.then6
  %ret.0 = phi i32 [ %4, %if.then6 ], [ %8, %if.then13 ], [ %16, %do.end ], [ %retval.0.i.ph, %do.end32 ], [ %call45, %do.end50 ]
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i6, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  %data.i65.i = alloca i32, align 4
  %data.i59.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  %clk.i = getelementptr inbounds %struct.meson_spifc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %div.i = udiv i32 %call.i, %3
  %sub.i = add i32 %div.i, -1
  %6 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_spifc_setup_speed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_spifc_transfer_one, %meson_spifc_setup_speed.exit)) #6
          to label %if.then.i [label %meson_spifc_setup_speed.exit], !srcloc !53

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.meson_spifc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_spifc_setup_speed.__UNIQUE_ID_ddebug233, ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %call.i, i32 noundef %3, i32 noundef %6) #6
  br label %meson_spifc_setup_speed.exit

meson_spifc_setup_speed.exit:                     ; preds = %if.then.i, %entry
  %shl.i = shl i32 %6, 12
  %and.i = and i32 %shl.i, 258048
  %and7.i = and i32 %6, 63
  %or.i = or i32 %and.i, %and7.i
  %add.i = add nuw i32 %6, 1
  %div8.i = sdiv i32 %add.i, 2
  %sub9.i = shl i32 %div8.i, 6
  %shl10.i = add i32 %sub9.i, 4032
  %and11.i = and i32 %shl10.i, 4032
  %or12.i = or i32 %or.i, %and11.i
  %regmap.i = getelementptr inbounds %struct.meson_spifc, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 24, i32 noundef %or12.i) #6
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8, i32 noundef 131072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %13 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp38.not = icmp eq i32 %14, 0
  br i1 %cmp38.not, label %meson_spifc_setup_speed.exit.while.end_crit_edge, label %while.body.lr.ph

meson_spifc_setup_speed.exit.while.end_crit_edge: ; preds = %meson_spifc_setup_speed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %meson_spifc_setup_speed.exit
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %meson_spifc_txrx.exit.while.body_crit_edge, %while.body.lr.ph
  %15 = phi i32 [ %14, %while.body.lr.ph ], [ %69, %meson_spifc_txrx.exit.while.body_crit_edge ]
  %done.039 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %meson_spifc_txrx.exit.while.body_crit_edge ]
  %sub = sub i32 %15, %done.039
  %16 = call i32 @llvm.smin.i32(i32 %sub, i32 64)
  %17 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_msg.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_list.i, align 4
  %cmp.i.i = icmp eq ptr %20, %18
  %add = add i32 %16, %done.039
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp7.not = icmp ult i32 %add, %15
  %21 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfer, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %if.then.i31

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i31:                                      ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i)
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12.i.i = icmp sgt i32 %sub, 0
  br i1 %cmp12.i.i, label %while.body.lr.ph.i.i, label %if.then.i31.meson_spifc_fill_buffer.exit.i_crit_edge

if.then.i31.meson_spifc_fill_buffer.exit.i_crit_edge: ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_spifc_fill_buffer.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i31
  %add.ptr.i = getelementptr i8, ptr %22, i32 %done.039
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %i.015.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add3.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %buf.addr.013.i.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %16, %i.015.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp1.i.i = icmp sgt i32 %sub.i.i, 3
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %buf.addr.013.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf.addr.013.i.i, align 4
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call ptr @memcpy(ptr %data.i.i, ptr %buf.addr.013.i.i, i32 %sub.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %add.i.i = add nuw nsw i32 %i.015.i.i, 64
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %data.i.i.0.data.i.i.0.data.i.0.data.i.0.data.0.data.0.data.0..i.i = load i32, ptr %data.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %29, i32 noundef %add.i.i, i32 noundef %data.i.i.0.data.i.i.0.data.i.0.data.i.0.data.0.data.0.data.0..i.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.013.i.i, i32 4
  %add3.i.i = add nuw nsw i32 %i.015.i.i, 4
  %cmp.i.i32 = icmp slt i32 %add3.i.i, %16
  br i1 %cmp.i.i32, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.meson_spifc_fill_buffer.exit.i_crit_edge

if.end.i.i.meson_spifc_fill_buffer.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_spifc_fill_buffer.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

meson_spifc_fill_buffer.exit.i:                   ; preds = %if.end.i.i.meson_spifc_fill_buffer.exit.i_crit_edge, %if.then.i31.meson_spifc_fill_buffer.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i)
  br label %if.end.i

if.end.i:                                         ; preds = %meson_spifc_fill_buffer.exit.i, %while.body.if.end.i_crit_edge
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i54.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 28, i32 noundef -134217728, i32 noundef 134217728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %16, 20
  %shl.i34 = add i32 %mul.i, -131072
  %call4.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 32, i32 noundef %shl.i34) #6
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i55.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 28, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %cmp7.not, label %if.end21.thread.i, label %if.then8.i

if.end21.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  br label %43

if.then8.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %40 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool11.not.i = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp.i.i, label %if.then10.i, label %if.end21.i

if.then10.i:                                      ; preds = %if.then8.i
  br i1 %tobool11.not.i, label %if.then10.i._crit_edge, label %if.then10.i._crit_edge61

if.then10.i._crit_edge61:                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %43

if.then10.i._crit_edge:                           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %45

if.end21.i:                                       ; preds = %if.then8.i
  br i1 %tobool11.not.i, label %if.end21.i._crit_edge, label %if.end21.i._crit_edge62

if.end21.i._crit_edge62:                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %45

if.end21.i._crit_edge:                            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %43

43:                                               ; preds = %if.end21.i._crit_edge, %if.then10.i._crit_edge61, %if.end21.thread.i
  %44 = phi ptr [ %38, %if.end21.thread.i ], [ %42, %if.end21.i._crit_edge ], [ %42, %if.then10.i._crit_edge61 ]
  br label %45

45:                                               ; preds = %43, %if.end21.i._crit_edge62, %if.then10.i._crit_edge
  %46 = phi ptr [ %44, %43 ], [ %42, %if.end21.i._crit_edge62 ], [ %42, %if.then10.i._crit_edge ]
  %47 = phi i32 [ 1073741824, %43 ], [ 0, %if.end21.i._crit_edge62 ], [ 0, %if.then10.i._crit_edge ]
  %call.i56.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 44, i32 noundef 1073741824, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %call.i57.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 48, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i58.i = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 0, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.i60.i = add i32 %52, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i59.i) #6
  %53 = ptrtoint ptr %data.i59.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %data.i59.i, align 4, !annotation !54
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i64.i.do.body.i.i_crit_edge, %45
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 48, ptr noundef nonnull %data.i59.i) #6
  %56 = ptrtoint ptr %data.i59.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data.i59.i, align 4
  %and.i.i = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i64.i, label %land.lhs.true.i

if.end.i64.i:                                     ; preds = %do.body.i.i
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 103, i32 noundef 0) #6
  %call.i.i.i = call i32 @__cond_resched() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i62.i = sub i32 %add.i60.i, %58
  %cmp.i63.i = icmp sgt i32 %sub.i62.i, -1
  br i1 %cmp.i63.i, label %if.end.i64.i.do.body.i.i_crit_edge, label %meson_spifc_txrx.exit.thread

if.end.i64.i.do.body.i.i_crit_edge:               ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

meson_spifc_txrx.exit.thread:                     ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i59.i) #6
  br label %while.end

land.lhs.true.i:                                  ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i59.i) #6
  %59 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buf.i, align 4
  %tobool31.not.i = icmp eq ptr %60, null
  br i1 %tobool31.not.i, label %land.lhs.true.i.meson_spifc_txrx.exit_crit_edge, label %if.then32.i

land.lhs.true.i.meson_spifc_txrx.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_spifc_txrx.exit

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i65.i) #6
  %61 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %data.i65.i, align 4, !annotation !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp13.i.i = icmp sgt i32 %sub, 0
  br i1 %cmp13.i.i, label %while.body.i73.preheader.i, label %if.then32.i.meson_spifc_drain_buffer.exit.i_crit_edge

if.then32.i.meson_spifc_drain_buffer.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_spifc_drain_buffer.exit.i

while.body.i73.preheader.i:                       ; preds = %if.then32.i
  %add.ptr34.i = getelementptr i8, ptr %60, i32 %done.039
  br label %while.body.i73.i

while.body.i73.i:                                 ; preds = %if.then.i77.i.while.body.i73.i_crit_edge, %while.body.i73.preheader.i
  %i.015.i68.i = phi i32 [ %add3.i75.i, %if.then.i77.i.while.body.i73.i_crit_edge ], [ 0, %while.body.i73.preheader.i ]
  %buf.addr.014.i.i = phi ptr [ %add.ptr.i74.i, %if.then.i77.i.while.body.i73.i_crit_edge ], [ %add.ptr34.i, %while.body.i73.preheader.i ]
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %add.i69.i = add nuw nsw i32 %i.015.i68.i, 64
  %call.i70.i = call i32 @regmap_read(ptr noundef %63, i32 noundef %add.i69.i, ptr noundef nonnull %data.i65.i) #6
  %sub.i71.i = sub nsw i32 %16, %i.015.i68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i71.i)
  %cmp1.i72.i = icmp sgt i32 %sub.i71.i, 3
  br i1 %cmp1.i72.i, label %if.then.i77.i, label %if.else.i78.i

if.then.i77.i:                                    ; preds = %while.body.i73.i
  %64 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data.i65.i, align 4
  %66 = ptrtoint ptr %buf.addr.014.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %buf.addr.014.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %buf.addr.014.i.i, i32 4
  %add3.i75.i = add nuw nsw i32 %i.015.i68.i, 4
  %cmp.i76.i = icmp slt i32 %add3.i75.i, %16
  br i1 %cmp.i76.i, label %if.then.i77.i.while.body.i73.i_crit_edge, label %if.then.i77.i.meson_spifc_drain_buffer.exit.i_crit_edge

if.then.i77.i.meson_spifc_drain_buffer.exit.i_crit_edge: ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_spifc_drain_buffer.exit.i

if.then.i77.i.while.body.i73.i_crit_edge:         ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i73.i

if.else.i78.i:                                    ; preds = %while.body.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = call ptr @memcpy(ptr %buf.addr.014.i.i, ptr %data.i65.i, i32 %sub.i71.i)
  br label %meson_spifc_drain_buffer.exit.i

meson_spifc_drain_buffer.exit.i:                  ; preds = %if.else.i78.i, %if.then.i77.i.meson_spifc_drain_buffer.exit.i_crit_edge, %if.then32.i.meson_spifc_drain_buffer.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i65.i) #6
  br label %meson_spifc_txrx.exit

meson_spifc_txrx.exit:                            ; preds = %meson_spifc_drain_buffer.exit.i, %land.lhs.true.i.meson_spifc_txrx.exit_crit_edge
  %68 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add)
  %cmp = icmp ule i32 %69, %add
  %70 = or i1 %tobool.not.i.i, %cmp
  br i1 %70, label %meson_spifc_txrx.exit.while.end_crit_edge, label %meson_spifc_txrx.exit.while.body_crit_edge

meson_spifc_txrx.exit.while.body_crit_edge:       ; preds = %meson_spifc_txrx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

meson_spifc_txrx.exit.while.end_crit_edge:        ; preds = %meson_spifc_txrx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %meson_spifc_txrx.exit.while.end_crit_edge, %meson_spifc_txrx.exit.thread, %meson_spifc_setup_speed.exit.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %meson_spifc_setup_speed.exit.while.end_crit_edge ], [ -110, %meson_spifc_txrx.exit.thread ], [ 0, %meson_spifc_txrx.exit.while.end_crit_edge ]
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 4
  %call.i35 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 8, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then4_crit_edge

pm_runtime_suspended.exit.if.then4_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end5_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i20 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i20, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge
  %regmap.i = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 48, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 28, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 48, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %clk9 = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %clk9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk9, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.then8 ], [ %8, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call6, %if.then8 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spifc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.meson_spifc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_spi_meson_spifc__236_453_meson_spifc_driver_init6, !1, !"__initcall__kmod_spi_meson_spifc__236_453_meson_spifc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-meson-spifc.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_meson_spifc_driver_exit, !1, !"__exitcall_meson_spifc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-meson-spifc.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-meson-spifc.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-meson-spifc.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-meson-spifc.c", i32 447, i32 12}
!12 = !{ptr @meson_spifc_driver, !13, !"meson_spifc_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-meson-spifc.c", i32 443, i32 31}
!14 = !{ptr @meson_spifc_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-meson-spifc.c", i32 308, i32 18}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-meson-spifc.c", i32 317, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @meson_spifc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @meson_spifc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-meson-spifc.c", i32 324, i32 3}
!27 = !{ptr @meson_spifc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @meson_spifc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-meson-spifc.c", i32 345, i32 3}
!31 = !{ptr @meson_spifc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @meson_spifc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @spifc_regmap_config, !34, !"spifc_regmap_config", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-meson-spifc.c", i32 82, i32 35}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-meson-spifc.c", i32 173, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @meson_spifc_setup_speed.__UNIQUE_ID_ddebug233, !36, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!40 = !{ptr @meson_spifc_dt_match, !41, !"meson_spifc_dt_match", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-meson-spifc.c", i32 436, i32 34}
!42 = !{ptr @meson_spifc_pm_ops, !43, !"meson_spifc_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-meson-spifc.c", i32 429, i32 32}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148731156, i64 2148731161, i64 2148731174, i64 2148731218, i64 2148731252, i64 2148731273}
!54 = !{!"auto-init"}
