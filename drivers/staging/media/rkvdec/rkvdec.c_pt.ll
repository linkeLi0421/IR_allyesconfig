; ModuleID = '/llk/IR_all_yes/drivers/staging/media/rkvdec/rkvdec.c_pt.bc'
source_filename = "../drivers/staging/media/rkvdec/rkvdec.c"
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkvdec_coded_fmt_desc = type { i32, %struct.v4l2_frmsize_stepwise, ptr, ptr, i32, ptr }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.rkvdec_ctrls = type { ptr, i32 }
%struct.rkvdec_coded_fmt_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rkvdec_ctrl_desc = type { %struct.v4l2_ctrl_config }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.120 = type { ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.rkvdec_ctx = type { %struct.v4l2_fh, %struct.v4l2_format, %struct.v4l2_format, ptr, %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rkvdec_dev = type { %struct.v4l2_device, %struct.media_device, %struct.video_device, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }

@__initcall__kmod_rockchip_vdec__299_1120_rkvdec_driver_init6 = internal global ptr @rkvdec_driver_init, section ".initcall6.init", align 4
@rkvdec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rkvdec_probe, ptr @rkvdec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_rkvdec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rkvdec_driver_exit = internal global ptr @rkvdec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [69 x i8] c"rockchip_vdec.author=Boris Brezillon <boris.brezillon@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [56 x i8] c"rockchip_vdec.description=Rockchip Video Decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [62 x i8] c"rockchip_vdec.file=drivers/staging/media/rkvdec/rockchip-vdec\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [29 x i8] c"rockchip_vdec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rkvdec\00", [25 x i8] zeroinitializer }, align 32
@of_rkvdec_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rkvdec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_runtime_suspend, ptr @rkvdec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rkvdec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rkvdec->vdev_lock\00", [45 x i8] zeroinitializer }, align 32
@rkvdec_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&rkvdec->watchdog_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rkvdec_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&rkvdec->watchdog_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@rkvdec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1042, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not set DMA coherent mask.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rkvdec_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/rkvdec/rkvdec.c\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkvdec_probe._entry_ptr = internal global ptr @rkvdec_probe._entry, section ".printk_index", align 4
@rkvdec_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1056, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not request vdec IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@rkvdec_probe._entry_ptr.13 = internal global ptr @rkvdec_probe._entry.11, section ".printk_index", align 4
@rkvdec_watchdog_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 985, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Frame processing timed out!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rkvdec_watchdog_func\00", [43 x i8] zeroinitializer }, align 32
@rkvdec_watchdog_func._entry_ptr = internal global ptr @rkvdec_watchdog_func._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cabac\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 878, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register V4L2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rkvdec_v4l2_init\00", [47 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry_ptr = internal global ptr @rkvdec_v4l2_init._entry, section ".printk_index", align 4
@rkvdec_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @rkvdec_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.8, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry_ptr.24 = internal global ptr @rkvdec_v4l2_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:rkvdec\00", [16 x i8] zeroinitializer }, align 32
@rkvdec_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @rkvdec_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@rkvdec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @rkvdec_open, ptr @rkvdec_release }, [60 x i8] zeroinitializer }, align 32
@rkvdec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rkvdec_querycap, ptr @rkvdec_enum_capture_fmt, ptr null, ptr @rkvdec_enum_output_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_g_capture_fmt, ptr @rkvdec_g_output_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_s_capture_fmt, ptr @rkvdec_s_output_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_try_capture_fmt, ptr @rkvdec_try_output_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkvdec_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.8, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry_ptr.28 = internal global ptr @rkvdec_v4l2_init._entry.26, section ".printk_index", align 4
@rkvdec_v4l2_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.8, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: Failed to initialize V4L2 M2M media controller\0A\00", [42 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry_ptr.31 = internal global ptr @rkvdec_v4l2_init._entry.29, section ".printk_index", align 4
@rkvdec_v4l2_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.21, ptr @.str.8, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register media device\0A\00", [57 x i8] zeroinitializer }, align 32
@rkvdec_v4l2_init._entry_ptr.34 = internal global ptr @rkvdec_v4l2_init._entry.32, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rkvdec_coded_fmts = internal constant { [2 x %struct.rkvdec_coded_fmt_desc], [40 x i8] } { [2 x %struct.rkvdec_coded_fmt_desc] [%struct.rkvdec_coded_fmt_desc { i32 875967059, %struct.v4l2_frmsize_stepwise { i32 48, i32 4096, i32 16, i32 48, i32 2304, i32 16 }, ptr @rkvdec_h264_ctrls, ptr @rkvdec_h264_fmt_ops, i32 1, ptr @rkvdec_h264_vp9_decoded_fmts }, %struct.rkvdec_coded_fmt_desc { i32 1178161238, %struct.v4l2_frmsize_stepwise { i32 64, i32 4096, i32 64, i32 64, i32 2304, i32 64 }, ptr @rkvdec_vp9_ctrls, ptr @rkvdec_vp9_fmt_ops, i32 1, ptr @rkvdec_h264_vp9_decoded_fmts }], [40 x i8] zeroinitializer }, align 32
@rkvdec_h264_ctrls = internal constant { %struct.rkvdec_ctrls, [24 x i8] } { %struct.rkvdec_ctrls { ptr @rkvdec_h264_ctrl_descs, i32 8 }, [24 x i8] zeroinitializer }, align 32
@rkvdec_h264_fmt_ops = external dso_local constant %struct.rkvdec_coded_fmt_ops, align 4
@rkvdec_h264_vp9_decoded_fmts = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 842094158], [28 x i8] zeroinitializer }, align 32
@rkvdec_vp9_ctrls = internal constant { %struct.rkvdec_ctrls, [24 x i8] } { %struct.rkvdec_ctrls { ptr @rkvdec_vp9_ctrl_descs, i32 3 }, [24 x i8] zeroinitializer }, align 32
@rkvdec_vp9_fmt_ops = external dso_local constant %struct.rkvdec_coded_fmt_ops, align 4
@rkvdec_h264_ctrl_descs = internal constant { [8 x %struct.rkvdec_ctrl_desc], [224 x i8] } { [8 x %struct.rkvdec_ctrl_desc] [%struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750215, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr @rkvdec_ctrl_ops, ptr null, i32 10750210, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750211, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750212, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750208, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750209, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029675, ptr null, i32 0, i64 0, i64 4, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 8, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029671, ptr null, i32 0, i64 0, i64 15, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }], [224 x i8] zeroinitializer }, align 32
@rkvdec_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @rkvdec_try_ctrl, ptr null }, [20 x i8] zeroinitializer }, align 32
@rkvdec_vp9_ctrl_descs = internal constant { [3 x %struct.rkvdec_ctrl_desc], [80 x i8] } { [3 x %struct.rkvdec_ctrl_desc] [%struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750508, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750509, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.rkvdec_ctrl_desc { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029824, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }], [80 x i8] zeroinitializer }, align 32
@rkvdec_init_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rkvdec:791:(&ctx->ctrl_hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@rkvdec_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rkvdec_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @rkvdec_buf_out_validate, ptr null, ptr @rkvdec_buf_prepare, ptr null, ptr null, ptr @rkvdec_start_streaming, ptr @rkvdec_stop_streaming, ptr @rkvdec_buf_queue, ptr @rkvdec_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"rkvdec_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1111, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1115, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"of_rkvdec_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 992, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"rkvdec_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1105, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1014, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1015, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1042, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1056, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 985, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 999, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 999, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 999, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 999, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 878, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"rkvdec_m2m_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 715, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 884, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 891, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"rkvdec_media_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 639, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"rkvdec_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 863, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"rkvdec_ioctl_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 443, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 910, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 917, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 924, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"rkvdec_coded_fmts\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 126, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"rkvdec_h264_ctrls\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 97, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [29 x i8] c"rkvdec_h264_vp9_decoded_fmts\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 102, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"rkvdec_vp9_ctrls\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 121, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"rkvdec_h264_ctrl_descs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 56, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"rkvdec_ctrl_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 52, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"rkvdec_vp9_ctrl_descs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 106, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 791, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"rkvdec_queue_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 614, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1163, i32 7 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [41 x i8] c"../drivers/staging/media/rkvdec/rkvdec.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 240, i32 49 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_rkvdec_driver_exit, ptr @__initcall__kmod_rockchip_vdec__299_1120_rkvdec_driver_init6, ptr @rkvdec_driver_exit, ptr @rkvdec_probe._entry, ptr @rkvdec_probe._entry.11, ptr @rkvdec_probe._entry_ptr, ptr @rkvdec_probe._entry_ptr.13, ptr @rkvdec_v4l2_init._entry, ptr @rkvdec_v4l2_init._entry.22, ptr @rkvdec_v4l2_init._entry.26, ptr @rkvdec_v4l2_init._entry.29, ptr @rkvdec_v4l2_init._entry.32, ptr @rkvdec_v4l2_init._entry_ptr, ptr @rkvdec_v4l2_init._entry_ptr.24, ptr @rkvdec_v4l2_init._entry_ptr.28, ptr @rkvdec_v4l2_init._entry_ptr.31, ptr @rkvdec_v4l2_init._entry_ptr.34, ptr @rkvdec_watchdog_func._entry, ptr @rkvdec_watchdog_func._entry_ptr, ptr @rkvdec_driver, ptr @.str, ptr @of_rkvdec_match, ptr @rkvdec_pm_ops, ptr @rkvdec_probe.__key, ptr @.str.1, ptr @rkvdec_probe.__key.2, ptr @.str.3, ptr @rkvdec_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rkvdec_m2m_ops, ptr @.str.23, ptr @.str.25, ptr @rkvdec_media_ops, ptr @rkvdec_fops, ptr @rkvdec_ioctl_ops, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @rkvdec_coded_fmts, ptr @rkvdec_h264_ctrls, ptr @rkvdec_h264_vp9_decoded_fmts, ptr @rkvdec_vp9_ctrls, ptr @rkvdec_h264_ctrl_descs, ptr @rkvdec_ctrl_ops, ptr @rkvdec_vp9_ctrl_descs, ptr @rkvdec_init_ctrls._key, ptr @.str.35, ptr @rkvdec_queue_ops, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rkvdec_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_watchdog_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_v4l2_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_v4l2_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_v4l2_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_v4l2_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_coded_fmts to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_h264_ctrls to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_h264_vp9_decoded_fmts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_vp9_ctrls to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_h264_ctrl_descs to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_vp9_ctrl_descs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_init_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkvdec_run_preamble(ptr noundef %ctx, ptr nocapture noundef %run) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %run to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %run, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %1 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %2, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #13
  %3 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %run, align 4
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i20 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #13
  %dst = getelementptr inbounds %struct.anon.120, ptr %run, i32 0, i32 1
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i20, ptr %dst, align 4
  %7 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %run, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ctrl_hdl = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 4
  %call7 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef nonnull %10, ptr noundef %ctrl_hdl) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %run, align 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %12, ptr noundef %14, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkvdec_run_postamble(ptr noundef %ctx, ptr nocapture noundef readonly %run) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %run, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ctrl_hdl = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef nonnull %3, ptr noundef %ctrl_hdl) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rkvdec_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @rkvdec_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2296, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %vdev_lock = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %vdev_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rkvdec_probe.__key) #13
  %watchdog_work = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #13
  %2 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @rkvdec_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry11 = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rkvdec_watchdog_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @rkvdec_probe.__key.4) #13
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #13
  %clocks = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %clocks, align 8
  %tobool25.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clocks, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.16, ptr %8, align 4
  %10 = load ptr, ptr %clocks, align 8
  %arrayidx29.1 = getelementptr %struct.clk_bulk_data, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %arrayidx29.1, align 4
  %12 = load ptr, ptr %clocks, align 8
  %arrayidx29.2 = getelementptr %struct.clk_bulk_data, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.18, ptr %arrayidx29.2, align 4
  %14 = load ptr, ptr %clocks, align 8
  %arrayidx29.3 = getelementptr %struct.clk_bulk_data, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.19, ptr %arrayidx29.3, align 4
  %16 = load ptr, ptr %clocks, align 8
  %call32 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %for.body.preheader
  %17 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call38 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 500000000) #13
  %call39 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #13
  %regs = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %call47 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %call56 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev, i32 noundef -1) #13
  %call57 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %if.end54.cleanup_crit_edge, label %if.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end60.dev_name.exit_crit_edge

