; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-core.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vimc_pipeline_config = type { ptr, i32, ptr, i32 }
%struct.vimc_ent_config = type { ptr, ptr }
%struct.vimc_ent_link = type { i32, i16, i32, i16, i32 }
%struct.vimc_ent_type = type { ptr, ptr, ptr }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }
%struct.vimc_device = type { ptr, ptr, %struct.media_device, %struct.v4l2_device }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }

@vimc_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vimc_probe, ptr @vimc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vimc_pdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vimc_dev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vimc__299_374_vimc_init6 = internal global ptr @vimc_init, section ".initcall6.init", align 4
@__exitcall_vimc_exit = internal global ptr @vimc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [56 x i8] c"vimc.description=Virtual Media Controller Driver (VIMC)\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [56 x i8] c"vimc.author=Helen Fornazier <helen.fornazier@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [47 x i8] c"vimc.file=drivers/media/test-drivers/vimc/vimc\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [17 x i8] c"vimc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vimc\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VGA8x16\00", [24 x i8] zeroinitializer }, align 32
@vimc_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vimc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/test-drivers/vimc/vimc-core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@vimc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not find font\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vimc_probe._entry_ptr = internal global ptr @vimc_probe._entry, section ".printk_index", align 4
@pipe_cfg = internal global { %struct.vimc_pipeline_config, [16 x i8] } { %struct.vimc_pipeline_config { ptr @ent_config, i32 9, ptr @ent_links, i32 8 }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VIMC MDEV\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ent_config = internal global { [9 x %struct.vimc_ent_config], [56 x i8] } { [9 x %struct.vimc_ent_config] [%struct.vimc_ent_config { ptr @.str.10, ptr @vimc_sen_type }, %struct.vimc_ent_config { ptr @.str.11, ptr @vimc_sen_type }, %struct.vimc_ent_config { ptr @.str.12, ptr @vimc_deb_type }, %struct.vimc_ent_config { ptr @.str.13, ptr @vimc_deb_type }, %struct.vimc_ent_config { ptr @.str.14, ptr @vimc_cap_type }, %struct.vimc_ent_config { ptr @.str.15, ptr @vimc_cap_type }, %struct.vimc_ent_config { ptr @.str.16, ptr @vimc_sen_type }, %struct.vimc_ent_config { ptr @.str.17, ptr @vimc_sca_type }, %struct.vimc_ent_config { ptr @.str.18, ptr @vimc_cap_type }], [56 x i8] zeroinitializer }, align 32
@ent_links = internal constant { [8 x %struct.vimc_ent_link], [32 x i8] } { [8 x %struct.vimc_ent_link] [%struct.vimc_ent_link { i32 0, i16 0, i32 2, i16 0, i32 3 }, %struct.vimc_ent_link { i32 0, i16 0, i32 4, i16 0, i32 3 }, %struct.vimc_ent_link { i32 1, i16 0, i32 3, i16 0, i32 3 }, %struct.vimc_ent_link { i32 1, i16 0, i32 5, i16 0, i32 3 }, %struct.vimc_ent_link { i32 2, i16 1, i32 7, i16 0, i32 1 }, %struct.vimc_ent_link { i32 3, i16 1, i32 7, i16 0, i32 0 }, %struct.vimc_ent_link { i32 6, i16 0, i32 7, i16 0, i32 0 }, %struct.vimc_ent_link { i32 7, i16 1, i32 8, i16 0, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor A\00", [23 x i8] zeroinitializer }, align 32
@vimc_sen_type = external dso_local global %struct.vimc_ent_type, align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor B\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Debayer A\00", [22 x i8] zeroinitializer }, align 32
@vimc_deb_type = external dso_local global %struct.vimc_ent_type, align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Debayer B\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Raw Capture 0\00", [18 x i8] zeroinitializer }, align 32
@vimc_cap_type = external dso_local global %struct.vimc_ent_type, align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Raw Capture 1\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RGB/YUV Input\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Scaler\00", [25 x i8] zeroinitializer }, align 32
@vimc_sca_type = external dso_local global %struct.vimc_ent_type, align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RGB/YUV Capture\00", [16 x i8] zeroinitializer }, align 32
@vimc_register_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 213, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"v4l2 device register failed (err=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vimc_register_devices\00", [42 x i8] zeroinitializer }, align 32
@vimc_register_devices._entry_ptr = internal global ptr @vimc_register_devices._entry, section ".printk_index", align 4
@vimc_register_devices._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 238, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"media device register failed (err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@vimc_register_devices._entry_ptr.23 = internal global ptr @vimc_register_devices._entry.21, section ".printk_index", align 4
@vimc_register_devices._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vimc subdev nodes registration failed (err=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@vimc_register_devices._entry_ptr.26 = internal global ptr @vimc_register_devices._entry.24, section ".printk_index", align 4
@vimc_add_subdevs.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vimc_add_subdevs\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new entity for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@vimc_add_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"adding entity %s failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@vimc_add_subdevs._entry_ptr = internal global ptr @vimc_add_subdevs._entry, section ".printk_index", align 4
@vimc_remove.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vimc_remove\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@vimc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"platform device registration failed (err=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vimc_init\00", [22 x i8] zeroinitializer }, align 32
@vimc_init._entry_ptr = internal global ptr @vimc_init._entry, section ".printk_index", align 4
@vimc_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"platform driver registration failed (err=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@vimc_init._entry_ptr.36 = internal global ptr @vimc_init._entry.34, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"vimc_pdrv\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 337, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"vimc_pdev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 332, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 341, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 268, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 272, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 275, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"pipe_cfg\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 108, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 291, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 294, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"ent_config\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 49, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"ent_links\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 89, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 51, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 55, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 59, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 63, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 67, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 71, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 76, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 80, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 84, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 212, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 237, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 245, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 176, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 183, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 318, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 351, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [47 x i8] c"../drivers/media/test-drivers/vimc/vimc-core.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 358, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_vimc_exit, ptr @__initcall__kmod_vimc__299_374_vimc_init6, ptr @vimc_add_subdevs._entry, ptr @vimc_add_subdevs._entry_ptr, ptr @vimc_exit, ptr @vimc_init._entry, ptr @vimc_init._entry.34, ptr @vimc_init._entry_ptr, ptr @vimc_init._entry_ptr.36, ptr @vimc_probe._entry, ptr @vimc_probe._entry_ptr, ptr @vimc_register_devices._entry, ptr @vimc_register_devices._entry.21, ptr @vimc_register_devices._entry.24, ptr @vimc_register_devices._entry_ptr, ptr @vimc_register_devices._entry_ptr.23, ptr @vimc_register_devices._entry_ptr.26, ptr @vimc_pdrv, ptr @vimc_pdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pipe_cfg, ptr @.str.8, ptr @.str.9, ptr @ent_config, ptr @ent_links, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_pdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ent_config to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ent_links to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_register_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_register_devices._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_register_devices._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_add_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vimc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @vimc_pdrv) #9
  tail call void @platform_device_unregister(ptr noundef nonnull @vimc_pdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @vimc_pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.platform_device, ptr @vimc_pdev, i32 0, i32 3), ptr noundef nonnull @.str.32, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vimc_pdrv, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.platform_device, ptr @vimc_pdev, i32 0, i32 3), ptr noundef nonnull @.str.35, i32 noundef %call1) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @vimc_pdrv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_font(ptr noundef nonnull @.str.1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.font_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @tpg_set_font(ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 744) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pipe_cfg, ptr %call7.i.i, align 8
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 2
  %mdev15 = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %mdev15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mdev, ptr %mdev15, align 4
  %model = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %call17 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.8, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str)
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev21, ptr %mdev, align 8
  tail call void @media_device_init(ptr noundef %mdev) #9
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %v4l2_dev.i = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call i32 @v4l2_device_register(ptr noundef %7, ptr noundef %v4l2_dev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %vimc_register_devices.exit.thread54

vimc_register_devices.exit.thread54:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %call.i) #12
  br label %if.then27

if.end.i:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %num_ents.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_ents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ents.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #9
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !102

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ent_devs84.i = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ent_devs84.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ent_devs84.i, align 4
  br label %vimc_register_devices.exit.thread58

if.end7.i.i.i:                                    ; preds = %if.end.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #14
  %ent_devs.i = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i.i, ptr %ent_devs.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.vimc_register_devices.exit.thread58_crit_edge, label %if.end7.i

if.end7.i.i.i.vimc_register_devices.exit.thread58_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_register_devices.exit.thread58

if.end7.i:                                        ; preds = %if.end7.i.i.i
  %call8.i = tail call fastcc i32 @vimc_add_subdevs(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.vimc_register_devices.exit_crit_edge

if.end7.i.vimc_register_devices.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_register_devices.exit

if.end11.i:                                       ; preds = %if.end7.i
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %num_links22.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %num_links22.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_links22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp23.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp23.not.i.i, label %if.end11.i.if.end15.i_crit_edge, label %if.end11.i.for.body.i.i_crit_edge

if.end11.i.for.body.i.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body.i.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.024.i.i, 1
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %num_links.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_links.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_links.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %26
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end15.i_crit_edge

for.cond.i.i.if.end15.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end11.i.for.body.i.i_crit_edge
  %27 = phi ptr [ %24, %for.cond.i.i.for.body.i.i_crit_edge ], [ %20, %if.end11.i.for.body.i.i_crit_edge ]
  %i.024.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.i.for.body.i.i_crit_edge ]
  %links.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %links.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %links.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vimc_ent_link, ptr %29, i32 %i.024.i.i
  %30 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ent_devs.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx2.i.i, align 4
  %sink_ent.i.i = getelementptr %struct.vimc_ent_link, ptr %29, i32 %i.024.i.i, i32 2
  %36 = ptrtoint ptr %sink_ent.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sink_ent.i.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %31, i32 %37
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx4.i.i, align 4
  %ent.i.i = getelementptr inbounds %struct.vimc_ent_device, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %ent.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ent.i.i, align 4
  %src_pad.i.i = getelementptr %struct.vimc_ent_link, ptr %29, i32 %i.024.i.i, i32 1
  %42 = ptrtoint ptr %src_pad.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %src_pad.i.i, align 4
  %ent5.i.i = getelementptr inbounds %struct.vimc_ent_device, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %ent5.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ent5.i.i, align 4
  %sink_pad.i.i = getelementptr %struct.vimc_ent_link, ptr %29, i32 %i.024.i.i, i32 3
  %46 = ptrtoint ptr %sink_pad.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sink_pad.i.i, align 4
  %flags.i.i = getelementptr %struct.vimc_ent_link, ptr %29, i32 %i.024.i.i, i32 4
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i, align 4
  %call.i.i = tail call i32 @media_create_pad_link(ptr noundef %41, i16 noundef zeroext %43, ptr noundef %45, i16 noundef zeroext %47, i32 noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %err_rm_links.i.i

err_rm_links.i.i:                                 ; preds = %for.body.i.i
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %num_ents4.i.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %num_ents4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ents4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp5.not.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp5.not.i.i.i, label %err_rm_links.i.i.err_rm_subdevs.i_crit_edge, label %err_rm_links.i.i.for.body.i.i.i_crit_edge

err_rm_links.i.i.for.body.i.i.i_crit_edge:        ; preds = %err_rm_links.i.i
  br label %for.body.i.i.i

err_rm_links.i.i.err_rm_subdevs.i_crit_edge:      ; preds = %err_rm_links.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_subdevs.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %err_rm_links.i.i.for.body.i.i.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %err_rm_links.i.i.for.body.i.i.i_crit_edge ]
  %54 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ent_devs.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %55, i32 %i.06.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %ent.i.i.i = getelementptr inbounds %struct.vimc_ent_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ent.i.i.i, align 4
  tail call void @media_entity_remove_links(ptr noundef %59) #9
  %inc.i.i.i = add nuw i32 %i.06.i.i.i, 1
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %num_ents.i.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %num_ents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_ents.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %63
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.err_rm_subdevs.i_crit_edge

for.body.i.i.i.err_rm_subdevs.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_subdevs.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

if.end15.i:                                       ; preds = %for.cond.i.i.if.end15.i_crit_edge, %if.end11.i.if.end15.i_crit_edge
  %call17.i = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end25.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22, i32 noundef %call17.i) #12
  br label %err_rm_subdevs.i

