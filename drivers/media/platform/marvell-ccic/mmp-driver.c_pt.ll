; ModuleID = '/llk/IR_all_yes/drivers/media/platform/marvell-ccic/mmp-driver.c_pt.bc'
source_filename = "../drivers/media/platform/marvell-ccic/mmp-driver.c"
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
%struct.mmp_camera = type { ptr, %struct.mcam_camera, %struct.list_head, ptr, i32 }
%struct.mcam_camera = type { ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, ptr, i8, i32, [3 x ptr], %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, i32, i32, %struct.mcam_frame_state, %struct.video_device, %struct.v4l2_async_notifier, ptr, %struct.vb2_queue, %struct.list_head, i32, i32, [32 x i8], i32, [3 x ptr], [3 x i32], %struct.tasklet_struct, i32, [3 x i32], [3 x ptr], ptr, ptr, %struct.v4l2_pix_format, i32, %struct.mutex }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mcam_frame_state = type { i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.101, i32 }
%union.anon.101 = type { ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.mmp_camera_platform_data = type { i32, i32, i32, [3 x i32], i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_alias299 = internal constant [37 x i8] c"mmp_camera.alias=platform:mmp-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [51 x i8] c"mmp_camera.author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [63 x i8] c"mmp_camera.file=drivers/media/platform/marvell-ccic/mmp_camera\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [23 x i8] c"mmp_camera.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_mmp_camera__305_382_mmpcam_driver_init6 = internal global ptr @mmpcam_driver_init, section ".initcall6.init", align 4
@mmpcam_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmpcam_probe, ptr @mmpcam_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmpcam_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmpcam_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmpcam_driver_exit = internal global ptr @mmpcam_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp-camera\00", [21 x i8] zeroinitializer }, align 32
@mmpcam_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-ccic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmpcam_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmpcam_runtime_suspend, ptr @mmpcam_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:mmp-camera\00", [44 x i8] zeroinitializer }, align 32
@mmpcam_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mcam->dev_lock\00", [16 x i8] zeroinitializer }, align 32
@mmpcam_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 265, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't add DT clock provider\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmpcam_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/marvell-ccic/mmp-driver.c\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmpcam_probe._entry_ptr = internal global ptr @mmpcam_probe._entry, section ".printk_index", align 4
@mmpcam_calc_dphy.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmp_camera\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmpcam_calc_dphy\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"camera: use the default CSI2_DPHY3 value\0A\00", [54 x i8] zeroinitializer }, align 32
@mmpcam_calc_dphy.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.12, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"camera: DPHY sets: dphy3=0x%x, dphy5=0x%x, dphy6=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@mcam_init_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 171, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not get clk: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcam_init_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mcam_init_clk._entry_ptr = internal global ptr @mcam_init_clk._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"mmpcam_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 372, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 376, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"mmpcam_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 366, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"mmpcam_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 361, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 221, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 222, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 265, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 115, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 143, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 170, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 35, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 35, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [52 x i8] c"../drivers/media/platform/marvell-ccic/mmp-driver.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 35, i32 44 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_mmpcam_driver_exit, ptr @__initcall__kmod_mmp_camera__305_382_mmpcam_driver_init6, ptr @mcam_init_clk._entry, ptr @mcam_init_clk._entry_ptr, ptr @mmpcam_driver_exit, ptr @mmpcam_probe._entry, ptr @mmpcam_probe._entry_ptr, ptr @mmpcam_driver, ptr @.str, ptr @mmpcam_of_match, ptr @mmpcam_pm_ops, ptr @.str.1, ptr @.str.2, ptr @mmpcam_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpcam_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpcam_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpcam_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpcam_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpcam_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_init_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmpcam_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmpcam_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmpcam_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2688, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 8
  %devlist = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %devlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %devlist, ptr %devlist, align 4
  %prev.i = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %devlist, ptr %prev.i, align 4
  %mcam2 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1
  %calc_dphy = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %calc_dphy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mmpcam_calc_dphy, ptr %calc_dphy, align 4
  %dev4 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev4, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mclk_src = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_src, align 4
  %mclk_src7 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %mclk_src7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mclk_src7, align 8
  %mclk_div = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %mclk_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_div, align 4
  %mclk_div8 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %mclk_div8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mclk_div8, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %bus_type9 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %bus_type9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bus_type9, align 8
  %dphy = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %7, i32 0, i32 3
  %dphy10 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %dphy10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dphy, ptr %dphy10, align 4
  %lane = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %lane to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lane, align 4
  %lane11 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 11
  %20 = ptrtoint ptr %lane11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %lane11, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mclk_src12 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %mclk_src12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %mclk_src12, align 8
  %mclk_div13 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 7
  %22 = ptrtoint ptr %mclk_div13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %mclk_div13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  %bus_type15 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %bus_type15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_type15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp16 = icmp eq i32 %24, 5
  br i1 %cmp16, label %if.then17, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then17:                                        ; preds = %if.end14
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev4, align 4
  %call19 = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef nonnull @.str.1) #5
  %mipi_clk = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %mipi_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call19, ptr %mipi_clk, align 8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then17
  %dphy22 = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %dphy22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dphy22, align 4
  %arrayidx = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp23 = icmp eq i32 %31, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.then17.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %mipi_enabled = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %mipi_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mipi_enabled, align 8
  %chip_id = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %chip_id, align 8
  %buffer_mode = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %buffer_mode, align 4
  %bus_info = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 30
  %call30 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.2, i32 noundef 32) #5
  %dev_lock = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mmpcam_probe.__key, i16 noundef signext 3) #5
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call32) #5
  %36 = ptrtoint ptr %mcam2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %mcam2, align 8
  %cmp.i150 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %end.i = getelementptr inbounds %struct.resource, ptr %call32, i32 0, i32 1
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end.i, align 4
  %40 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call32, align 4
  %sub.i = add i32 %39, 1
  %add.i = sub i32 %sub.i, %41
  %regs_size = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %regs_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %regs_size, align 4
  %43 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev4, align 4
  %call.i151 = tail call ptr @devm_clk_get(ptr noundef %44, ptr noundef nonnull @.str.16) #5
  %arrayidx3.i = getelementptr %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 12
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i151, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end40.for.inc.i_crit_edge

