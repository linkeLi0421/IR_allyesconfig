; ModuleID = '/llk/IR_all_yes/drivers/media/platform/video-mux.c_pt.bc'
source_filename = "../drivers/media/platform/video-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.video_mux = type { %struct.v4l2_subdev, %struct.v4l2_async_notifier, ptr, ptr, ptr, %struct.mutex, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_video_mux__297_514_video_mux_driver_init6 = internal global ptr @video_mux_driver_init, section ".initcall6.init", align 4
@video_mux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @video_mux_probe, ptr @video_mux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @video_mux_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_video_mux_driver_exit = internal global ptr @video_mux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [47 x i8] c"video_mux.description=video stream multiplexer\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [43 x i8] c"video_mux.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [44 x i8] c"video_mux.author=Philipp Zabel, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [48 x i8] c"video_mux.file=drivers/media/platform/video-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [22 x i8] c"video_mux.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video-mux\00", [22 x i8] zeroinitializer }, align 32
@video_mux_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"video-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@video_mux_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @video_mux_subdev_video_ops, ptr null, ptr null, ptr null, ptr @video_mux_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@video_mux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not enough ports %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"video_mux_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/platform/video-mux.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@video_mux_probe._entry_ptr = internal global ptr @video_mux_probe._entry, section ".printk_index", align 4
@video_mux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get mux: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@video_mux_probe._entry_ptr.9 = internal global ptr @video_mux_probe._entry.7, section ".printk_index", align 4
@video_mux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vmux->lock\00", [20 x i8] zeroinitializer }, align 32
@video_mux_format_mbus_default = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 1, i32 1, i32 8193, i32 1, i32 0, %union.anon.91 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@video_mux_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr @v4l2_subdev_get_fwnode_pad_1_to_1, ptr @video_mux_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@video_mux_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_mux_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@video_mux_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @video_mux_init_cfg, ptr null, ptr null, ptr null, ptr @video_mux_get_format, ptr @video_mux_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@video_mux_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can not start streaming on inactive mux\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_mux_s_stream\00", [45 x i8] zeroinitializer }, align 32
@video_mux_s_stream._entry_ptr = internal global ptr @video_mux_s_stream._entry, section ".printk_index", align 4
@video_mux_s_stream._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to find remote source pad\0A\00", [62 x i8] zeroinitializer }, align 32
@video_mux_s_stream._entry_ptr.15 = internal global ptr @video_mux_s_stream._entry.13, section ".printk_index", align 4
@video_mux_s_stream._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Upstream entity is not a v4l2 subdev\0A\00", [58 x i8] zeroinitializer }, align 32
@video_mux_s_stream._entry_ptr.18 = internal global ptr @video_mux_s_stream._entry.16, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@video_mux_link_setup.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"video_mux_link_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"link setup '%s':%d->'%s':%d[%d]\00", [32 x i8] zeroinitializer }, align 32
@video_mux_link_setup.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setting %d active\0A\00", [45 x i8] zeroinitializer }, align 32
@video_mux_link_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.24, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"going inactive\0A\00", [16 x i8] zeroinitializer }, align 32
@video_mux_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @video_mux_notify_bound, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [90 x i64] [i64 88, i64 32, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4102, i64 4103, i64 4104, i64 4105, i64 4106, i64 4107, i64 4108, i64 4109, i64 4110, i64 4111, i64 4115, i64 4116, i64 4117, i64 4118, i64 4119, i64 4120, i64 4121, i64 4122, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 8208, i64 8209, i64 8210, i64 8211, i64 8212, i64 8213, i64 8214, i64 8215, i64 8216, i64 8217, i64 8218, i64 8219, i64 8220, i64 8221, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8232, i64 8233, i64 8234, i64 8235, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12313, i64 12314, i64 12315, i64 12316, i64 12317, i64 12318, i64 12319, i64 12320, i64 16385, i64 24577]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"video_mux_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 505, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 510, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"video_mux_dt_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 499, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"video_mux_subdev_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 339, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 422, i32 57 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 438, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 446, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 450, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"video_mux_format_mbus_default\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 33, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"video_mux_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 104, i32 45 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"video_mux_subdev_video_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 137, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"video_mux_pad_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 333, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 117, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 123, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 128, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 998, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 67, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 94, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"video_mux_notify_ops\00", align 1
@___asan_gen_.125 = private constant [38 x i8] c"../drivers/media/platform/video-mux.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 353, i32 52 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_video_mux_driver_exit, ptr @__initcall__kmod_video_mux__297_514_video_mux_driver_init6, ptr @video_mux_driver_exit, ptr @video_mux_probe._entry, ptr @video_mux_probe._entry.7, ptr @video_mux_probe._entry_ptr, ptr @video_mux_probe._entry_ptr.9, ptr @video_mux_s_stream._entry, ptr @video_mux_s_stream._entry.13, ptr @video_mux_s_stream._entry.16, ptr @video_mux_s_stream._entry_ptr, ptr @video_mux_s_stream._entry_ptr.15, ptr @video_mux_s_stream._entry_ptr.18, ptr @video_mux_driver, ptr @.str, ptr @video_mux_dt_ids, ptr @video_mux_subdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @video_mux_probe.__key, ptr @.str.10, ptr @video_mux_format_mbus_default, ptr @video_mux_ops, ptr @video_mux_subdev_video_ops, ptr @video_mux_pad_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @video_mux_notify_ops], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_format_mbus_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_s_stream._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_s_stream._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mux_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @video_mux_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @video_mux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @video_mux_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %endpoint = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef nonnull %call.i, ptr noundef nonnull @video_mux_subdev_ops) #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %1)
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 4
  store i32 %or, ptr %flags, align 4
  %dev7 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev7, align 4
  %call8 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef null) #7
  %cmp.not144 = icmp eq ptr %call8, null
  br i1 %cmp.not144, label %if.end.do.end_crit_edge, label %for.body.lr.ph

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end
  %6 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint, i32 0, i32 1
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %num_pads.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %13, %for.body.for.body_crit_edge ]
  %ep.0145 = phi ptr [ %call8, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint) #7
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %endpoint, align 4, !annotation !82
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %6, align 4, !annotation !82
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !82
  %call9 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep.0145, ptr noundef nonnull %endpoint) #7
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endpoint, align 4
  %add = add i32 %12, 1
  %13 = call i32 @llvm.umax.i32(i32 %num_pads.0146, i32 %add)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint) #7
  %call11 = call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef nonnull %ep.0145) #7
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp12 = icmp ult i32 %13, 2
  br i1 %cmp12, label %for.end.do.end_crit_edge, label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %num_pads.0.lcssa151 = phi i32 [ %13, %for.end.do.end_crit_edge ], [ 0, %if.end.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %num_pads.0.lcssa151) #10
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %call15 = call ptr @devm_mux_control_get(ptr noundef %dev, ptr noundef null) #7
  %mux = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %mux, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %do.body28