if.end25.i:                                       ; preds = %if.end15.i
  %call.i64.i = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool28.not.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end29_crit_edge, label %do.end32.i

if.end25.i.if.end29_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.25, i32 noundef %call.i64.i) #12
  tail call void @media_device_unregister(ptr noundef %mdev) #9
  br label %err_rm_subdevs.i

err_rm_subdevs.i:                                 ; preds = %do.end32.i, %do.end22.i, %for.body.i.i.i.err_rm_subdevs.i_crit_edge, %err_rm_links.i.i.err_rm_subdevs.i_crit_edge
  %ret.0.i = phi i32 [ %call17.i, %do.end22.i ], [ %call.i64.i, %do.end32.i ], [ %call.i.i, %err_rm_links.i.i.err_rm_subdevs.i_crit_edge ], [ %call.i.i, %for.body.i.i.i.err_rm_subdevs.i_crit_edge ]
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  %num_ents21.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %num_ents21.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_ents21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp22.not.i.i = icmp eq i32 %71, 0
  br i1 %cmp22.not.i.i, label %err_rm_subdevs.i.vimc_unregister_subdevs.exit.i_crit_edge, label %err_rm_subdevs.i.for.body.i69.i_crit_edge

err_rm_subdevs.i.for.body.i69.i_crit_edge:        ; preds = %err_rm_subdevs.i
  br label %for.body.i69.i