if.end40.for.inc.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.end40.for.inc.i_crit_edge
  %48 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev4, align 4
  %call.1.i = tail call ptr @devm_clk_get(ptr noundef %49, ptr noundef nonnull @.str.17) #5
  %arrayidx3.1.i = getelementptr %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 12, i32 1
  %50 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.1.i, ptr %arrayidx3.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %do.end.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %53 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev4, align 4
  %call.2.i = tail call ptr @devm_clk_get(ptr noundef %54, ptr noundef nonnull @.str.18) #5
  %arrayidx3.2.i = getelementptr %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 12, i32 2
  %55 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.2.i, ptr %arrayidx3.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %do.end.2.i, label %for.inc.1.i.mcam_init_clk.exit_crit_edge

for.inc.1.i.mcam_init_clk.exit_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcam_init_clk.exit

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #8
  br label %mcam_init_clk.exit

mcam_init_clk.exit:                               ; preds = %do.end.2.i, %for.inc.1.i.mcam_init_clk.exit_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %tobool43.not = icmp eq ptr %59, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %59, i32 0, i32 3
  %spec.select = select i1 %tobool43.not, ptr null, ptr %fwnode
  %call44 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %spec.select, ptr noundef null) #5
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %mcam_init_clk.exit.cleanup_crit_edge, label %if.end47

