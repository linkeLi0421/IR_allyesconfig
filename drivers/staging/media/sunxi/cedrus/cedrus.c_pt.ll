; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cedrus_control = type { %struct.v4l2_ctrl_config, i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.cedrus_variant = type { i32, i32 }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.115 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_hevc_sps = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.media_request = type { ptr, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_sunxi_cedrus__298_682_cedrus_driver_init6 = internal global ptr @cedrus_driver_init, section ".initcall6.init", align 4
@cedrus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cedrus_probe, ptr @cedrus_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cedrus_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cedrus_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cedrus_driver_exit = internal global ptr @cedrus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file299 = internal constant [66 x i8] c"sunxi_cedrus.file=drivers/staging/media/sunxi/cedrus/sunxi-cedrus\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"sunxi_cedrus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [71 x i8] c"sunxi_cedrus.author=Florent Revest <florent.revest@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [70 x i8] c"sunxi_cedrus.author=Paul Kocialkowski <paul.kocialkowski@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [62 x i8] c"sunxi_cedrus.author=Maxime Ripard <maxime.ripard@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [43 x i8] c"sunxi_cedrus.description=Cedrus VPU driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cedrus\00", [25 x i8] zeroinitializer }, align 32
@cedrus_dt_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun20i-d1-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun20i_d1_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_cedrus_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_cedrus_variant }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@cedrus_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cedrus_hw_suspend, ptr @cedrus_hw_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cedrus_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @cedrus_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cedrus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @cedrus_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@cedrus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to probe hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cedrus_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/sunxi/cedrus/cedrus.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr = internal global ptr @cedrus_probe._entry, section ".printk_index", align 4
@cedrus_dec_ops_mpeg2 = external dso_local global %struct.cedrus_dec_ops, align 4
@cedrus_dec_ops_h264 = external dso_local global %struct.cedrus_dec_ops, align 4
@cedrus_dec_ops_h265 = external dso_local global %struct.cedrus_dec_ops, align 4
@cedrus_dec_ops_vp8 = external dso_local global %struct.cedrus_dec_ops, align 4
@cedrus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@cedrus_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register V4L2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.9 = internal global ptr @cedrus_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cedrus_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @cedrus_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@cedrus_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to initialize V4L2 M2M device\0A\00", [52 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.13 = internal global ptr @cedrus_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:cedrus\00", [16 x i8] zeroinitializer }, align 32
@cedrus_m2m_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @cedrus_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@cedrus_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.17 = internal global ptr @cedrus_probe._entry.15, section ".printk_index", align 4
@cedrus_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.20 = internal global ptr @cedrus_probe._entry.18, section ".printk_index", align 4
@cedrus_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: Failed to initialize V4L2 M2M media controller\0A\00", [42 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.23 = internal global ptr @cedrus_probe._entry.21, section ".printk_index", align 4
@cedrus_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register media device\0A\00", [57 x i8] zeroinitializer }, align 32
@cedrus_probe._entry_ptr.26 = internal global ptr @cedrus_probe._entry.24, section ".printk_index", align 4
@cedrus_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @cedrus_open, ptr @cedrus_release }, [60 x i8] zeroinitializer }, align 32
@cedrus_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cedrus_init_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cedrus:240:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@cedrus_init_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to initialize control handler\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cedrus_init_ctrls\00", [46 x i8] zeroinitializer }, align 32
@cedrus_init_ctrls._entry_ptr = internal global ptr @cedrus_init_ctrls._entry, section ".printk_index", align 4
@cedrus_controls = internal constant { [20 x %struct.cedrus_control], [576 x i8] } { [20 x %struct.cedrus_control] [%struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750428, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 0 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750429, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 0 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750430, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 0 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750215, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750214, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr @cedrus_ctrl_ops, ptr null, i32 10750210, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750211, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750212, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750213, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750208, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750209, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029675, ptr null, i32 0, i64 0, i64 4, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 8, ptr null, ptr null, i8 0 }, i32 1 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr @cedrus_ctrl_ops, ptr null, i32 10030320, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030321, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030322, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030323, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030327, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030328, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750408, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 3 }, %struct.cedrus_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030324, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 2 }], [576 x i8] zeroinitializer }, align 32
@cedrus_init_ctrls._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Failed to create new custom control\0A\00", [53 x i8] zeroinitializer }, align 32
@cedrus_init_ctrls._entry_ptr.32 = internal global ptr @cedrus_init_ctrls._entry.30, section ".printk_index", align 4
@cedrus_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @cedrus_try_ctrl, ptr null }, [20 x i8] zeroinitializer }, align 32
@cedrus_request_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: No buffer was provided with the request\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cedrus_request_validate\00", [40 x i8] zeroinitializer }, align 32
@cedrus_request_validate._entry_ptr = internal global ptr @cedrus_request_validate._entry, section ".printk_index", align 4
@cedrus_request_validate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: More than one buffer was provided with the request\0A\00", [38 x i8] zeroinitializer }, align 32
@cedrus_request_validate._entry_ptr.37 = internal global ptr @cedrus_request_validate._entry.35, section ".printk_index", align 4
@sun4i_a10_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 28, i32 320000000 }, [24 x i8] zeroinitializer }, align 32
@sun5i_a13_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 28, i32 320000000 }, [24 x i8] zeroinitializer }, align 32
@sun7i_a20_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 28, i32 320000000 }, [24 x i8] zeroinitializer }, align 32
@sun8i_a33_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 29, i32 320000000 }, [24 x i8] zeroinitializer }, align 32
@sun8i_h3_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 31, i32 402000000 }, [24 x i8] zeroinitializer }, align 32
@sun8i_v3s_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 5, i32 297000000 }, [24 x i8] zeroinitializer }, align 32
@sun8i_r40_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 29, i32 297000000 }, [24 x i8] zeroinitializer }, align 32
@sun20i_d1_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 15, i32 432000000 }, [24 x i8] zeroinitializer }, align 32
@sun50i_a64_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 31, i32 402000000 }, [24 x i8] zeroinitializer }, align 32
@sun50i_h5_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 31, i32 402000000 }, [24 x i8] zeroinitializer }, align 32
@sun50i_h6_cedrus_variant = internal constant { %struct.cedrus_variant, [24 x i8] } { %struct.cedrus_variant { i32 63, i32 600000000 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10030320, i64 10750210]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"cedrus_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 673, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 677, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"cedrus_dt_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 619, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"cedrus_dev_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 668, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"cedrus_video_device\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 396, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 431, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 440, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 444, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 452, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"cedrus_m2m_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 406, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 457, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 466, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"cedrus_m2m_media_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 410, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 475, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 479, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 485, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 492, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"cedrus_fops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 387, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 240, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 242, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"cedrus_controls\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 75, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 257, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"cedrus_ctrl_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 71, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 297, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 301, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"sun4i_a10_cedrus_variant\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 531, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant [25 x i8] c"sun5i_a13_cedrus_variant\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 538, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"sun7i_a20_cedrus_variant\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 545, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"sun8i_a33_cedrus_variant\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 552, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant [24 x i8] c"sun8i_h3_cedrus_variant\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 560, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant [25 x i8] c"sun8i_v3s_cedrus_variant\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 569, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant [25 x i8] c"sun8i_r40_cedrus_variant\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 575, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant [25 x i8] c"sun20i_d1_cedrus_variant\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 583, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"sun50i_a64_cedrus_variant\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 591, i32 36 }
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"sun50i_h5_cedrus_variant\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 600, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"sun50i_h6_cedrus_variant\00", align 1
@___asan_gen_.202 = private constant [47 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 609, i32 36 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cedrus_driver_exit, ptr @__initcall__kmod_sunxi_cedrus__298_682_cedrus_driver_init6, ptr @cedrus_driver_exit, ptr @cedrus_init_ctrls._entry, ptr @cedrus_init_ctrls._entry.30, ptr @cedrus_init_ctrls._entry_ptr, ptr @cedrus_init_ctrls._entry_ptr.32, ptr @cedrus_probe._entry, ptr @cedrus_probe._entry.11, ptr @cedrus_probe._entry.15, ptr @cedrus_probe._entry.18, ptr @cedrus_probe._entry.21, ptr @cedrus_probe._entry.24, ptr @cedrus_probe._entry.7, ptr @cedrus_probe._entry_ptr, ptr @cedrus_probe._entry_ptr.13, ptr @cedrus_probe._entry_ptr.17, ptr @cedrus_probe._entry_ptr.20, ptr @cedrus_probe._entry_ptr.23, ptr @cedrus_probe._entry_ptr.26, ptr @cedrus_probe._entry_ptr.9, ptr @cedrus_request_validate._entry, ptr @cedrus_request_validate._entry.35, ptr @cedrus_request_validate._entry_ptr, ptr @cedrus_request_validate._entry_ptr.37, ptr @cedrus_driver, ptr @.str, ptr @cedrus_dt_match, ptr @cedrus_dev_pm_ops, ptr @cedrus_video_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cedrus_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @cedrus_m2m_ops, ptr @.str.12, ptr @.str.14, ptr @cedrus_m2m_media_ops, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @cedrus_fops, ptr @cedrus_init_ctrls._key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @cedrus_controls, ptr @.str.31, ptr @cedrus_ctrl_ops, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @sun4i_a10_cedrus_variant, ptr @sun5i_a13_cedrus_variant, ptr @sun7i_a20_cedrus_variant, ptr @sun8i_a33_cedrus_variant, ptr @sun8i_h3_cedrus_variant, ptr @sun8i_v3s_cedrus_variant, ptr @sun8i_r40_cedrus_variant, ptr @sun20i_d1_cedrus_variant, ptr @sun50i_a64_cedrus_variant, ptr @sun50i_h5_cedrus_variant, ptr @sun50i_h6_cedrus_variant], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dt_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_m2m_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_init_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_init_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_controls to i32), i32 2400, i32 2976, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_init_ctrls._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_request_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_request_validate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h5_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_cedrus_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cedrus_find_control_data(ptr nocapture noundef readonly %ctx, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrls, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not12 = icmp eq ptr %3, null
  br i1 %tobool.not12, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.013, 1
  %arrayidx = getelementptr ptr, ptr %1, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %5, %for.cond.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %id3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %id)
  %cmp = icmp eq i32 %8, %id
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p_cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 26
  %9 = ptrtoint ptr %p_cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_cur, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cedrus_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cedrus_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2296, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfd2 = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %vfd2, ptr @cedrus_video_device, i32 1352)
  %dev4 = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev4, align 4
  %pdev5 = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev5, align 8
  %call6 = tail call i32 @cedrus_hw_probe(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dec_ops = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %dec_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cedrus_dec_ops_mpeg2, ptr %dec_ops, align 4
  %arrayidx12 = getelementptr %struct.cedrus_dev, ptr %call.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cedrus_dec_ops_h264, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.cedrus_dev, ptr %call.i, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cedrus_dec_ops_h265, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.cedrus_dev, ptr %call.i, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cedrus_dec_ops_vp8, ptr %arrayidx16, align 4
  %dev_mutex = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @cedrus_probe.__key) #8
  %call21 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  %lock = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 26
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev32 = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %v4l2_dev32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %v4l2_dev32, align 4
  %name = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 12
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef getelementptr inbounds (%struct.video_device, ptr @cedrus_video_device, i32 0, i32 12))
  %driver_data.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call34 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @cedrus_m2m_ops) #8
  %m2m_dev = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end47