if.end60.dev_name.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end60.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end60.dev_name.exit_crit_edge ]
  %call64 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call57, ptr noundef null, ptr noundef nonnull @rkvdec_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end71:                                         ; preds = %dev_name.exit
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #13
  tail call void @pm_runtime_enable(ptr noundef %dev) #13
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 4
  %call.i131 = tail call i32 @v4l2_device_register(ptr noundef %28, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end.i133, label %rkvdec_v4l2_init.exit.thread137

rkvdec_v4l2_init.exit.thread137:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20) #16
  br label %err_disable_runtime_pm

if.end.i133:                                      ; preds = %if.end71
  %call2.i = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @rkvdec_m2m_ops) #13
  %m2m_dev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2.i, ptr %m2m_dev.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rkvdec_v4l2_init.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i133
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %mdev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %mdev.i, align 8
  %model.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 1, i32 2
  %call18.i = tail call i32 @strscpy(ptr noundef %model.i, ptr noundef nonnull @.str, i32 noundef 32) #13
  %bus_info.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 1, i32 5
  %call21.i = tail call i32 @strscpy(ptr noundef %bus_info.i, ptr noundef nonnull @.str.25, i32 noundef 32) #13
  tail call void @media_device_init(ptr noundef %mdev.i) #13
  %ops.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 1, i32 21
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rkvdec_media_ops, ptr %ops.i, align 8
  %mdev26.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %mdev26.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mdev.i, ptr %mdev26.i, align 4
  %vdev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 26
  %37 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vdev_lock, ptr %lock.i, align 8
  %v4l2_dev29.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 7
  %38 = ptrtoint ptr %v4l2_dev29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %v4l2_dev29.i, align 4
  %fops.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rkvdec_fops, ptr %fops.i, align 4
  %release.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 23
  %40 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 14
  %41 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %vfl_dir.i, align 4
  %device_caps.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 67125248, ptr %device_caps.i, align 8
  %ioctl_ops.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 24
  %43 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @rkvdec_ioctl_ops, ptr %ioctl_ops.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 5, i32 8
  %44 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %name37.i = getelementptr inbounds %struct.rkvdec_dev, ptr %call.i, i32 0, i32 2, i32 12
  %call39.i = tail call i32 @strscpy(ptr noundef %name37.i, ptr noundef nonnull @.str, i32 noundef 32) #13
  %45 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fops.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %vdev.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool42.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool42.not.i, label %if.end52.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %name49.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name49.i) #16
  br label %rkvdec_v4l2_init.exit.thread141