if.then18:                                        ; preds = %if.end14
  %cmp21.not = icmp eq ptr %call15, inttoptr (i32 -517 to ptr)
  br i1 %cmp21.not, label %if.then18.cleanup_crit_edge, label %do.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %15) #10
  br label %cleanup

do.body28:                                        ; preds = %if.end14
  %lock = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @video_mux_probe.__key) #7
  %active = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %active, align 4
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 32) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !83

devm_kcalloc.exit.thread:                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %pads136 = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %pads136 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pads136, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.body28
  %20 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %20, i32 noundef 3520) #7
  %pads = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %pads to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %pads, align 4
  %tobool33.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool33.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end35

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %devm_kcalloc.exit
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 48) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit133.thread, label %devm_kcalloc.exit133, !prof !83

devm_kcalloc.exit133.thread:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus139 = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %format_mbus139 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %format_mbus139, align 4
  br label %cleanup

devm_kcalloc.exit133:                             ; preds = %if.end35
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i130 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %25, i32 noundef 3520) #7
  %format_mbus = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %format_mbus to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i130, ptr %format_mbus, align 4
  %tobool38.not = icmp eq ptr %call5.i.i130, null
  br i1 %tobool38.not, label %devm_kcalloc.exit133.cleanup_crit_edge, label %for.body43.preheader

devm_kcalloc.exit133.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body43.preheader:                             ; preds = %devm_kcalloc.exit133
  %sub = add nsw i32 %13, -1
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.preheader
  %i.0148 = phi i32 [ %inc, %for.body43.for.body43_crit_edge ], [ 0, %for.body43.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0148, i32 %sub)
  %cmp44 = icmp ult i32 %i.0148, %sub
  %cond45 = select i1 %cmp44, i32 1, i32 2
  %27 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pads, align 4
  %flags47 = getelementptr %struct.media_pad, ptr %28, i32 %i.0148, i32 4
  %29 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond45, ptr %flags47, align 4
  %30 = ptrtoint ptr %format_mbus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format_mbus, align 4
  %arrayidx49 = getelementptr %struct.v4l2_mbus_framefmt, ptr %31, i32 %i.0148
  %32 = call ptr @memcpy(ptr %arrayidx49, ptr @video_mux_format_mbus_default, i32 48)
  %inc = add nuw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.end51, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.end51:                                        ; preds = %for.body43
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20481, ptr %function, align 4
  %conv = trunc i32 %13 to i16
  %34 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pads, align 4
  %call56 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext %conv, ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %for.end51.cleanup_crit_edge, label %if.end60