mcam_init_clk.exit.cleanup_crit_edge:             ; preds = %mcam_init_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %mcam_init_clk.exit
  %notifier = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 24
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #5
  %call49 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef nonnull %call44, i32 noundef 28) #5
  tail call void @fwnode_handle_put(ptr noundef nonnull %call44) #5
  %cmp.i152 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %call49 to i32
  br label %out

if.end53:                                         ; preds = %if.end47
  %call54 = tail call i32 @mccic_register(ptr noundef %mcam2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %61 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node, align 8
  %mclk = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 1, i32 14
  %63 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mclk, align 8
  %call60 = tail call i32 @of_clk_add_provider(ptr noundef %62, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %out

if.end67:                                         ; preds = %if.end57
  %call68 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #5
  %cmp69 = icmp eq ptr %call68, null
  br i1 %cmp69, label %if.end67.out_crit_edge, label %if.end71

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end71:                                         ; preds = %if.end67
  %65 = ptrtoint ptr %call68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call68, align 4
  %irq = getelementptr inbounds %struct.mmp_camera, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %irq, align 4
  %call.i153 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %66, ptr noundef nonnull @mmpcam_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %mcam2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool75.not = icmp eq i32 %call.i153, 0
  br i1 %tobool75.not, label %if.end77, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

out:                                              ; preds = %if.end71.out_crit_edge, %if.end67.out_crit_edge, %do.end65, %if.then51
  %ret.0 = phi i32 [ %60, %if.then51 ], [ %call60, %do.end65 ], [ %call.i153, %if.end71.out_crit_edge ], [ -19, %if.end67.out_crit_edge ]
  tail call void @mccic_shutdown(ptr noundef %mcam2) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end77, %if.end53.cleanup_crit_edge, %mcam_init_clk.exit.cleanup_crit_edge, %if.then37, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.then24 ], [ %37, %if.then37 ], [ %ret.0, %out ], [ 0, %if.end77 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %mcam_init_clk.exit.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_platform_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mcam1.i = getelementptr inbounds %struct.mmp_camera, ptr %1, i32 0, i32 1
  tail call void @mccic_shutdown(ptr noundef %mcam1.i) #5
  %dev.i = getelementptr inbounds %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @pm_runtime_force_suspend(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmpcam_calc_dphy(ptr nocapture noundef readonly %mcam) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mcam, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %dphy3_algo = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dphy3_algo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dphy3_algo, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lane_clk = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %lane_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lane_clk, align 4
  %mul = mul i32 %8, 80
  %div = sdiv i32 %mul, 1000
  %add = shl nsw i32 %div, 8
  %and = add nsw i32 %add, 256
  %shl = and i32 %and, 65280
  %mul5 = mul i32 %8, 35
  %div6 = sdiv i32 %mul5, 1000
  %add7 = add nsw i32 %div6, 1
  %or = or i32 %shl, %add7
  %dphy = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %dphy, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lane_clk9 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %lane_clk9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lane_clk9, align 4
  %mul10 = mul i32 %11, 110
  %div11 = sdiv i32 %mul10, 1000
  %add12 = shl nsw i32 %div11, 8
  %and13 = add nsw i32 %add12, 512
  %shl14 = and i32 %and13, 65280
  %mul16 = mul i32 %11, 35
  %div17 = sdiv i32 %mul16, 1000
  %add18 = add nsw i32 %div17, 1
  %or19 = or i32 %shl14, %add18
  %dphy20 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dphy20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or19, ptr %dphy20, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmpcam_calc_dphy.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmpcam_calc_dphy, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !64

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmpcam_calc_dphy.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb8, %sw.bb
  %mipi_clk = getelementptr i8, ptr %mcam, i32 2672
  %13 = ptrtoint ptr %mipi_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mipi_clk, align 8
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.clk_prepare_enable.exit_crit_edge

if.end27.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end27.clk_prepare_enable.exit_crit_edge
  %15 = ptrtoint ptr %mipi_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mipi_clk, align 8
  %call31 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %div33 = udiv i32 %call31, 12000000
  %17 = ptrtoint ptr %mipi_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mipi_clk, align 8
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  %mul35 = mul nuw nsw i32 %div33, 534
  %div36 = udiv i32 %mul35, 2000
  %sub = shl nuw nsw i32 %div36, 8
  %and37 = add nuw nsw i32 %sub, 65280
  %shl38 = and i32 %and37, 65280
  %19 = trunc i32 %div33 to i16
  %div40.lhs.trunc = mul nuw nsw i16 %19, 38
  %div4093 = udiv i16 %div40.lhs.trunc, 1000
  %narrow = add nuw nsw i16 %div4093, 255
  %20 = and i16 %narrow, 255
  %and42 = zext i16 %20 to i32
  %or43 = or i32 %shl38, %and42
  %arrayidx45 = getelementptr %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or43, ptr %arrayidx45, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmpcam_calc_dphy.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmpcam_calc_dphy, %if.then58)) #5
          to label %cleanup [label %if.then58], !srcloc !64

if.then58:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dphy44 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %dphy44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dphy44, align 4
  %arrayidx62 = getelementptr %struct.mmp_camera_platform_data, ptr %3, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62, align 4
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmpcam_calc_dphy.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %23, i32 noundef %25, i32 noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %clk_prepare_enable.exit, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %data, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %dev_lock) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %call1 = tail call i32 @mccic_irq(ptr noundef %data, i32 noundef %3) #5
  tail call void @_raw_spin_unlock(ptr noundef %dev_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %mcam = getelementptr inbounds %struct.mmp_camera, ptr %1, i32 0, i32 1
  tail call void @mccic_suspend(ptr noundef %mcam) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_suspended.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %mcam = getelementptr inbounds %struct.mmp_camera, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mccic_resume(ptr noundef %mcam) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 0
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmpcam_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i, %if.end.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.i.1:                                       ; preds = %if.then.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.for.inc.1_crit_edge, label %if.then3.i.1

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.i.1, %if.end.i.1.for.inc.1_crit_edge, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mmp_camera, ptr %1, i32 0, i32 1, i32 12, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.i.2:                                       ; preds = %if.then.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.for.inc.2_crit_edge, label %if.then3.i.2

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.i.2, %if.end.i.2.for.inc.2_crit_edge, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_alias299, !1, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_author300, !3, !"__UNIQUE_ID_author300", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file301, !5, !"__UNIQUE_ID_file301", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license302, !5, !"__UNIQUE_ID_license302", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_mmp_camera__305_382_mmpcam_driver_init6, !8, !"__initcall__kmod_mmp_camera__305_382_mmpcam_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 382, i32 1}
!9 = !{ptr @__exitcall_mmpcam_driver_exit, !8, !"__exitcall_mmpcam_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 376, i32 11}
!12 = !{ptr @mmpcam_driver, !13, !"mmpcam_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 372, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 214, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 221, i32 26}
!18 = !{ptr @mmpcam_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 222, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 265, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mmpcam_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @mmpcam_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 115, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mmpcam_calc_dphy.__UNIQUE_ID_ddebug303, !30, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 143, i32 2}
!36 = !{ptr @mmpcam_calc_dphy.__UNIQUE_ID_ddebug304, !35, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 170, i32 5}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mcam_init_clk._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @mcam_init_clk._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 35, i32 29}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 35, i32 36}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 35, i32 44}
!49 = distinct !{null, !50, !"mcam_clks", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 35, i32 14}
!51 = !{ptr @mmpcam_of_match, !52, !"mmpcam_of_match", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 366, i32 34}
!53 = !{ptr @mmpcam_pm_ops, !54, !"mmpcam_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/marvell-ccic/mmp-driver.c", i32 361, i32 32}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148699185, i64 2148699190, i64 2148699203, i64 2148699247, i64 2148699281, i64 2148699302}
!65 = !{i64 4623980}
!66 = !{i64 2152164329}