if.end52.i:                                       ; preds = %if.end13.i
  %49 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_dev.i, align 8
  %call55.i = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %50, ptr noundef %vdev.i, i32 noundef 16392) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end66.i, label %do.end60.i

do.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %name63.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name63.i) #16
  br label %err_unregister_vdev.i

if.end66.i:                                       ; preds = %if.end52.i
  %call68.i = tail call i32 @__media_device_register(ptr noundef %mdev.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end66.i.cleanup_crit_edge, label %do.end73.i

if.end66.i.cleanup_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end73.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  %name76.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name76.i) #16
  %51 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %m2m_dev.i, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %52) #13
  br label %err_unregister_vdev.i

err_unregister_vdev.i:                            ; preds = %do.end73.i, %do.end60.i
  %ret.0.i = phi i32 [ %call55.i, %do.end60.i ], [ %call68.i, %do.end73.i ]
  tail call void @video_unregister_device(ptr noundef %vdev.i) #13
  br label %rkvdec_v4l2_init.exit.thread141

rkvdec_v4l2_init.exit.thread141:                  ; preds = %err_unregister_vdev.i, %do.end46.i
  %ret.1.i = phi i32 [ %call.i.i, %do.end46.i ], [ %ret.0.i, %err_unregister_vdev.i ]
  tail call void @media_device_cleanup(ptr noundef %mdev.i) #13
  %53 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %m2m_dev.i, align 8
  tail call void @v4l2_m2m_release(ptr noundef %54) #13
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #13
  br label %err_disable_runtime_pm

rkvdec_v4l2_init.exit:                            ; preds = %if.end.i133
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i) #16
  %55 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m2m_dev.i, align 8
  %57 = ptrtoint ptr %56 to i32
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #13
  %tobool76.not = icmp eq ptr %56, null
  br i1 %tobool76.not, label %rkvdec_v4l2_init.exit.cleanup_crit_edge, label %rkvdec_v4l2_init.exit.err_disable_runtime_pm_crit_edge

rkvdec_v4l2_init.exit.err_disable_runtime_pm_crit_edge: ; preds = %rkvdec_v4l2_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_disable_runtime_pm