for.end51.cleanup_crit_edge:                      ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %for.end51
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @video_mux_ops, ptr %ops, align 4
  %notifier.i = getelementptr inbounds %struct.video_mux, ptr %call.i, i32 0, i32 1
  call void @v4l2_async_nf_init(ptr noundef %notifier.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp48.not.i = icmp eq i32 %sub, 0
  br i1 %cmp48.not.i, label %if.end60.for.end.i_crit_edge, label %if.end60.for.body.i_crit_edge

if.end60.for.body.i_crit_edge:                    ; preds = %if.end60
  br label %for.body.i

if.end60.for.end.i_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end60.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end60.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev7, align 4
  %call.i134 = call ptr @dev_fwnode(ptr noundef %38) #7
  %call1.i = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call.i134, i32 noundef %i.049.i, i32 noundef 0, i32 noundef 1) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call2.i = call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %call1.i) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i
  call void @fwnode_handle_put(ptr noundef nonnull %call2.i) #7
  %call7.i = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier.i, ptr noundef nonnull %call1.i, i32 noundef 28) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #7
  %cmp.i.i = icmp ule ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %cmp11.not.i = icmp eq ptr %call7.i, inttoptr (i32 -17 to ptr)
  %or.cond.i = or i1 %cmp.i.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.end5.i.for.inc.i_crit_edge, label %cleanup26.loopexit.i

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end60.for.end.i_crit_edge
  %39 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @video_mux_notify_ops, ptr %notifier.i, align 4
  %call20.i = call i32 @v4l2_async_subdev_nf_register(ptr noundef nonnull %call.i, ptr noundef %notifier.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %for.end.i.if.then66_crit_edge

for.end.i.if.then66_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

if.end23.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #7
  br label %video_mux_async_register.exit

cleanup26.loopexit.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call7.i to i32
  br label %video_mux_async_register.exit

video_mux_async_register.exit:                    ; preds = %cleanup26.loopexit.i, %if.end23.i
  %retval.2.i = phi i32 [ %call25.i, %if.end23.i ], [ %40, %cleanup26.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool65.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool65.not, label %video_mux_async_register.exit.cleanup_crit_edge, label %video_mux_async_register.exit.if.then66_crit_edge

video_mux_async_register.exit.if.then66_crit_edge: ; preds = %video_mux_async_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

video_mux_async_register.exit.cleanup_crit_edge:  ; preds = %video_mux_async_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66:                                        ; preds = %video_mux_async_register.exit.if.then66_crit_edge, %for.end.i.if.then66_crit_edge
  %retval.2.i143 = phi i32 [ %retval.2.i, %video_mux_async_register.exit.if.then66_crit_edge ], [ %call20.i, %for.end.i.if.then66_crit_edge ]
  call void @v4l2_async_nf_unregister(ptr noundef %notifier.i) #7
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %video_mux_async_register.exit.cleanup_crit_edge, %for.end51.cleanup_crit_edge, %devm_kcalloc.exit133.cleanup_crit_edge, %devm_kcalloc.exit133.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end25, %if.then18.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %15, %do.end25 ], [ -517, %if.then18.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit133.cleanup_crit_edge ], [ %call56, %for.end51.cleanup_crit_edge ], [ %retval.2.i143, %if.then66 ], [ 0, %video_mux_async_register.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit133.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.video_mux, ptr %1, i32 0, i32 1
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 9
  %4 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pads, align 4
  %arrayidx = getelementptr %struct.media_pad, ptr %5, i32 %1
  %call2 = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %entity9 = getelementptr inbounds %struct.media_pad, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %entity9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity9, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end8.do.end14_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.end8
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %if.else, label %is_media_entity_v4l2_subdev.exit.do.end14_crit_edge

is_media_entity_v4l2_subdev.exit.do.end14_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end14:                                         ; preds = %is_media_entity_v4l2_subdev.exit.do.end14_crit_edge, %if.end8.do.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %if.else27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else27:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool28.not = icmp eq ptr %20, null
  br i1 %tobool28.not, label %if.else27.if.else35_crit_edge, label %land.lhs.true29

if.else27.if.else35_crit_edge:                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

land.lhs.true29:                                  ; preds = %if.else27
  %s_stream30 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream30, align 4
  %tobool31.not = icmp eq ptr %22, null
  br i1 %tobool31.not, label %land.lhs.true29.if.else35_crit_edge, label %if.then32

land.lhs.true29.if.else35_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 %22(ptr noundef nonnull %9, i32 noundef %enable) #7
  br label %cleanup

if.else35:                                        ; preds = %land.lhs.true29.if.else35_crit_edge, %if.else27.if.else35_crit_edge
  %call39 = tail call i32 %19(ptr noundef nonnull %9, i32 noundef %enable) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.then32, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %do.end14 ], [ -67, %do.end6 ], [ %call34, %if.then32 ], [ %call39, %if.else35 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_init_cfg(ptr noundef %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.v4l2_subdev_get_try_format.exit_crit_edge

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  br label %v4l2_subdev_get_try_format.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

v4l2_subdev_get_try_format.exit:                  ; preds = %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %i.011 = phi i32 [ %inc, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge ], [ 0, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 %i.011
  %4 = call ptr @memcpy(ptr %arrayidx.i, ptr @video_mux_format_mbus_default, i32 48)
  %inc = add nuw nsw i32 %i.011, 1
  %5 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, label %v4l2_subdev_get_try_format.exit.for.end_crit_edge

v4l2_subdev_get_try_format.exit.for.end_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

for.end:                                          ; preds = %v4l2_subdev_get_try_format.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.__video_mux_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

entry.__video_mux_get_pad_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__video_mux_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !84

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i.i
  br label %__video_mux_get_pad_format.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus.i = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 3
  %9 = ptrtoint ptr %format_mbus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %format_mbus.i, align 4
  %arrayidx.i = getelementptr %struct.v4l2_mbus_framefmt, ptr %10, i32 %1
  br label %__video_mux_get_pad_format.exit

__video_mux_get_pad_format.exit:                  ; preds = %sw.bb2.i, %v4l2_subdev_get_try_format.exit.i, %entry.__video_mux_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb2.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__video_mux_get_pad_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pads = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pads, align 4
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad1, align 4
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads, align 4
  %6 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !84

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i
  br label %__video_mux_get_pad_format.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus.i = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 3
  %11 = ptrtoint ptr %format_mbus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format_mbus.i, align 4
  %arrayidx.i = getelementptr %struct.v4l2_mbus_framefmt, ptr %12, i32 %3
  br label %__video_mux_get_pad_format.exit

__video_mux_get_pad_format.exit:                  ; preds = %sw.bb2.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb2.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__video_mux_get_pad_format.exit.cleanup_crit_edge, label %if.end

__video_mux_get_pad_format.exit.cleanup_crit_edge: ; preds = %__video_mux_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__video_mux_get_pad_format.exit
  %sub = add i16 %5, -1
  %conv5 = zext i16 %sub to i32
  %13 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdformat, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb.i75
    i32 1, label %sw.bb2.i82
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i75:                                        ; preds = %if.end
  %16 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %sub)
  %cmp.not.i.i74 = icmp ugt i16 %17, %sub
  br i1 %cmp.not.i.i74, label %sw.bb.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge, label %do.end.i.i76, !prof !84

sw.bb.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge: ; preds = %sw.bb.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i79

do.end.i.i76:                                     ; preds = %sw.bb.i75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i79

v4l2_subdev_get_try_format.exit.i79:              ; preds = %do.end.i.i76, %sw.bb.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge
  %spec.select.i.i77 = phi i32 [ 0, %do.end.i.i76 ], [ %conv5, %sw.bb.i75.v4l2_subdev_get_try_format.exit.i79_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i78 = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i.i77
  br label %__video_mux_get_pad_format.exit84

sw.bb2.i82:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus.i80 = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 3
  %20 = ptrtoint ptr %format_mbus.i80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format_mbus.i80, align 4
  %arrayidx.i81 = getelementptr %struct.v4l2_mbus_framefmt, ptr %21, i32 %conv5
  br label %__video_mux_get_pad_format.exit84

__video_mux_get_pad_format.exit84:                ; preds = %sw.bb2.i82, %v4l2_subdev_get_try_format.exit.i79
  %retval.0.i83 = phi ptr [ %arrayidx.i81, %sw.bb2.i82 ], [ %arrayidx.i.i78, %v4l2_subdev_get_try_format.exit.i79 ]
  %tobool8.not = icmp eq ptr %retval.0.i83, null
  br i1 %tobool8.not, label %__video_mux_get_pad_format.exit84.cleanup_crit_edge, label %if.end10

__video_mux_get_pad_format.exit84.cleanup_crit_edge: ; preds = %__video_mux_get_pad_format.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %__video_mux_get_pad_format.exit84
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 1, i32 noundef 65536, i32 noundef 0, ptr noundef %height, i32 noundef 1, i32 noundef 65536, i32 noundef 0, i32 noundef 0) #7
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %sw.default [
    i32 4118, label %if.end10.sw.epilog_crit_edge
    i32 4097, label %if.end10.sw.epilog_crit_edge89
    i32 4098, label %if.end10.sw.epilog_crit_edge90
    i32 4099, label %if.end10.sw.epilog_crit_edge91
    i32 4100, label %if.end10.sw.epilog_crit_edge92
    i32 4119, label %if.end10.sw.epilog_crit_edge93
    i32 4101, label %if.end10.sw.epilog_crit_edge94
    i32 4102, label %if.end10.sw.epilog_crit_edge95
    i32 4103, label %if.end10.sw.epilog_crit_edge96
    i32 4104, label %if.end10.sw.epilog_crit_edge97
    i32 4105, label %if.end10.sw.epilog_crit_edge98
    i32 4110, label %if.end10.sw.epilog_crit_edge99
    i32 4117, label %if.end10.sw.epilog_crit_edge100
    i32 4115, label %if.end10.sw.epilog_crit_edge101
    i32 4116, label %if.end10.sw.epilog_crit_edge102
    i32 4106, label %if.end10.sw.epilog_crit_edge103
    i32 4107, label %if.end10.sw.epilog_crit_edge104
    i32 4108, label %if.end10.sw.epilog_crit_edge105
    i32 4109, label %if.end10.sw.epilog_crit_edge106
    i32 4111, label %if.end10.sw.epilog_crit_edge107
    i32 4120, label %if.end10.sw.epilog_crit_edge108
    i32 4121, label %if.end10.sw.epilog_crit_edge109
    i32 4122, label %if.end10.sw.epilog_crit_edge110
    i32 8193, label %if.end10.sw.epilog_crit_edge111
    i32 8213, label %if.end10.sw.epilog_crit_edge112
    i32 8194, label %if.end10.sw.epilog_crit_edge113
    i32 8195, label %if.end10.sw.epilog_crit_edge114
    i32 8196, label %if.end10.sw.epilog_crit_edge115
    i32 8197, label %if.end10.sw.epilog_crit_edge116
    i32 8198, label %if.end10.sw.epilog_crit_edge117
    i32 8199, label %if.end10.sw.epilog_crit_edge118
    i32 8200, label %if.end10.sw.epilog_crit_edge119
    i32 8201, label %if.end10.sw.epilog_crit_edge120
    i32 8202, label %if.end10.sw.epilog_crit_edge121
    i32 8216, label %if.end10.sw.epilog_crit_edge122
    i32 8217, label %if.end10.sw.epilog_crit_edge123
    i32 8203, label %if.end10.sw.epilog_crit_edge124
    i32 8204, label %if.end10.sw.epilog_crit_edge125
    i32 8211, label %if.end10.sw.epilog_crit_edge126
    i32 8220, label %if.end10.sw.epilog_crit_edge127
    i32 8221, label %if.end10.sw.epilog_crit_edge128
    i32 8222, label %if.end10.sw.epilog_crit_edge129
    i32 8223, label %if.end10.sw.epilog_crit_edge130
    i32 8207, label %if.end10.sw.epilog_crit_edge131
    i32 8208, label %if.end10.sw.epilog_crit_edge132
    i32 8209, label %if.end10.sw.epilog_crit_edge133
    i32 8210, label %if.end10.sw.epilog_crit_edge134
    i32 8212, label %if.end10.sw.epilog_crit_edge135
    i32 8218, label %if.end10.sw.epilog_crit_edge136
    i32 8219, label %if.end10.sw.epilog_crit_edge137
    i32 8205, label %if.end10.sw.epilog_crit_edge138
    i32 8206, label %if.end10.sw.epilog_crit_edge139
    i32 8228, label %if.end10.sw.epilog_crit_edge140
    i32 8229, label %if.end10.sw.epilog_crit_edge141
    i32 8230, label %if.end10.sw.epilog_crit_edge142
    i32 8224, label %if.end10.sw.epilog_crit_edge143
    i32 8225, label %if.end10.sw.epilog_crit_edge144
    i32 8226, label %if.end10.sw.epilog_crit_edge145
    i32 8227, label %if.end10.sw.epilog_crit_edge146
    i32 8214, label %if.end10.sw.epilog_crit_edge147
    i32 8231, label %if.end10.sw.epilog_crit_edge148
    i32 8215, label %if.end10.sw.epilog_crit_edge149
    i32 8232, label %if.end10.sw.epilog_crit_edge150
    i32 8233, label %if.end10.sw.epilog_crit_edge151
    i32 8234, label %if.end10.sw.epilog_crit_edge152
    i32 8235, label %if.end10.sw.epilog_crit_edge153
    i32 16385, label %if.end10.sw.epilog_crit_edge154
    i32 24577, label %if.end10.sw.epilog_crit_edge155
    i32 12289, label %if.end10.sw.epilog_crit_edge156
    i32 12307, label %if.end10.sw.epilog_crit_edge157
    i32 12290, label %if.end10.sw.epilog_crit_edge158
    i32 12308, label %if.end10.sw.epilog_crit_edge159
    i32 12295, label %if.end10.sw.epilog_crit_edge160
    i32 12302, label %if.end10.sw.epilog_crit_edge161
    i32 12298, label %if.end10.sw.epilog_crit_edge162
    i32 12303, label %if.end10.sw.epilog_crit_edge163
    i32 12296, label %if.end10.sw.epilog_crit_edge164
    i32 12304, label %if.end10.sw.epilog_crit_edge165
    i32 12305, label %if.end10.sw.epilog_crit_edge166
    i32 12306, label %if.end10.sw.epilog_crit_edge167
    i32 12313, label %if.end10.sw.epilog_crit_edge168
    i32 12314, label %if.end10.sw.epilog_crit_edge169
    i32 12315, label %if.end10.sw.epilog_crit_edge170
    i32 12316, label %if.end10.sw.epilog_crit_edge171
    i32 12317, label %if.end10.sw.epilog_crit_edge172
    i32 12318, label %if.end10.sw.epilog_crit_edge173
    i32 12319, label %if.end10.sw.epilog_crit_edge174
    i32 12320, label %if.end10.sw.epilog_crit_edge175
  ]

if.end10.sw.epilog_crit_edge175:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge174:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge173:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge172:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge171:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge170:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge169:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge168:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge167:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge166:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge165:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge164:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge163:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge162:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge161:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge160:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge159:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge158:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge157:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge156:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge155:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge154:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge153:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge152:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge151:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge150:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge149:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge148:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge147:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge146:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge145:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge144:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge143:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge142:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge141:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge140:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge139:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge138:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge137:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge136:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge135:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge134:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge133:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge132:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge131:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge130:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge129:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge128:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge127:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge126:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge125:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge124:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge123:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge122:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge121:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge120:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge119:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge118:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge117:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge116:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge115:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge114:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge113:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge112:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge111:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge110:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge109:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge108:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge107:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge106:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge105:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge104:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge103:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge102:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge101:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge100:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge99:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge98:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge97:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge96:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge95:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge94:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge93:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge92:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge91:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge90:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge89:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8193, ptr %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end10.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge89, %if.end10.sw.epilog_crit_edge90, %if.end10.sw.epilog_crit_edge91, %if.end10.sw.epilog_crit_edge92, %if.end10.sw.epilog_crit_edge93, %if.end10.sw.epilog_crit_edge94, %if.end10.sw.epilog_crit_edge95, %if.end10.sw.epilog_crit_edge96, %if.end10.sw.epilog_crit_edge97, %if.end10.sw.epilog_crit_edge98, %if.end10.sw.epilog_crit_edge99, %if.end10.sw.epilog_crit_edge100, %if.end10.sw.epilog_crit_edge101, %if.end10.sw.epilog_crit_edge102, %if.end10.sw.epilog_crit_edge103, %if.end10.sw.epilog_crit_edge104, %if.end10.sw.epilog_crit_edge105, %if.end10.sw.epilog_crit_edge106, %if.end10.sw.epilog_crit_edge107, %if.end10.sw.epilog_crit_edge108, %if.end10.sw.epilog_crit_edge109, %if.end10.sw.epilog_crit_edge110, %if.end10.sw.epilog_crit_edge111, %if.end10.sw.epilog_crit_edge112, %if.end10.sw.epilog_crit_edge113, %if.end10.sw.epilog_crit_edge114, %if.end10.sw.epilog_crit_edge115, %if.end10.sw.epilog_crit_edge116, %if.end10.sw.epilog_crit_edge117, %if.end10.sw.epilog_crit_edge118, %if.end10.sw.epilog_crit_edge119, %if.end10.sw.epilog_crit_edge120, %if.end10.sw.epilog_crit_edge121, %if.end10.sw.epilog_crit_edge122, %if.end10.sw.epilog_crit_edge123, %if.end10.sw.epilog_crit_edge124, %if.end10.sw.epilog_crit_edge125, %if.end10.sw.epilog_crit_edge126, %if.end10.sw.epilog_crit_edge127, %if.end10.sw.epilog_crit_edge128, %if.end10.sw.epilog_crit_edge129, %if.end10.sw.epilog_crit_edge130, %if.end10.sw.epilog_crit_edge131, %if.end10.sw.epilog_crit_edge132, %if.end10.sw.epilog_crit_edge133, %if.end10.sw.epilog_crit_edge134, %if.end10.sw.epilog_crit_edge135, %if.end10.sw.epilog_crit_edge136, %if.end10.sw.epilog_crit_edge137, %if.end10.sw.epilog_crit_edge138, %if.end10.sw.epilog_crit_edge139, %if.end10.sw.epilog_crit_edge140, %if.end10.sw.epilog_crit_edge141, %if.end10.sw.epilog_crit_edge142, %if.end10.sw.epilog_crit_edge143, %if.end10.sw.epilog_crit_edge144, %if.end10.sw.epilog_crit_edge145, %if.end10.sw.epilog_crit_edge146, %if.end10.sw.epilog_crit_edge147, %if.end10.sw.epilog_crit_edge148, %if.end10.sw.epilog_crit_edge149, %if.end10.sw.epilog_crit_edge150, %if.end10.sw.epilog_crit_edge151, %if.end10.sw.epilog_crit_edge152, %if.end10.sw.epilog_crit_edge153, %if.end10.sw.epilog_crit_edge154, %if.end10.sw.epilog_crit_edge155, %if.end10.sw.epilog_crit_edge156, %if.end10.sw.epilog_crit_edge157, %if.end10.sw.epilog_crit_edge158, %if.end10.sw.epilog_crit_edge159, %if.end10.sw.epilog_crit_edge160, %if.end10.sw.epilog_crit_edge161, %if.end10.sw.epilog_crit_edge162, %if.end10.sw.epilog_crit_edge163, %if.end10.sw.epilog_crit_edge164, %if.end10.sw.epilog_crit_edge165, %if.end10.sw.epilog_crit_edge166, %if.end10.sw.epilog_crit_edge167, %if.end10.sw.epilog_crit_edge168, %if.end10.sw.epilog_crit_edge169, %if.end10.sw.epilog_crit_edge170, %if.end10.sw.epilog_crit_edge171, %if.end10.sw.epilog_crit_edge172, %if.end10.sw.epilog_crit_edge173, %if.end10.sw.epilog_crit_edge174, %if.end10.sw.epilog_crit_edge175
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then17, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %sw.epilog.if.end20_crit_edge
  %lock = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %flags = getelementptr %struct.media_pad, ptr %1, i32 %3, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %land.lhs.true

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end20
  %active = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 6
  %31 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp22 = icmp sgt i32 %32, -1
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %format_mbus = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 3
  %33 = ptrtoint ptr %format_mbus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format_mbus, align 4
  %arrayidx27 = getelementptr %struct.v4l2_mbus_framefmt, ptr %34, i32 %32
  %35 = call ptr @memcpy(ptr %format, ptr %arrayidx27, i32 48)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %land.lhs.true.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %36 = call ptr @memcpy(ptr %retval.0.i, ptr %format, i32 48)
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and31 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end28.if.end40_crit_edge, label %land.lhs.true33

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true33:                                  ; preds = %if.end28
  %index = getelementptr %struct.media_pad, ptr %1, i32 %3, i32 2
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %index, align 4
  %conv34 = zext i16 %40 to i32
  %active35 = getelementptr inbounds %struct.video_mux, ptr %sd, i32 0, i32 6
  %41 = ptrtoint ptr %active35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv34)
  %cmp36 = icmp eq i32 %42, %conv34
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.if.end40_crit_edge

land.lhs.true33.if.end40_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  %43 = call ptr @memcpy(ptr %retval.0.i83, ptr %format, i32 48)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true33.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %__video_mux_get_pad_format.exit84.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__video_mux_get_pad_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -22, %__video_mux_get_pad_format.exit.cleanup_crit_edge ], [ -22, %__video_mux_get_pad_format.exit84.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_get_fwnode_pad_1_to_1(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  %sub = add i16 %1, -1
  %flags3 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_mux_link_setup.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_mux_link_setup, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !85

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %entity11 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %6 = ptrtoint ptr %entity11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity11, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index, align 4
  %conv12 = zext i16 %11 to i32
  %entity13 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %12 = ptrtoint ptr %entity13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity13, align 4
  %name14 = getelementptr inbounds %struct.media_entity, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name14, align 4
  %index15 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %16 = ptrtoint ptr %index15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index15, align 4
  %conv16 = zext i16 %17 to i32
  %and17 = and i32 %flags, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @video_mux_link_setup.__UNIQUE_ID_ddebug292, ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef %9, i32 noundef %conv12, ptr noundef %15, i32 noundef %conv16, i32 noundef %and17) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %lock = getelementptr inbounds %struct.video_mux, ptr %entity, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %active64 = getelementptr inbounds %struct.video_mux, ptr %entity, i32 0, i32 6
  %18 = ptrtoint ptr %active64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active64, align 4
  %index65 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %20 = ptrtoint ptr %index65 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index65, align 4
  %conv66 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv66)
  %cmp67.not = icmp eq i32 %19, %conv66
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end
  br i1 %cmp67.not, label %if.then21.out_crit_edge, label %if.end26

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp28 = icmp sgt i32 %19, -1
  br i1 %cmp28, label %if.end26.out_crit_edge, label %do.body32

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body32:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_mux_link_setup.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_mux_link_setup, %if.then44)) #7
          to label %do.end50 [label %if.then44], !srcloc !85

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 14
  %22 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev45, align 4
  %24 = ptrtoint ptr %index65 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index65, align 4
  %conv47 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @video_mux_link_setup.__UNIQUE_ID_ddebug293, ptr noundef %23, ptr noundef nonnull @.str.23, i32 noundef %conv47) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  %mux = getelementptr inbounds %struct.video_mux, ptr %entity, i32 0, i32 4
  %26 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mux, align 4
  %28 = ptrtoint ptr %index65 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %index65, align 4
  %conv52 = zext i16 %29 to i32
  %call.i = tail call i32 @mux_control_try_select_delay(ptr noundef %27, i32 noundef %conv52, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp54 = icmp slt i32 %call.i, 0
  br i1 %cmp54, label %do.end50.out_crit_edge, label %if.end57

do.end50.out_crit_edge:                           ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end57:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %index65 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %index65, align 4
  %conv59 = zext i16 %31 to i32
  %32 = ptrtoint ptr %active64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv59, ptr %active64, align 4
  %format_mbus = getelementptr inbounds %struct.video_mux, ptr %entity, i32 0, i32 3
  %33 = ptrtoint ptr %format_mbus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format_mbus, align 4
  %idxprom = zext i16 %sub to i32
  %arrayidx = getelementptr %struct.v4l2_mbus_framefmt, ptr %34, i32 %idxprom
  %arrayidx63 = getelementptr %struct.v4l2_mbus_framefmt, ptr %34, i32 %conv59
  %35 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx63, i32 48)
  br label %out