err_rm_subdevs.i.vimc_unregister_subdevs.exit.i_crit_edge: ; preds = %err_rm_subdevs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit.i

for.body.i69.i:                                   ; preds = %for.inc.i.i.for.body.i69.i_crit_edge, %err_rm_subdevs.i.for.body.i69.i_crit_edge
  %72 = phi ptr [ %84, %for.inc.i.i.for.body.i69.i_crit_edge ], [ %69, %err_rm_subdevs.i.for.body.i69.i_crit_edge ]
  %i.023.i.i = phi i32 [ %inc.i70.i, %for.inc.i.i.for.body.i69.i_crit_edge ], [ 0, %err_rm_subdevs.i.for.body.i69.i_crit_edge ]
  %73 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ent_devs.i, align 4
  %arrayidx.i67.i = getelementptr ptr, ptr %74, i32 %i.023.i.i
  %75 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i67.i, align 4
  %tobool.not.i68.i = icmp eq ptr %76, null
  br i1 %tobool.not.i68.i, label %for.body.i69.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i69.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i69.i
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %72, align 4
  %type.i.i = getelementptr %struct.vimc_ent_config, ptr %78, i32 %i.023.i.i, i32 1
  %79 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %type.i.i, align 4
  %unregister.i.i = getelementptr inbounds %struct.vimc_ent_type, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %unregister.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %unregister.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %82, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %82(ptr noundef nonnull %76) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i69.i.for.inc.i.i_crit_edge
  %inc.i70.i = add nuw i32 %i.023.i.i, 1
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call7.i.i, align 8
  %num_ents.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %num_ents.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_ents.i.i, align 4
  %cmp.i71.i = icmp ult i32 %inc.i70.i, %86
  br i1 %cmp.i71.i, label %for.inc.i.i.for.body.i69.i_crit_edge, label %for.inc.i.i.vimc_unregister_subdevs.exit.i_crit_edge