rkvdec_v4l2_init.exit.cleanup_crit_edge:          ; preds = %rkvdec_v4l2_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_disable_runtime_pm:                           ; preds = %rkvdec_v4l2_init.exit.err_disable_runtime_pm_crit_edge, %rkvdec_v4l2_init.exit.thread141, %rkvdec_v4l2_init.exit.thread137
  %retval.0.i134140 = phi i32 [ %call.i131, %rkvdec_v4l2_init.exit.thread137 ], [ %57, %rkvdec_v4l2_init.exit.err_disable_runtime_pm_crit_edge ], [ %ret.1.i, %rkvdec_v4l2_init.exit.thread141 ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %err_disable_runtime_pm, %rkvdec_v4l2_init.exit.cleanup_crit_edge, %if.end66.i.cleanup_crit_edge, %do.end69, %if.end54.cleanup_crit_edge, %do.end52, %if.then42, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then42 ], [ %call47, %do.end52 ], [ %call64, %do.end69 ], [ %retval.0.i134140, %err_disable_runtime_pm ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call32, %for.body.preheader.cleanup_crit_edge ], [ -6, %if.end54.cleanup_crit_edge ], [ 0, %rkvdec_v4l2_init.exit.cleanup_crit_edge ], [ 0, %if.end66.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mdev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %mdev.i) #13
  %m2m_dev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev.i, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %3) #13
  %vdev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %vdev.i) #13
  tail call void @media_device_cleanup(ptr noundef %mdev.i) #13
  %4 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev.i, align 8
  tail call void @v4l2_m2m_release(ptr noundef %5) #13
  tail call void @v4l2_device_unregister(ptr noundef %1) #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_watchdog_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr i8, ptr %work, i32 -108
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call1 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %work, i32 -104
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @arm_heavy_mb() #13
  %regs = getelementptr i8, ptr %work, i32 -96
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 268435456) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #13, !srcloc !118
  tail call fastcc void @rkvdec_job_finish(ptr noundef nonnull %call1, i32 noundef 6)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_irq_handler(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.rkvdec_dev, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #13, !srcloc !118
  %watchdog_work = getelementptr inbounds %struct.rkvdec_dev, ptr %priv, i32 0, i32 8
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %watchdog_work) #13
  br i1 %call4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  %m2m_dev = getelementptr inbounds %struct.rkvdec_dev, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 8
  %call5 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %7) #13
  tail call fastcc void @rkvdec_job_finish(ptr noundef %call5, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkvdec_job_finish(ptr noundef %ctx, i32 noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %call.i5 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #13
  %coded_fmt_desc.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %coded_fmt_desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coded_fmt_desc.i, align 4
  %ops.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %done.i = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.rkvdec_job_finish_no_pm.exit_crit_edge, label %if.then.i

entry.rkvdec_job_finish_no_pm.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rkvdec_job_finish_no_pm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %13 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #13
  %15 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 7
  %call.i16.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #13
  %17 = ptrtoint ptr %coded_fmt_desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %coded_fmt_desc.i, align 4
  %ops5.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops5.i, align 4
  %done6.i = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %done6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done6.i, align 4
  tail call void %22(ptr noundef %ctx, ptr noundef %call.i.i, ptr noundef %call.i16.i, i32 noundef %result) #13
  br label %rkvdec_job_finish_no_pm.exit

rkvdec_job_finish_no_pm.exit:                     ; preds = %if.then.i, %entry.rkvdec_job_finish_no_pm.exit_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %m2m_dev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev.i, align 8
  %m2m_ctx8.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %27 = ptrtoint ptr %m2m_ctx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx8.i, align 4
  tail call void @v4l2_m2m_buf_done_and_job_finish(ptr noundef %26, ptr noundef %28, i32 noundef %result) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_done_and_job_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_register_media_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_unregister_media_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 5
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coded_fmt_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !123

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 701, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev24 = getelementptr inbounds %struct.rkvdec_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev24, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end26

if.then.i:                                        ; preds = %if.end23
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !125
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then25_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then25_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  br label %if.then25

if.then25:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then25_crit_edge
  %7 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coded_fmt_desc, align 4
  %ops.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %done.i = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then25.rkvdec_job_finish_no_pm.exit_crit_edge, label %if.then.i41

if.then25.rkvdec_job_finish_no_pm.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %rkvdec_job_finish_no_pm.exit

if.then.i41:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %13 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #13
  %15 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 7
  %call.i16.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #13
  %17 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %coded_fmt_desc, align 4
  %ops5.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops5.i, align 4
  %done6.i = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %done6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done6.i, align 4
  tail call void %22(ptr noundef %priv, ptr noundef %call.i.i, ptr noundef %call.i16.i, i32 noundef 6) #13
  br label %rkvdec_job_finish_no_pm.exit

rkvdec_job_finish_no_pm.exit:                     ; preds = %if.then.i41, %if.then25.rkvdec_job_finish_no_pm.exit_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %m2m_dev.i = getelementptr inbounds %struct.rkvdec_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev.i, align 8
  %m2m_ctx8.i = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %27 = ptrtoint ptr %m2m_ctx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx8.i, align 4
  tail call void @v4l2_m2m_buf_done_and_job_finish(ptr noundef %26, ptr noundef %28, i32 noundef 6) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %ops = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %run = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %run, align 4
  %call27 = tail call i32 %32(ptr noundef %priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rkvdec_job_finish(ptr noundef %priv, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end26.cleanup_crit_edge, %rkvdec_job_finish_no_pm.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_request_validate(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_request_buffer_cnt(ptr noundef %req) #13
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then1 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.end2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @vb2_request_validate(ptr noundef %req) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ %call3, %if.end2 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_buffer_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_open(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 796) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev, align 4
  %coded_fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1
  %coded_fmt_desc.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %coded_fmt_desc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rkvdec_coded_fmts, ptr %coded_fmt_desc.i, align 8
  %5 = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 5
  %6 = call ptr @memset(ptr %5, i32 0, i32 180)
  %pixelformat.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 875967059, ptr %pixelformat.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field.i.i, align 8
  %colorspace.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %colorspace.i.i, align 4
  %10 = ptrtoint ptr %coded_fmt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %coded_fmt.i, align 8
  %fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 48, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 48, ptr %height.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rkvdec_h264_fmt_ops to i32))
  %13 = load ptr, ptr @rkvdec_h264_fmt_ops, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.rkvdec_reset_coded_fmt.exit_crit_edge, label %if.then.i

if.end.rkvdec_reset_coded_fmt.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rkvdec_reset_coded_fmt.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i38 = tail call i32 %13(ptr noundef nonnull %call7.i.i, ptr noundef %coded_fmt.i) #13
  br label %rkvdec_reset_coded_fmt.exit

rkvdec_reset_coded_fmt.exit:                      ; preds = %if.then.i, %if.end.rkvdec_reset_coded_fmt.exit_crit_edge
  %decoded_fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %coded_fmt_desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %coded_fmt_desc.i, align 8
  %decoded_fmts.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %decoded_fmts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %decoded_fmts.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = call ptr @memset(ptr %20, i32 0, i32 200)
  %pixelformat.i.i40 = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat.i.i40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %pixelformat.i.i40, align 8
  %field.i.i41 = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %field.i.i41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field.i.i41, align 4
  %colorspace.i.i42 = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %colorspace.i.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %colorspace.i.i42, align 8
  %25 = ptrtoint ptr %decoded_fmt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 9, ptr %decoded_fmt.i, align 4
  %26 = load ptr, ptr %decoded_fmts.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmt.i, align 4
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 8
  %call.i45 = tail call i32 @v4l2_fill_pixfmt_mp(ptr noundef %20, i32 noundef %28, i32 noundef %30, i32 noundef %32) #13
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %20, align 8
  %sub.i = shl i32 %34, 3
  %35 = add i32 %sub.i, 120
  %mul.i = and i32 %35, -128
  %height10.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height10.i, align 4
  %sub12.i = add i32 %37, 15
  %div1329.i = lshr i32 %sub12.i, 4
  %mul14.i = mul i32 %mul.i, %div1329.i
  %plane_fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %plane_fmt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %plane_fmt.i, align 4
  %add17.i = add i32 %mul14.i, %39
  store i32 %add17.i, ptr %plane_fmt.i, align 4
  %call2 = tail call ptr @video_devdata(ptr noundef %filp) #13
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call2) #13
  %ctrl_hdl.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i46 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 11, ptr noundef nonnull @rkvdec_init_ctrls._key, ptr noundef nonnull @.str.35) #13
  %error.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %call7.i.i, i32 0, i32 4, i32 9
  %call.i.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @rkvdec_h264_ctrl_descs, ptr noundef nonnull %call7.i.i) #13
  %40 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %rkvdec_reset_coded_fmt.exit.err_free_ctx_crit_edge

rkvdec_reset_coded_fmt.exit.err_free_ctx_crit_edge: ; preds = %rkvdec_reset_coded_fmt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.i:                                     ; preds = %rkvdec_reset_coded_fmt.exit
  %call.i.141.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 1), ptr noundef nonnull %call7.i.i) #13
  %42 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.142.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.142.i, label %for.cond.i.144.i, label %for.cond.i.i.err_free_ctx_crit_edge

for.cond.i.i.err_free_ctx_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.144.i:                                 ; preds = %for.cond.i.i
  %call.i.2.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 2), ptr noundef nonnull %call7.i.i) #13
  %44 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.2.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.2.i, label %for.cond.i.2.i, label %for.cond.i.144.i.err_free_ctx_crit_edge

for.cond.i.144.i.err_free_ctx_crit_edge:          ; preds = %for.cond.i.144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.2.i:                                   ; preds = %for.cond.i.144.i
  %call.i.3.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 3), ptr noundef nonnull %call7.i.i) #13
  %46 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.3.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.3.i, label %for.cond.i.3.i, label %for.cond.i.2.i.err_free_ctx_crit_edge

for.cond.i.2.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i.4.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 4), ptr noundef nonnull %call7.i.i) #13
  %48 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.4.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.4.i, label %for.cond.i.4.i, label %for.cond.i.3.i.err_free_ctx_crit_edge

for.cond.i.3.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.4.i:                                   ; preds = %for.cond.i.3.i
  %call.i.5.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 5), ptr noundef nonnull %call7.i.i) #13
  %50 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.5.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.5.i, label %for.cond.i.5.i, label %for.cond.i.4.i.err_free_ctx_crit_edge

for.cond.i.4.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.5.i:                                   ; preds = %for.cond.i.4.i
  %call.i.6.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 6), ptr noundef nonnull %call7.i.i) #13
  %52 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.6.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.6.i, label %for.cond.i.6.i, label %for.cond.i.5.i.err_free_ctx_crit_edge

for.cond.i.5.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.6.i:                                   ; preds = %for.cond.i.5.i
  %call.i.7.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([8 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_h264_ctrl_descs, i32 0, i32 7), ptr noundef nonnull %call7.i.i) #13
  %54 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.7.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.7.i, label %for.body.i.preheader.1.i, label %for.cond.i.6.i.err_free_ctx_crit_edge