if.else:                                          ; preds = %do.end
  br i1 %cmp67.not, label %do.body71, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body71:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_mux_link_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_mux_link_setup, %if.then83)) #7
          to label %do.end87 [label %if.then83], !srcloc !85

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %dev84 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 14
  %36 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @video_mux_link_setup.__UNIQUE_ID_ddebug294, ptr noundef %37, ptr noundef nonnull @.str.24) #7
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body71
  %mux88 = getelementptr inbounds %struct.video_mux, ptr %entity, i32 0, i32 4
  %38 = ptrtoint ptr %mux88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mux88, align 4
  %call89 = tail call i32 @mux_control_deselect(ptr noundef %39) #7
  %40 = ptrtoint ptr %active64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %active64, align 4
  br label %out

out:                                              ; preds = %do.end87, %if.else.out_crit_edge, %if.end57, %do.end50.out_crit_edge, %if.end26.out_crit_edge, %if.then21.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then21.out_crit_edge ], [ %call.i, %do.end50.out_crit_edge ], [ %call.i, %if.end57 ], [ 0, %if.else.out_crit_edge ], [ 0, %do.end87 ], [ -16, %if.end26.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_try_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_mux_notify_bound(ptr noundef %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -196
  %call1 = tail call i32 @v4l2_create_fwnode_links(ptr noundef %sd, ptr noundef %add.ptr.i) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_video_mux__297_514_video_mux_driver_init6, !1, !"__initcall__kmod_video_mux__297_514_video_mux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/video-mux.c", i32 514, i32 1}
!2 = !{ptr @__exitcall_video_mux_driver_exit, !1, !"__exitcall_video_mux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/video-mux.c", i32 516, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/video-mux.c", i32 517, i32 1}
!7 = !{ptr @__UNIQUE_ID_author300, !8, !"__UNIQUE_ID_author300", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/video-mux.c", i32 518, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/video-mux.c", i32 519, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/video-mux.c", i32 510, i32 11}
!14 = !{ptr @video_mux_driver, !15, !"video_mux_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/video-mux.c", i32 505, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/video-mux.c", i32 422, i32 57}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/video-mux.c", i32 438, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @video_mux_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @video_mux_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/video-mux.c", i32 446, i32 4}
!28 = !{ptr @video_mux_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @video_mux_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @video_mux_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/video-mux.c", i32 450, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @video_mux_subdev_ops, !34, !"video_mux_subdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/video-mux.c", i32 339, i32 37}
!35 = !{ptr @video_mux_subdev_video_ops, !36, !"video_mux_subdev_video_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/video-mux.c", i32 137, i32 43}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/video-mux.c", i32 117, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @video_mux_s_stream._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @video_mux_s_stream._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/video-mux.c", i32 123, i32 3}
!44 = !{ptr @video_mux_s_stream._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @video_mux_s_stream._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/video-mux.c", i32 128, i32 3}
!48 = !{ptr @video_mux_s_stream._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @video_mux_s_stream._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @video_mux_pad_ops, !51, !"video_mux_pad_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/video-mux.c", i32 333, i32 41}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!54 = !{ptr @video_mux_format_mbus_default, !55, !"video_mux_format_mbus_default", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/video-mux.c", i32 33, i32 40}
!56 = !{ptr @video_mux_ops, !57, !"video_mux_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/video-mux.c", i32 104, i32 45}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/video-mux.c", i32 67, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @video_mux_link_setup.__UNIQUE_ID_ddebug292, !59, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/video-mux.c", i32 82, i32 3}
!65 = !{ptr @video_mux_link_setup.__UNIQUE_ID_ddebug293, !64, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/video-mux.c", i32 94, i32 3}
!68 = !{ptr @video_mux_link_setup.__UNIQUE_ID_ddebug294, !67, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!69 = !{ptr @video_mux_notify_ops, !70, !"video_mux_notify_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/video-mux.c", i32 353, i32 52}
!71 = !{ptr @video_mux_dt_ids, !72, !"video_mux_dt_ids", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/video-mux.c", i32 499, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148965544, i64 2148965549, i64 2148965562, i64 2148965606, i64 2148965640, i64 2148965661}