for.inc.i.i.vimc_unregister_subdevs.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit.i

for.inc.i.i.for.body.i69.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i69.i

vimc_unregister_subdevs.exit.i:                   ; preds = %for.inc.i.i.vimc_unregister_subdevs.exit.i_crit_edge, %err_rm_subdevs.i.vimc_unregister_subdevs.exit.i_crit_edge
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %num_ents12.i.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %num_ents12.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_ents12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp13.not.i.i = icmp eq i32 %90, 0
  br i1 %cmp13.not.i.i, label %vimc_unregister_subdevs.exit.i.vimc_register_devices.exit_crit_edge, label %vimc_unregister_subdevs.exit.i.for.body.i76.i_crit_edge

vimc_unregister_subdevs.exit.i.for.body.i76.i_crit_edge: ; preds = %vimc_unregister_subdevs.exit.i
  br label %for.body.i76.i

vimc_unregister_subdevs.exit.i.vimc_register_devices.exit_crit_edge: ; preds = %vimc_unregister_subdevs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_register_devices.exit

for.body.i76.i:                                   ; preds = %for.inc.i82.i.for.body.i76.i_crit_edge, %vimc_unregister_subdevs.exit.i.for.body.i76.i_crit_edge
  %91 = phi ptr [ %103, %for.inc.i82.i.for.body.i76.i_crit_edge ], [ %88, %vimc_unregister_subdevs.exit.i.for.body.i76.i_crit_edge ]
  %i.014.i.i = phi i32 [ %inc.i79.i, %for.inc.i82.i.for.body.i76.i_crit_edge ], [ 0, %vimc_unregister_subdevs.exit.i.for.body.i76.i_crit_edge ]
  %92 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ent_devs.i, align 4
  %arrayidx.i74.i = getelementptr ptr, ptr %93, i32 %i.014.i.i
  %94 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i74.i, align 4
  %tobool.not.i75.i = icmp eq ptr %95, null
  br i1 %tobool.not.i75.i, label %for.body.i76.i.for.inc.i82.i_crit_edge, label %if.then.i78.i