for.cond.i.6.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.body.i.preheader.1.i:                         ; preds = %for.cond.i.6.i
  %call.i.1.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @rkvdec_vp9_ctrl_descs, ptr noundef nonnull %call7.i.i) #13
  %56 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.1.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.1.i, label %for.cond.i.1.i, label %for.body.i.preheader.1.i.err_free_ctx_crit_edge

for.body.i.preheader.1.i.err_free_ctx_crit_edge:  ; preds = %for.body.i.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.1.i:                                   ; preds = %for.body.i.preheader.1.i
  %call.i.1.1.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([3 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_vp9_ctrl_descs, i32 0, i32 1), ptr noundef nonnull %call7.i.i) #13
  %58 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.1.1.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.1.1.i, label %for.cond.i.1.1.i, label %for.cond.i.1.i.err_free_ctx_crit_edge

for.cond.i.1.i.err_free_ctx_crit_edge:            ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.cond.i.1.1.i:                                 ; preds = %for.cond.i.1.i
  %call.i.1.2.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl.i, ptr noundef getelementptr inbounds ([3 x %struct.rkvdec_ctrl_desc], ptr @rkvdec_vp9_ctrl_descs, i32 0, i32 2), ptr noundef nonnull %call7.i.i) #13
  %60 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.1.2.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.1.2.i, label %for.inc7.1.i, label %for.cond.i.1.1.i.err_free_ctx_crit_edge

for.cond.i.1.1.i.err_free_ctx_crit_edge:          ; preds = %for.cond.i.1.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

for.inc7.1.i:                                     ; preds = %for.cond.i.1.1.i
  %call11.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end6, label %for.inc7.1.i.err_free_ctx_crit_edge

for.inc7.1.i.err_free_ctx_crit_edge:              ; preds = %for.inc7.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ctx

if.end6:                                          ; preds = %for.inc7.1.i
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ctrl_hdl.i, ptr %ctrl_handler.i, align 4
  %m2m_dev = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %m2m_dev, align 8
  %call7 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %64, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rkvdec_queue_init) #13
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %65 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %call7 to i32
  br label %err_free_ctx

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %67 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

err_free_ctx:                                     ; preds = %if.then12, %for.inc7.1.i.err_free_ctx_crit_edge, %for.cond.i.1.1.i.err_free_ctx_crit_edge, %for.cond.i.1.i.err_free_ctx_crit_edge, %for.body.i.preheader.1.i.err_free_ctx_crit_edge, %for.cond.i.6.i.err_free_ctx_crit_edge, %for.cond.i.5.i.err_free_ctx_crit_edge, %for.cond.i.4.i.err_free_ctx_crit_edge, %for.cond.i.3.i.err_free_ctx_crit_edge, %for.cond.i.2.i.err_free_ctx_crit_edge, %for.cond.i.144.i.err_free_ctx_crit_edge, %for.cond.i.i.err_free_ctx_crit_edge, %rkvdec_reset_coded_fmt.exit.err_free_ctx_crit_edge
  %ret.0 = phi i32 [ %66, %if.then12 ], [ %call11.i, %for.inc7.1.i.err_free_ctx_crit_edge ], [ %41, %rkvdec_reset_coded_fmt.exit.err_free_ctx_crit_edge ], [ %43, %for.cond.i.i.err_free_ctx_crit_edge ], [ %45, %for.cond.i.144.i.err_free_ctx_crit_edge ], [ %47, %for.cond.i.2.i.err_free_ctx_crit_edge ], [ %49, %for.cond.i.3.i.err_free_ctx_crit_edge ], [ %51, %for.cond.i.4.i.err_free_ctx_crit_edge ], [ %53, %for.cond.i.5.i.err_free_ctx_crit_edge ], [ %55, %for.cond.i.6.i.err_free_ctx_crit_edge ], [ %57, %for.body.i.preheader.1.i.err_free_ctx_crit_edge ], [ %59, %for.cond.i.1.i.err_free_ctx_crit_edge ], [ %61, %for.cond.i.1.1.i.err_free_ctx_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_ctx, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_ctx ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_release(ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @v4l2_fh_del(ptr noundef %1) #13
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %3) #13
  %ctrl_hdl = getelementptr inbounds %struct.rkvdec_ctx, ptr %1, i32 0, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #13
  tail call void @v4l2_fh_exit(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rkvdec_queue_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %dma_attrs = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 3
  %7 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 144, ptr %dma_attrs, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %8 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %9 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16384, ptr %timestamp_flags, align 4
  %vdev_lock = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 7
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vdev_lock, ptr %lock, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev2, align 4
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %14 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.set5 = or i16 %bf.load, 1536
  store i16 %bf.set5, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bidirectional = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %15 = ptrtoint ptr %bidirectional to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load6 = load i16, ptr %bidirectional, align 4
  %bf.set8 = or i16 %bf.load6, -32768
  store i16 %bf.set8, ptr %bidirectional, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %16 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %dma_attrs10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 3
  %17 = ptrtoint ptr %dma_attrs10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 144, ptr %dma_attrs10, align 4
  %18 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %dst_vq, align 4
  %io_modes12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %19 = ptrtoint ptr %io_modes12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %io_modes12, align 4
  %drv_priv13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv13, align 4
  %ops14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %21 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rkvdec_queue_ops, ptr %ops14, align 4
  %buf_struct_size15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %22 = ptrtoint ptr %buf_struct_size15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 752, ptr %buf_struct_size15, align 4
  %timestamp_flags16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %23 = ptrtoint ptr %timestamp_flags16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %timestamp_flags16, align 4
  %lock18 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %24 = ptrtoint ptr %lock18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vdev_lock, ptr %lock18, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %dev21 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev21, align 4
  %call22 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_try_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10750210, i32 %1)
  %cmp = icmp eq i32 %1, 10750210
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %2 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_new, align 8
  %chroma_format_idc = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chroma_format_idc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chroma_format_idc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp1 = icmp ugt i8 %5, 1
  br i1 %cmp1, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bit_depth_luma_minus8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bit_depth_luma_minus8, align 1
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %bit_depth_chroma_minus8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bit_depth_chroma_minus8, align 2
  %10 = or i8 %9, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %if.end.return_crit_edge, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  br label %return

return:                                           ; preds = %cleanup.thread, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fill_pixfmt_mp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge96
    i32 3, label %entry.if.then_crit_edge97
    i32 8, label %entry.if.then_crit_edge98
    i32 5, label %entry.if.then_crit_edge99
    i32 7, label %entry.if.then_crit_edge100
    i32 12, label %entry.if.then_crit_edge101
    i32 14, label %entry.if.then_crit_edge102
  ]