do.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name42) #11
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %err_v4l2

if.end47:                                         ; preds = %if.end28
  %mdev = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 2, i32 2
  %call52 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 2, i32 5
  %call55 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.14, i32 noundef 32) #8
  tail call void @media_device_init(ptr noundef %mdev) #8
  %ops = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 2, i32 21
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cedrus_m2m_media_ops, ptr %ops, align 8
  %mdev60 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %mdev60 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mdev, ptr %mdev60, align 4
  %fops.i = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i169 = tail call i32 @__video_register_device(ptr noundef %vfd2, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool62.not = icmp eq i32 %call.i169, 0
  %name78 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool62.not, label %do.end75, label %do.end66

do.end66:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name78) #11
  br label %err_m2m

do.end75:                                         ; preds = %if.end47
  %num = getelementptr inbounds %struct.cedrus_dev, ptr %call.i, i32 0, i32 1, i32 16
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num, align 4
  %conv = zext i16 %22 to i32
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name78, i32 noundef %conv) #11
  %23 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_dev, align 8
  %call82 = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %24, ptr noundef %vfd2, i32 noundef 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end93, label %do.end87

do.end87:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name78) #11
  br label %err_video

if.end93:                                         ; preds = %do.end75
  %call95 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end106, label %do.end100

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name78) #11
  %25 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %26) #8
  br label %err_video