for.body.i76.i.for.inc.i82.i_crit_edge:           ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i82.i

if.then.i78.i:                                    ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %91, align 4
  %type.i77.i = getelementptr %struct.vimc_ent_config, ptr %97, i32 %i.014.i.i, i32 1
  %98 = ptrtoint ptr %type.i77.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %type.i77.i, align 4
  %release.i.i = getelementptr inbounds %struct.vimc_ent_type, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %release.i.i, align 4
  tail call void %101(ptr noundef nonnull %95) #9
  br label %for.inc.i82.i

for.inc.i82.i:                                    ; preds = %if.then.i78.i, %for.body.i76.i.for.inc.i82.i_crit_edge
  %inc.i79.i = add nuw i32 %i.014.i.i, 1
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %num_ents.i80.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %num_ents.i80.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_ents.i80.i, align 4
  %cmp.i81.i = icmp ult i32 %inc.i79.i, %105
  br i1 %cmp.i81.i, label %for.inc.i82.i.for.body.i76.i_crit_edge, label %for.inc.i82.i.vimc_register_devices.exit_crit_edge

for.inc.i82.i.vimc_register_devices.exit_crit_edge: ; preds = %for.inc.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_register_devices.exit

for.inc.i82.i.for.body.i76.i_crit_edge:           ; preds = %for.inc.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i76.i

vimc_register_devices.exit.thread58:              ; preds = %if.end7.i.i.i.vimc_register_devices.exit.thread58_crit_edge, %kcalloc.exit.thread.i
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #9
  br label %if.then27

vimc_register_devices.exit:                       ; preds = %for.inc.i82.i.vimc_register_devices.exit_crit_edge, %vimc_unregister_subdevs.exit.i.vimc_register_devices.exit_crit_edge, %if.end7.i.vimc_register_devices.exit_crit_edge
  %ret.1.i = phi i32 [ %call8.i, %if.end7.i.vimc_register_devices.exit_crit_edge ], [ %ret.0.i, %vimc_unregister_subdevs.exit.i.vimc_register_devices.exit_crit_edge ], [ %ret.0.i, %for.inc.i82.i.vimc_register_devices.exit_crit_edge ]
  %106 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ent_devs.i, align 4
  tail call void @kfree(ptr noundef %107) #9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool26.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool26.not, label %vimc_register_devices.exit.if.end29_crit_edge, label %vimc_register_devices.exit.if.then27_crit_edge

vimc_register_devices.exit.if.then27_crit_edge:   ; preds = %vimc_register_devices.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