entry.if.then_crit_edge102:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge96, %entry.if.then_crit_edge97, %entry.if.then_crit_edge98, %entry.if.then_crit_edge99, %entry.if.then_crit_edge100, %entry.if.then_crit_edge101, %entry.if.then_crit_edge102
  %coded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %1, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %decoded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %1, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %f.0 = phi ptr [ %coded_fmt, %if.then ], [ %decoded_fmt, %if.else ]
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %num_planes40 = getelementptr inbounds %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 6
  %7 = ptrtoint ptr %num_planes40 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes40, align 4
  %conv41 = zext i8 %8 to i32
  br i1 %tobool.not, label %if.else38, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv41)
  %cmp23.not = icmp eq i32 %6, %conv41
  br i1 %cmp23.not, label %for.cond.preheader, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3086.not = icmp eq i8 %8, 0
  br i1 %cmp3086.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.087
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx33 = getelementptr %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 5, i32 %i.087
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp34 = icmp ult i32 %10, %12
  br i1 %cmp34, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else38:                                        ; preds = %if.end
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv41, ptr %num_planes, align 4
  %14 = ptrtoint ptr %num_planes40 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_planes40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp4690.not = icmp eq i8 %15, 0
  br i1 %cmp4690.not, label %if.else38.cleanup_crit_edge, label %if.else38.for.body48_crit_edge

if.else38.for.body48_crit_edge:                   ; preds = %if.else38
  br label %for.body48

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %if.else38.for.body48_crit_edge
  %i.191 = phi i32 [ %inc55, %for.body48.for.body48_crit_edge ], [ 0, %if.else38.for.body48_crit_edge ]
  %arrayidx51 = getelementptr %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 5, i32 %i.191
  %16 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr i32, ptr %sizes, i32 %i.191
  %18 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx53, align 4
  %inc55 = add nuw nsw i32 %i.191, 1
  %19 = ptrtoint ptr %num_planes40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_planes40, align 4
  %conv45 = zext i8 %20 to i32
  %cmp46 = icmp ult i32 %inc55, %conv45
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.cleanup_crit_edge

for.body48.cleanup_crit_edge:                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

cleanup:                                          ; preds = %for.body48.cleanup_crit_edge, %if.else38.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21.cleanup_crit_edge ], [ 0, %if.else38.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body48.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rkvdec_buf_out_validate(ptr nocapture noundef writeonly %vb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge102
    i32 3, label %entry.if.then_crit_edge103
    i32 8, label %entry.if.then_crit_edge104
    i32 5, label %entry.if.then_crit_edge105
    i32 7, label %entry.if.then_crit_edge106
    i32 12, label %entry.if.then_crit_edge107
    i32 14, label %entry.if.then_crit_edge108
  ]

entry.if.then_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge102:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge102, %entry.if.then_crit_edge103, %entry.if.then_crit_edge104, %entry.if.then_crit_edge105, %entry.if.then_crit_edge106, %entry.if.then_crit_edge107, %entry.if.then_crit_edge108
  %coded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %3, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %decoded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %3, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %f.0 = phi ptr [ %coded_fmt, %if.then ], [ %decoded_fmt, %if.else ]
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 6
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2199.not = icmp eq i8 %8, 0
  br i1 %cmp2199.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.cond:                                         ; preds = %vb2_plane_size.exit
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 5, i32 %i.0100
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.0100)
  %cmp.i = icmp ugt i32 %10, %i.0100
  br i1 %cmp.i, label %if.then.i, label %for.body.vb2_plane_size.exit_crit_edge

for.body.vb2_plane_size.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0100, i32 4
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %for.body.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %for.body.vb2_plane_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %12)
  %cmp26 = icmp ult i32 %retval.0.i, %12
  br i1 %cmp26, label %vb2_plane_size.exit.cleanup67_crit_edge, label %for.cond

vb2_plane_size.exit.cleanup67_crit_edge:          ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 13
  br i1 %15, label %switch.hole_check, label %for.end.if.then61_crit_edge

for.end.if.then61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

if.then61:                                        ; preds = %switch.hole_check.if.then61_crit_edge, %for.end.if.then61_crit_edge
  %num_planes.i96 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i96 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.then61.cleanup67_crit_edge, label %if.then.i98

if.then61.cleanup67_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.then.i98:                                      ; preds = %if.then61
  %plane_fmt63 = getelementptr inbounds %struct.v4l2_format, ptr %f.0, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %plane_fmt63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %plane_fmt63, align 4
  %length.i97 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %20 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp1.i = icmp ult i32 %21, %19
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i98.if.end42.i_crit_edge

if.then.i98.if.end42.i_crit_edge:                 ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i98
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !127

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %22 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i97, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i98.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %23, %if.then38.i ], [ %19, %if.then.i98.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup67

switch.hole_check:                                ; preds = %for.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %25 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.lobit.not = icmp eq i16 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then61_crit_edge, label %switch.hole_check.cleanup67_crit_edge

switch.hole_check.cleanup67_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

switch.hole_check.if.then61_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

cleanup67:                                        ; preds = %switch.hole_check.cleanup67_crit_edge, %if.end42.i, %if.then61.cleanup67_crit_edge, %vb2_plane_size.exit.cleanup67_crit_edge
  %retval.2 = phi i32 [ 0, %if.then61.cleanup67_crit_edge ], [ 0, %if.end42.i ], [ 0, %switch.hole_check.cleanup67_crit_edge ], [ -22, %vb2_plane_size.exit.cleanup67_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 10, label %entry.if.end_crit_edge71
    i32 3, label %entry.if.end_crit_edge72
    i32 8, label %entry.if.end_crit_edge73
    i32 5, label %entry.if.end_crit_edge74
    i32 7, label %entry.if.end_crit_edge75
    i32 12, label %entry.if.end_crit_edge76
    i32 14, label %entry.if.end_crit_edge77
  ]

entry.if.end_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge71, %entry.if.end_crit_edge72, %entry.if.end_crit_edge73, %entry.if.end_crit_edge74, %entry.if.end_crit_edge75, %entry.if.end_crit_edge76, %entry.if.end_crit_edge77
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coded_fmt_desc, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end45, !prof !123

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 564, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %start = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %start, align 4
  %tobool46.not = icmp eq ptr %10, null
  br i1 %tobool46.not, label %if.end45.if.end54_crit_edge, label %if.then47

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then47:                                        ; preds = %if.end45
  %call50 = tail call i32 %10(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.if.end54_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.end54:                                         ; preds = %if.then47.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then47.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end54 ], [ 0, %entry.cleanup_crit_edge ], [ %call50, %if.then47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %entry.if.end50_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge69
    i32 3, label %entry.if.then_crit_edge70
    i32 8, label %entry.if.then_crit_edge71
    i32 5, label %entry.if.then_crit_edge72
    i32 7, label %entry.if.then_crit_edge73
    i32 12, label %entry.if.then_crit_edge74
    i32 14, label %entry.if.then_crit_edge75
  ]

entry.if.then_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge69, %entry.if.then_crit_edge70, %entry.if.then_crit_edge71, %entry.if.then_crit_edge72, %entry.if.then_crit_edge73, %entry.if.then_crit_edge74, %entry.if.then_crit_edge75
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coded_fmt_desc, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end44, !prof !123

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 604, i32 noundef 9, ptr noundef null) #13
  br label %cleanup51