if.end106:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i170 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i170 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i170, align 4
  br label %cleanup

err_video:                                        ; preds = %do.end100, %do.end87
  %ret.0 = phi i32 [ %call82, %do.end87 ], [ %call95, %do.end100 ]
  tail call void @video_unregister_device(ptr noundef %vfd2) #8
  br label %err_m2m

err_m2m:                                          ; preds = %err_video, %do.end66
  %ret.1 = phi i32 [ %call.i169, %do.end66 ], [ %ret.0, %err_video ]
  %28 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %29) #8
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_m2m, %do.end40
  %ret.2 = phi i32 [ %13, %do.end40 ], [ %ret.1, %err_m2m ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %if.end106, %do.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %call21, %do.end26 ], [ %ret.2, %err_v4l2 ], [ 0, %if.end106 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %devnode = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devnode, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %media_devnode_is_registered.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

media_devnode_is_registered.exit:                 ; preds = %entry
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %media_devnode_is_registered.exit.if.end_crit_edge, label %if.then

media_devnode_is_registered.exit.if.end_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev) #8
  %m2m_dev = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %7) #8
  tail call void @media_device_cleanup(ptr noundef %mdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %media_devnode_is_registered.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %m2m_dev4 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %m2m_dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev4, align 8
  tail call void @v4l2_m2m_release(ptr noundef %9) #8
  %vfd = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #8
  tail call void @v4l2_device_unregister(ptr noundef %1) #8
  tail call void @cedrus_hw_remove(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_hw_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_register_media_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_unregister_media_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_open(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 544) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @video_devdata(ptr noundef %file) #8
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call7) #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev9 = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev9, align 8
  %hdl1.i = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 5
  %call.i66 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1.i, i32 noundef 20, ptr noundef nonnull @cedrus_init_ctrls._key, ptr noundef nonnull @.str.27) #8
  %error.i = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i) #11
  br label %cedrus_init_ctrls.exit