vimc_register_devices.exit.if.end29_crit_edge:    ; preds = %vimc_register_devices.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %vimc_register_devices.exit.if.then27_crit_edge, %vimc_register_devices.exit.thread58, %vimc_register_devices.exit.thread54
  %retval.0.i5057 = phi i32 [ %call.i, %vimc_register_devices.exit.thread54 ], [ %ret.1.i, %vimc_register_devices.exit.if.then27_crit_edge ], [ -12, %vimc_register_devices.exit.thread58 ]
  tail call void @media_device_cleanup(ptr noundef %mdev) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end29:                                         ; preds = %vimc_register_devices.exit.if.end29_crit_edge, %if.end25.i.if.end29_crit_edge
  %release = getelementptr inbounds %struct.vimc_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %108 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @vimc_v4l2_dev_release, ptr %release, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then27, %if.end10.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %retval.0.i5057, %if.then27 ], [ 0, %if.end29 ], [ -19, %do.end8 ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_remove.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_remove.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %num_ents21.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_ents21.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ents21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not.i = icmp eq i32 %5, 0
  br i1 %cmp22.not.i, label %do.end.vimc_unregister_subdevs.exit_crit_edge, label %for.body.lr.ph.i

do.end.vimc_unregister_subdevs.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %ent_devs.i = getelementptr inbounds %struct.vimc_device, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi ptr [ %3, %for.body.lr.ph.i ], [ %18, %for.inc.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ent_devs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.023.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %type.i = getelementptr %struct.vimc_ent_config, ptr %12, i32 %i.023.i, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %unregister.i = getelementptr inbounds %struct.vimc_ent_type, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %unregister.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unregister.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef nonnull %10) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.023.i, 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %num_ents.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_ents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ents.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vimc_unregister_subdevs.exit_crit_edge

for.inc.i.vimc_unregister_subdevs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vimc_unregister_subdevs.exit:                     ; preds = %for.inc.i.vimc_unregister_subdevs.exit_crit_edge, %do.end.vimc_unregister_subdevs.exit_crit_edge
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %1, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev) #9
  %v4l2_dev = getelementptr inbounds %struct.vimc_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %call5 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_set_font(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_v4l2_dev_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -616
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %num_ents12.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ents12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ents12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.vimc_release_subdevs.exit_crit_edge, label %for.body.lr.ph.i

entry.vimc_release_subdevs.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_release_subdevs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ent_devs.i = getelementptr i8, ptr %v4l2_dev, i32 -612
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %16, %for.inc.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %ent_devs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ent_devs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.014.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %type.i = getelementptr %struct.vimc_ent_config, ptr %10, i32 %i.014.i, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %release.i = getelementptr inbounds %struct.vimc_ent_type, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release.i, align 4
  tail call void %14(ptr noundef nonnull %8) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %num_ents.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %num_ents.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ents.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vimc_release_subdevs.exit_crit_edge

for.inc.i.vimc_release_subdevs.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_release_subdevs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vimc_release_subdevs.exit:                        ; preds = %for.inc.i.vimc_release_subdevs.exit_crit_edge, %entry.vimc_release_subdevs.exit_crit_edge
  %mdev = getelementptr i8, ptr %v4l2_dev, i32 -608
  tail call void @media_device_cleanup(ptr noundef %mdev) #9
  %ent_devs = getelementptr i8, ptr %v4l2_dev, i32 -612
  %19 = ptrtoint ptr %ent_devs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ent_devs, align 4
  tail call void @kfree(ptr noundef %20) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vimc_add_subdevs(ptr noundef %vimc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vimc, align 8
  %num_ents70 = getelementptr inbounds %struct.vimc_pipeline_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ents70 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ents70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp71.not = icmp eq i32 %3, 0
  br i1 %cmp71.not, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %ent_devs = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.072 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_add_subdevs.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_add_subdevs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %6 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vimc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx = getelementptr %struct.vimc_ent_config, ptr %9, i32 %i.072
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_add_subdevs.__UNIQUE_ID_ddebug296, ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %12 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vimc, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %arrayidx6 = getelementptr %struct.vimc_ent_config, ptr %15, i32 %i.072
  %type = getelementptr %struct.vimc_ent_config, ptr %15, i32 %i.072, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6, align 4
  %call11 = tail call ptr %19(ptr noundef %vimc, ptr noundef %21) #9
  %22 = ptrtoint ptr %ent_devs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ent_devs, align 4
  %arrayidx12 = getelementptr ptr, ptr %23, i32 %i.072
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %arrayidx12, align 4
  %25 = load ptr, ptr %ent_devs, align 4
  %arrayidx14 = getelementptr ptr, ptr %25, i32 %i.072
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14, align 4
  %cmp.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %for.inc

if.then16:                                        ; preds = %do.end
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev, align 8
  %31 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vimc, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %arrayidx27 = getelementptr %struct.vimc_ent_config, ptr %34, i32 %i.072
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.29, ptr noundef %36, i32 noundef %28) #12
  %37 = ptrtoint ptr %ent_devs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ent_devs, align 4
  %arrayidx30 = getelementptr ptr, ptr %38, i32 %i.072
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx30, align 4
  %40 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vimc, align 8
  %num_ents21.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %num_ents21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ents21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp22.not.i = icmp eq i32 %43, 0
  br i1 %cmp22.not.i, label %if.then16.vimc_unregister_subdevs.exit_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.vimc_unregister_subdevs.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %44 = phi ptr [ %56, %for.inc.i.for.body.i_crit_edge ], [ %41, %if.then16.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %ent_devs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ent_devs, align 4
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %i.023.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %44, align 4
  %type.i = getelementptr %struct.vimc_ent_config, ptr %50, i32 %i.023.i, i32 1
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %type.i, align 4
  %unregister.i = getelementptr inbounds %struct.vimc_ent_type, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %unregister.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unregister.i, align 4
  %tobool3.not.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %54(ptr noundef nonnull %48) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.023.i, 1
  %55 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vimc, align 8
  %num_ents.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %num_ents.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ents.i, align 4
  %cmp.i55 = icmp ult i32 %inc.i, %58
  br i1 %cmp.i55, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vimc_unregister_subdevs.exit_crit_edge

for.inc.i.vimc_unregister_subdevs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vimc_unregister_subdevs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vimc_unregister_subdevs.exit:                     ; preds = %for.inc.i.vimc_unregister_subdevs.exit_crit_edge, %if.then16.vimc_unregister_subdevs.exit_crit_edge
  %59 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vimc, align 8
  %num_ents12.i = getelementptr inbounds %struct.vimc_pipeline_config, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %num_ents12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_ents12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp13.not.i = icmp eq i32 %62, 0
  br i1 %cmp13.not.i, label %vimc_unregister_subdevs.exit.cleanup_crit_edge, label %vimc_unregister_subdevs.exit.for.body.i60_crit_edge

vimc_unregister_subdevs.exit.for.body.i60_crit_edge: ; preds = %vimc_unregister_subdevs.exit
  br label %for.body.i60

vimc_unregister_subdevs.exit.cleanup_crit_edge:   ; preds = %vimc_unregister_subdevs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i60:                                     ; preds = %for.inc.i66.for.body.i60_crit_edge, %vimc_unregister_subdevs.exit.for.body.i60_crit_edge
  %63 = phi ptr [ %75, %for.inc.i66.for.body.i60_crit_edge ], [ %60, %vimc_unregister_subdevs.exit.for.body.i60_crit_edge ]
  %i.014.i = phi i32 [ %inc.i63, %for.inc.i66.for.body.i60_crit_edge ], [ 0, %vimc_unregister_subdevs.exit.for.body.i60_crit_edge ]
  %64 = ptrtoint ptr %ent_devs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ent_devs, align 4
  %arrayidx.i58 = getelementptr ptr, ptr %65, i32 %i.014.i
  %66 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i58, align 4
  %tobool.not.i59 = icmp eq ptr %67, null
  br i1 %tobool.not.i59, label %for.body.i60.for.inc.i66_crit_edge, label %if.then.i62

for.body.i60.for.inc.i66_crit_edge:               ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i66

if.then.i62:                                      ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 4
  %type.i61 = getelementptr %struct.vimc_ent_config, ptr %69, i32 %i.014.i, i32 1
  %70 = ptrtoint ptr %type.i61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %type.i61, align 4
  %release.i = getelementptr inbounds %struct.vimc_ent_type, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %release.i, align 4
  tail call void %73(ptr noundef nonnull %67) #9
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.then.i62, %for.body.i60.for.inc.i66_crit_edge
  %inc.i63 = add nuw i32 %i.014.i, 1
  %74 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vimc, align 8
  %num_ents.i64 = getelementptr inbounds %struct.vimc_pipeline_config, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %num_ents.i64 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ents.i64, align 4
  %cmp.i65 = icmp ult i32 %inc.i63, %77
  br i1 %cmp.i65, label %for.inc.i66.for.body.i60_crit_edge, label %for.inc.i66.cleanup_crit_edge

for.inc.i66.cleanup_crit_edge:                    ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i66.for.body.i60_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i60

for.inc:                                          ; preds = %do.end
  %inc = add nuw i32 %i.072, 1
  %78 = ptrtoint ptr %vimc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vimc, align 8
  %num_ents = getelementptr inbounds %struct.vimc_pipeline_config, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %num_ents to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_ents, align 4
  %cmp = icmp ult i32 %inc, %81
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.i66.cleanup_crit_edge, %vimc_unregister_subdevs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %vimc_unregister_subdevs.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %28, %for.inc.i66.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_remove_links(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vimc_dev_release(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_vimc__299_374_vimc_init6, !1, !"__initcall__kmod_vimc__299_374_vimc_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_vimc_exit, !3, !"__exitcall_vimc_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 375, i32 1}
!4 = !{ptr @__UNIQUE_ID_description300, !5, !"__UNIQUE_ID_description300", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 377, i32 1}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 378, i32 1}
!8 = !{ptr @__UNIQUE_ID_file302, !9, !"__UNIQUE_ID_file302", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 379, i32 1}
!10 = !{ptr @__UNIQUE_ID_license303, !9, !"__UNIQUE_ID_license303", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 341, i32 11}
!13 = !{ptr @vimc_pdrv, !14, !"vimc_pdrv", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 337, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 268, i32 43}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 272, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vimc_probe.__UNIQUE_ID_ddebug297, !18, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 275, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vimc_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @vimc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 291, i32 28}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 294, i32 4}
!32 = !{ptr @pipe_cfg, !33, !"pipe_cfg", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 108, i32 36}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 51, i32 11}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 55, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 59, i32 11}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 63, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 67, i32 11}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 71, i32 11}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 76, i32 11}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 80, i32 11}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 84, i32 11}
!52 = !{ptr @ent_config, !53, !"ent_config", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 49, i32 31}
!54 = !{ptr @ent_links, !55, !"ent_links", i1 false, i1 false}
!55 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 89, i32 35}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 212, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vimc_register_devices._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @vimc_register_devices._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 237, i32 3}
!63 = !{ptr @vimc_register_devices._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vimc_register_devices._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 245, i32 3}
!67 = !{ptr @vimc_register_devices._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vimc_register_devices._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 176, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @vimc_add_subdevs.__UNIQUE_ID_ddebug296, !70, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 183, i32 4}
!75 = !{ptr @vimc_add_subdevs._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vimc_add_subdevs._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 318, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vimc_remove.__UNIQUE_ID_ddebug298, !78, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!81 = !{ptr @vimc_pdev, !82, !"vimc_pdev", i1 false, i1 false}
!82 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 332, i32 31}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 351, i32 3}
!85 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @vimc_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @vimc_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/test-drivers/vimc/vimc-core.c", i32 358, i32 3}
!90 = !{ptr @vimc_init._entry.34, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vimc_init._entry_ptr.36, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148962121, i64 2148962126, i64 2148962139, i64 2148962183, i64 2148962217, i64 2148962238}
!102 = !{!"branch_weights", i32 1, i32 2000}