if.end44:                                         ; preds = %if.then
  %ops = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.rkvdec_coded_fmt_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop, align 4
  %tobool45.not = icmp eq ptr %10, null
  br i1 %tobool45.not, label %if.end44.if.end50_crit_edge, label %if.then46

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %10(ptr noundef %1) #13
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end44.if.end50_crit_edge, %entry.if.end50_crit_edge
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %12, i32 0, i32 10
  %ctrl_hdl.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %12, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %if.end50
  %13 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %14, label %if.else.i [
    i32 2, label %while.cond.i.if.then.i_crit_edge
    i32 10, label %while.cond.i.if.then.i_crit_edge76
    i32 3, label %while.cond.i.if.then.i_crit_edge77
    i32 8, label %while.cond.i.if.then.i_crit_edge78
    i32 5, label %while.cond.i.if.then.i_crit_edge79
    i32 7, label %while.cond.i.if.then.i_crit_edge80
    i32 12, label %while.cond.i.if.then.i_crit_edge81
    i32 14, label %while.cond.i.if.then.i_crit_edge82
  ]

while.cond.i.if.then.i_crit_edge82:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge81:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge80:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge79:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge78:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge77:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge76:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.if.then.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %while.cond.i.if.then.i_crit_edge, %while.cond.i.if.then.i_crit_edge76, %while.cond.i.if.then.i_crit_edge77, %while.cond.i.if.then.i_crit_edge78, %while.cond.i.if.then.i_crit_edge79, %while.cond.i.if.then.i_crit_edge80, %while.cond.i.if.then.i_crit_edge81, %while.cond.i.if.then.i_crit_edge82
  %16 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i1.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #13
  %tobool.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup51_crit_edge, label %cleanup.i

if.end.i.cleanup51_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i1.i, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %21, ptr noundef %ctrl_hdl.i) #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i1.i, i32 noundef 6) #13
  br label %while.cond.i

cleanup51:                                        ; preds = %if.end.i.cleanup51_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_hdl = getelementptr inbounds %struct.rkvdec_ctx, ptr %3, i32 0, i32 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #13
  %dev = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %7, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name5 = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name5, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %driver10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver10, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef %13)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_enum_capture_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coded_fmt_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !123

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 433, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %num_decoded_fmts = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_decoded_fmts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_decoded_fmts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %decoded_fmts = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %decoded_fmts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %decoded_fmts, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ -22, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_enum_output_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [2 x %struct.rkvdec_coded_fmt_desc], ptr @rkvdec_coded_fmts, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_g_capture_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %decoded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %f, ptr %decoded_fmt, i32 204)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_g_output_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %coded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %f, ptr %coded_fmt, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_s_capture_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 9) #13
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call1, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rkvdec_try_capture_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %decoded_fmt = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %decoded_fmt, ptr %f, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_s_output_fmt(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx1 = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx1, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 10) #13
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  %pixelformat6 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 1, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 9) #13
  %num_buffers.i58 = getelementptr inbounds %struct.vb2_queue, ptr %call7, i32 0, i32 21
  %9 = ptrtoint ptr %num_buffers.i58 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i59.not = icmp eq i32 %10, 0
  br i1 %cmp.i59.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %pixelformat.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %12)
  %switch.selectcmp.i.i = icmp eq i32 %12, 1178161238
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr getelementptr inbounds ([2 x %struct.rkvdec_coded_fmt_desc], ptr @rkvdec_coded_fmts, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967059, i32 %12)
  %switch.selectcmp8.i.i = icmp eq i32 %12, 875967059
  %switch.select9.i.i = select i1 %switch.selectcmp8.i.i, ptr @rkvdec_coded_fmts, ptr %switch.select.i.i
  %tobool.not.i = icmp eq ptr %switch.select9.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 875967059, ptr %pixelformat.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %desc.0.i = phi ptr [ %switch.select9.i.i, %if.end10.if.end.i_crit_edge ], [ @rkvdec_coded_fmts, %if.then.i ]
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %frmsize.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %desc.0.i, i32 0, i32 1
  tail call void @v4l2_apply_frmsize_constraints(ptr noundef %fmt.i, ptr noundef %height.i, ptr noundef %frmsize.i) #13
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1, ptr %field.i, align 1
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_planes.i, align 1
  %ops.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %desc.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.end.i.if.end13_crit_edge, label %if.then4.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then4.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 %19(ptr noundef %priv, ptr noundef %f) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then4.i.if.end13_crit_edge, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4.i.if.end13_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then4.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %21)
  %switch.selectcmp.i = icmp eq i32 %21, 1178161238
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([2 x %struct.rkvdec_coded_fmt_desc], ptr @rkvdec_coded_fmts, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967059, i32 %21)
  %switch.selectcmp8.i = icmp eq i32 %21, 875967059
  %switch.select9.i = select i1 %switch.selectcmp8.i, ptr @rkvdec_coded_fmts, ptr %switch.select.i
  %tobool17.not = icmp eq ptr %switch.select9.i, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %switch.select9.i, ptr %coded_fmt_desc, align 4
  %coded_fmt20 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %coded_fmt20, ptr %f, i32 204)
  %decoded_fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2
  %decoded_fmts.i = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %switch.select9.i, i32 0, i32 5
  %24 = ptrtoint ptr %decoded_fmts.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %decoded_fmts.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1
  %29 = call ptr @memset(ptr %28, i32 0, i32 200)
  %pixelformat.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %pixelformat.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %field.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %colorspace.i.i, align 4
  %33 = ptrtoint ptr %decoded_fmt.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9, ptr %decoded_fmt.i, align 4
  %34 = load ptr, ptr %decoded_fmts.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %fmt4.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %fmt4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt4.i, align 4
  %height.i61 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %height.i61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i61, align 4
  %call.i = tail call i32 @v4l2_fill_pixfmt_mp(ptr noundef %28, i32 noundef %36, i32 noundef %38, i32 noundef %40) #13
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %28, align 4
  %sub.i = shl i32 %42, 3
  %43 = add i32 %sub.i, 120
  %mul.i = and i32 %43, -128
  %height10.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height10.i, align 4
  %sub12.i = add i32 %45, 15
  %div1329.i = lshr i32 %sub12.i, 4
  %mul14.i = mul i32 %mul.i, %div1329.i
  %plane_fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 5
  %46 = ptrtoint ptr %plane_fmt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %plane_fmt.i, align 4
  %add17.i = add i32 %mul14.i, %47
  store i32 %add17.i, ptr %plane_fmt.i, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colorspace, align 4
  %50 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %colorspace.i.i, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %51 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %xfer_func, align 4
  %xfer_func26 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 10
  %53 = ptrtoint ptr %xfer_func26 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %xfer_func26, align 4
  %54 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 2
  %57 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %56, ptr %57, align 2
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %59 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %quantization, align 1
  %quantization31 = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 0, i32 9
  %61 = ptrtoint ptr %quantization31 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %quantization31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call7.i, %if.then4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_try_capture_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %coded_fmt_desc = getelementptr inbounds %struct.rkvdec_ctx, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %coded_fmt_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coded_fmt_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !123