if.end.i:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 81) #12
  %ctrls.i = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %ctrls.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.err_free_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.err_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.050.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [20 x %struct.cedrus_control], ptr @cedrus_controls, i32 0, i32 %i.050.i
  %call10.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1.i, ptr noundef %arrayidx.i, ptr noundef null) #8
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not.i = icmp eq i32 %10, 0
  br i1 %tobool12.not.i, label %if.end25.i, label %do.end16.i

do.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name19.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name19.i) #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl1.i) #8
  %11 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrls.i, align 8
  tail call void @kfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ctrls.i, align 8
  br label %cedrus_init_ctrls.exit

if.end25.i:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrls.i, align 8
  %arrayidx27.i = getelementptr ptr, ptr %15, i32 %i.050.i
  %16 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10.i, ptr %arrayidx27.i, align 4
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %cedrus_init_ctrls.exit.thread, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cedrus_init_ctrls.exit.thread:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdl1.i, ptr %ctrl_handler.i, align 4
  %call28.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl1.i) #8
  br label %if.end13

cedrus_init_ctrls.exit:                           ; preds = %do.end16.i, %do.end.i
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %cedrus_init_ctrls.exit.if.end13_crit_edge, label %cedrus_init_ctrls.exit.err_free_crit_edge

cedrus_init_ctrls.exit.err_free_crit_edge:        ; preds = %cedrus_init_ctrls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

cedrus_init_ctrls.exit.if.end13_crit_edge:        ; preds = %cedrus_init_ctrls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %cedrus_init_ctrls.exit.if.end13_crit_edge, %cedrus_init_ctrls.exit.thread
  %m2m_dev = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_dev, align 8
  %call14 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %20, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cedrus_queue_init) #8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call14 to i32
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl1.i) #8
  br label %err_free

if.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 3
  %pixelformat = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 842093651, ptr %pixelformat, align 4
  tail call void @cedrus_prepare_format(ptr noundef %dst_fmt) #8
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 2
  %pixelformat25 = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1395803981, ptr %pixelformat25, align 4
  %25 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_fmt, align 4
  %27 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %src_fmt, align 4
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 8
  %height31 = getelementptr inbounds %struct.cedrus_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height31, align 8
  tail call void @cedrus_prepare_format(ptr noundef %src_fmt) #8
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