for.cond.preheader:                               ; preds = %entry
  %num_decoded_fmts = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_decoded_fmts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_decoded_fmts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp71.not = icmp eq i32 %3, 0
  br i1 %cmp71.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %decoded_fmts = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %decoded_fmts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %decoded_fmts, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pixelformat, align 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 259, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.072
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp24 = icmp eq i32 %9, %7
  br i1 %cmp24, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.if.then29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.then29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.072, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp28 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp28, label %for.end.if.then29_crit_edge, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.then29:                                        ; preds = %for.end.if.then29_crit_edge, %for.inc.if.then29_crit_edge
  %decoded_fmts30 = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %decoded_fmts30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decoded_fmts30, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %pixelformat32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat32 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %pixelformat32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %for.end.if.end33_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %frmsize = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %1, i32 0, i32 1
  tail call void @v4l2_apply_frmsize_constraints(ptr noundef %fmt, ptr noundef %height, ptr noundef %frmsize) #13
  %pixelformat34 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat34 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %pixelformat34, align 1
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fmt, align 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %height, align 1
  %call37 = tail call i32 @v4l2_fill_pixfmt_mp(ptr noundef %fmt, i32 noundef %16, i32 noundef %18, i32 noundef %20) #13
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %fmt, align 1
  %sub = shl i32 %22, 3
  %23 = add i32 %sub, 120
  %mul = and i32 %23, -128
  %24 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %height, align 1
  %sub41 = add i32 %25, 15
  %div4270 = lshr i32 %sub41, 4
  %mul43 = mul i32 %mul, %div4270
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %plane_fmt, align 1
  %add45 = add i32 %mul43, %27
  store i32 %add45, ptr %plane_fmt, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 1, ptr %field, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_try_output_fmt(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pixelformat, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 1178161238
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([2 x %struct.rkvdec_coded_fmt_desc], ptr @rkvdec_coded_fmts, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967059, i32 %1)
  %switch.selectcmp8.i = icmp eq i32 %1, 875967059
  %switch.select9.i = select i1 %switch.selectcmp8.i, ptr @rkvdec_coded_fmts, ptr %switch.select.i
  %tobool.not = icmp eq ptr %switch.select9.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 875967059, ptr %pixelformat, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desc.0 = phi ptr [ %switch.select9.i, %entry.if.end_crit_edge ], [ @rkvdec_coded_fmts, %if.then ]
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %frmsize = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %desc.0, i32 0, i32 1
  tail call void @v4l2_apply_frmsize_constraints(ptr noundef %fmt, ptr noundef %height, ptr noundef %frmsize) #13
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1, ptr %field, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %num_planes, align 1
  %ops = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %desc.0, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call7 = tail call i32 %8(ptr noundef %priv, ptr noundef %f) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup12_crit_edge

if.then4.cleanup12_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup12

cleanup12:                                        ; preds = %if.end11, %if.then4.cleanup12_crit_edge
  %retval.1 = phi i32 [ 0, %if.end11 ], [ %call7, %if.then4.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 1178161238
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([2 x %struct.rkvdec_coded_fmt_desc], ptr @rkvdec_coded_fmts, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967059, i32 %3)
  %switch.selectcmp8.i = icmp eq i32 %3, 875967059
  %switch.select9.i = select i1 %switch.selectcmp8.i, ptr @rkvdec_coded_fmts, ptr %switch.select.i
  %tobool.not = icmp eq ptr %switch.select9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %frmsize = getelementptr inbounds %struct.rkvdec_coded_fmt_desc, ptr %switch.select9.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %5, ptr %frmsize, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_apply_frmsize_constraints(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clocks = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 8
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %3) #13
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clocks = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 8
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 4, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 4, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_bulk_prepare_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_bulk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %3) #13
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_rockchip_vdec__299_1120_rkvdec_driver_init6, !1, !"__initcall__kmod_rockchip_vdec__299_1120_rkvdec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1120, i32 1}
!2 = !{ptr @__exitcall_rkvdec_driver_exit, !1, !"__exitcall_rkvdec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1122, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1123, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1124, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1115, i32 14}
!12 = !{ptr @rkvdec_driver, !13, !"rkvdec_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1111, i32 31}
!14 = !{ptr @rkvdec_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1014, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rkvdec_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1015, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rkvdec_probe.__key.4, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1042, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rkvdec_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rkvdec_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1056, i32 3}
!32 = !{ptr @rkvdec_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rkvdec_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 985, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rkvdec_watchdog_func._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rkvdec_watchdog_func._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 999, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 999, i32 9}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 999, i32 16}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 999, i32 25}
!47 = distinct !{null, !48, !"rkvdec_clk_names", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 998, i32 27}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 878, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rkvdec_v4l2_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rkvdec_v4l2_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 884, i32 3}
!56 = !{ptr @rkvdec_v4l2_init._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rkvdec_v4l2_init._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 891, i32 33}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 910, i32 3}
!62 = !{ptr @rkvdec_v4l2_init._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rkvdec_v4l2_init._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 917, i32 3}
!66 = !{ptr @rkvdec_v4l2_init._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rkvdec_v4l2_init._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 924, i32 3}
!70 = !{ptr @rkvdec_v4l2_init._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rkvdec_v4l2_init._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @rkvdec_m2m_ops, !73, !"rkvdec_m2m_ops", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 715, i32 34}
!74 = !{ptr @rkvdec_media_ops, !75, !"rkvdec_media_ops", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 639, i32 38}
!76 = !{ptr @rkvdec_fops, !77, !"rkvdec_fops", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 863, i32 42}
!78 = !{ptr @rkvdec_coded_fmts, !79, !"rkvdec_coded_fmts", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 126, i32 43}
!80 = !{ptr @rkvdec_h264_ctrls, !81, !"rkvdec_h264_ctrls", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 97, i32 34}
!82 = !{ptr @rkvdec_h264_ctrl_descs, !83, !"rkvdec_h264_ctrl_descs", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 56, i32 38}
!84 = !{ptr @rkvdec_ctrl_ops, !85, !"rkvdec_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 52, i32 35}
!86 = !{ptr @rkvdec_h264_vp9_decoded_fmts, !87, !"rkvdec_h264_vp9_decoded_fmts", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 102, i32 18}
!88 = !{ptr @rkvdec_vp9_ctrls, !89, !"rkvdec_vp9_ctrls", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 121, i32 34}
!90 = !{ptr @rkvdec_vp9_ctrl_descs, !91, !"rkvdec_vp9_ctrl_descs", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 106, i32 38}
!92 = !{ptr @rkvdec_init_ctrls._key, !93, !"_key", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 791, i32 2}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rkvdec_queue_ops, !96, !"rkvdec_queue_ops", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 614, i32 29}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rkvdec_ioctl_ops, !101, !"rkvdec_ioctl_ops", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 443, i32 36}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 240, i32 49}
!104 = !{ptr @of_rkvdec_match, !105, !"of_rkvdec_match", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 992, i32 34}
!106 = !{ptr @rkvdec_pm_ops, !107, !"rkvdec_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/rkvdec/rkvdec.c", i32 1105, i32 32}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2156559690}
!118 = !{i64 4257121}
!119 = !{i64 2156560161}
!120 = !{i64 4257539}
!121 = !{i64 2156555816}
!122 = !{i64 2156556121}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2148267012}
!125 = !{i64 751835, i64 751860, i64 751882, i64 751898, i64 751910, i64 751930, i64 751954, i64 751970, i64 751982}
!126 = !{i64 2148267200}
!127 = !{!"branch_weights", i32 2000, i32 1}