err_free:                                         ; preds = %if.then19, %cedrus_init_ctrls.exit.err_free_crit_edge, %if.end.i.err_free_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %cedrus_init_ctrls.exit.err_free_crit_edge ], [ %22, %if.then19 ], [ -12, %if.end.i.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free, %if.end23, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end23 ], [ %ret.0, %err_free ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_release(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_mutex = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #8
  %hdl = getelementptr inbounds %struct.cedrus_ctx, ptr %3, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  %ctrls = getelementptr inbounds %struct.cedrus_ctx, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrls, align 4
  tail call void @kfree(ptr noundef %7) #8
  tail call void @v4l2_fh_exit(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_queue_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cedrus_prepare_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cedrus_try_ctrl(ptr nocapture noundef readonly %ctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 10750210, label %if.then
    i32 10030320, label %if.then19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %3 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_new, align 8
  %chroma_format_idc = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %chroma_format_idc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chroma_format_idc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp1.not = icmp eq i8 %6, 1
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %bit_depth_luma_minus8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bit_depth_luma_minus8, align 1
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %bit_depth_chroma_minus8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_depth_chroma_minus8, align 2
  %11 = or i8 %10, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %if.end.return_crit_edge, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  br label %return

if.then19:                                        ; preds = %entry
  %p_new21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %13 = ptrtoint ptr %p_new21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_new21, align 8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %15 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handler, align 8
  %chroma_format_idc22 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %14, i32 0, i32 20
  %17 = ptrtoint ptr %chroma_format_idc22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chroma_format_idc22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp24.not = icmp eq i8 %18, 1
  br i1 %cmp24.not, label %if.end27, label %if.then19.cleanup55.thread_crit_edge

if.then19.cleanup55.thread_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55.thread

if.end27:                                         ; preds = %if.then19
  %bit_depth_luma_minus828 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %bit_depth_luma_minus828 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bit_depth_luma_minus828, align 4
  %bit_depth_chroma_minus830 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %bit_depth_chroma_minus830 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bit_depth_chroma_minus830, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp32.not = icmp eq i8 %20, %22
  br i1 %cmp32.not, label %if.end35, label %if.end27.cleanup55.thread_crit_edge

if.end27.cleanup55.thread_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55.thread

if.end35:                                         ; preds = %if.end27
  %dev = getelementptr i8, ptr %16, i32 -104
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %capabilities = getelementptr inbounds %struct.cedrus_dev, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 4
  %and = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else47, label %if.then36

if.then36:                                        ; preds = %if.end35
  %switch.and = and i8 %20, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  br i1 %switch.selectcmp, label %if.then36.return_crit_edge, label %if.then36.cleanup55.thread_crit_edge

if.then36.cleanup55.thread_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55.thread

if.then36.return_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp50.not = icmp eq i8 %20, 0
  br i1 %cmp50.not, label %if.else47.return_crit_edge, label %if.else47.cleanup55.thread_crit_edge

if.else47.cleanup55.thread_crit_edge:             ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55.thread

if.else47.return_crit_edge:                       ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup55.thread:                                 ; preds = %if.else47.cleanup55.thread_crit_edge, %if.then36.cleanup55.thread_crit_edge, %if.end27.cleanup55.thread_crit_edge, %if.then19.cleanup55.thread_crit_edge
  br label %return

return:                                           ; preds = %cleanup55.thread, %if.else47.return_crit_edge, %if.then36.return_crit_edge, %cleanup.thread, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ -22, %cleanup55.thread ], [ 0, %entry.return_crit_edge ], [ 0, %if.then36.return_crit_edge ], [ 0, %if.else47.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cedrus_device_run(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_request_validate(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %objects = getelementptr inbounds %struct.media_request, ptr %req, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %objects, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %objects
  br i1 %cmp.not, label %for.cond.cleanup32_crit_edge, label %for.body

for.cond.cleanup32_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

for.body:                                         ; preds = %for.cond
  %obj.0 = getelementptr i8, ptr %.pn, i32 -12
  %call = tail call zeroext i1 @vb2_request_object_is_buffer(ptr noundef %obj.0) #8
  br i1 %call, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %add.ptr4 = getelementptr i8, ptr %.pn, i32 -48
  %1 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr4, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.end.cleanup32_crit_edge, label %if.end12

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.end12:                                         ; preds = %for.end
  %call13 = tail call i32 @vb2_request_buffer_cnt(ptr noundef %req) #8
  %5 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call13, label %do.end22 [
    i32 0, label %do.end
    i32 1, label %if.end30
  ]

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.cedrus_ctx, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name) #11
  br label %cleanup32

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.cedrus_ctx, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev24, align 4
  %name26 = getelementptr inbounds %struct.v4l2_device, ptr %9, i32 0, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name26) #11
  br label %cleanup32

if.end30:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 @vb2_request_validate(ptr noundef %req) #8
  br label %cleanup32

cleanup32:                                        ; preds = %if.end30, %do.end22, %do.end, %for.end.cleanup32_crit_edge, %for.cond.cleanup32_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %call31, %if.end30 ], [ -2, %do.end ], [ -2, %for.end.cleanup32_crit_edge ], [ -2, %for.cond.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vb2_request_object_is_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_buffer_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cedrus_hw_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_hw_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_hw_resume(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_sunxi_cedrus__298_682_cedrus_driver_init6, !1, !"__initcall__kmod_sunxi_cedrus__298_682_cedrus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 682, i32 1}
!2 = !{ptr @__exitcall_cedrus_driver_exit, !1, !"__exitcall_cedrus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file299, !4, !"__UNIQUE_ID_file299", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 684, i32 1}
!5 = !{ptr @__UNIQUE_ID_license300, !4, !"__UNIQUE_ID_license300", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 685, i32 1}
!8 = !{ptr @__UNIQUE_ID_author302, !9, !"__UNIQUE_ID_author302", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 686, i32 1}
!10 = !{ptr @__UNIQUE_ID_author303, !11, !"__UNIQUE_ID_author303", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 687, i32 1}
!12 = !{ptr @__UNIQUE_ID_description304, !13, !"__UNIQUE_ID_description304", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 688, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 677, i32 12}
!16 = !{ptr @cedrus_driver, !17, !"cedrus_driver", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 673, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 431, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cedrus_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cedrus_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @cedrus_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 440, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 444, i32 3}
!31 = !{ptr @cedrus_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cedrus_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 452, i32 41}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 457, i32 3}
!37 = !{ptr @cedrus_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cedrus_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 466, i32 30}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 475, i32 3}
!43 = !{ptr @cedrus_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cedrus_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 479, i32 2}
!47 = !{ptr @cedrus_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cedrus_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 485, i32 3}
!51 = !{ptr @cedrus_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cedrus_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 492, i32 3}
!55 = !{ptr @cedrus_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cedrus_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cedrus_video_device, !58, !"cedrus_video_device", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 396, i32 34}
!59 = !{ptr @cedrus_fops, !60, !"cedrus_fops", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 387, i32 42}
!61 = !{ptr @cedrus_init_ctrls._key, !62, !"_key", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 240, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 242, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cedrus_init_ctrls._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cedrus_init_ctrls._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 257, i32 4}
!71 = !{ptr @cedrus_init_ctrls._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cedrus_init_ctrls._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cedrus_controls, !74, !"cedrus_controls", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 75, i32 36}
!75 = !{ptr @cedrus_ctrl_ops, !76, !"cedrus_ctrl_ops", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 71, i32 35}
!77 = !{ptr @cedrus_m2m_ops, !78, !"cedrus_m2m_ops", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 406, i32 34}
!79 = !{ptr @cedrus_m2m_media_ops, !80, !"cedrus_m2m_media_ops", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 410, i32 38}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 297, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cedrus_request_validate._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cedrus_request_validate._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 301, i32 3}
!88 = !{ptr @cedrus_request_validate._entry.35, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cedrus_request_validate._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @cedrus_dt_match, !91, !"cedrus_dt_match", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 619, i32 34}
!92 = !{ptr @sun4i_a10_cedrus_variant, !93, !"sun4i_a10_cedrus_variant", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 531, i32 36}
!94 = !{ptr @sun5i_a13_cedrus_variant, !95, !"sun5i_a13_cedrus_variant", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 538, i32 36}
!96 = !{ptr @sun7i_a20_cedrus_variant, !97, !"sun7i_a20_cedrus_variant", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 545, i32 36}
!98 = !{ptr @sun8i_a33_cedrus_variant, !99, !"sun8i_a33_cedrus_variant", i1 false, i1 false}
!99 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 552, i32 36}
!100 = !{ptr @sun8i_h3_cedrus_variant, !101, !"sun8i_h3_cedrus_variant", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 560, i32 36}
!102 = !{ptr @sun8i_v3s_cedrus_variant, !103, !"sun8i_v3s_cedrus_variant", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 569, i32 36}
!104 = !{ptr @sun8i_r40_cedrus_variant, !105, !"sun8i_r40_cedrus_variant", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 575, i32 36}
!106 = !{ptr @sun20i_d1_cedrus_variant, !107, !"sun20i_d1_cedrus_variant", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 583, i32 36}
!108 = !{ptr @sun50i_a64_cedrus_variant, !109, !"sun50i_a64_cedrus_variant", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 591, i32 36}
!110 = !{ptr @sun50i_h5_cedrus_variant, !111, !"sun50i_h5_cedrus_variant", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 600, i32 36}
!112 = !{ptr @sun50i_h6_cedrus_variant, !113, !"sun50i_h6_cedrus_variant", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 609, i32 36}
!114 = !{ptr @cedrus_dev_pm_ops, !115, !"cedrus_dev_pm_ops", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus.c", i32 668, i32 32}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
