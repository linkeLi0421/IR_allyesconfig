; ModuleID = '/llk/IR_all_yes/drivers/media/platform/atmel/atmel-isi.c_pt.bc'
source_filename = "../drivers/media/platform/atmel/atmel-isi.c"
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.isi_format = type { i32, i32, i8, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.120, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.120 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.atmel_isi = type { %struct.spinlock, ptr, ptr, i32, ptr, i32, %struct.list_head, [32 x %struct.isi_dma_desc], i8, %struct.completion, ptr, i32, %struct.isi_platform_data, i16, %struct.list_head, ptr, %struct.v4l2_device, ptr, %struct.v4l2_async_notifier, %struct.isi_graph_entity, %struct.v4l2_format, ptr, i32, ptr, %struct.mutex, %struct.vb2_queue }
%struct.isi_dma_desc = type { %struct.list_head, ptr, i32 }
%struct.isi_platform_data = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.isi_graph_entity = type { ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.fbd = type { i32, i32, i32 }
%struct.frame_buffer = type { %struct.vb2_v4l2_buffer, ptr, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.86, i32 }
%union.anon.86 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.117, i16, i16, i16, [10 x i16] }
%union.anon.117 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }

@__initcall__kmod_atmel_isi__311_1374_atmel_isi_driver_init6 = internal global ptr @atmel_isi_driver_init, section ".initcall6.init", align 4
@atmel_isi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_isi_probe, ptr @atmel_isi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_isi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_isi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_isi_driver_exit = internal global ptr @atmel_isi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [45 x i8] c"atmel_isi.author=Josh Wu <josh.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [54 x i8] c"atmel_isi.description=The V4L2 driver for Atmel Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [54 x i8] c"atmel_isi.file=drivers/media/platform/atmel/atmel-isi\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [22 x i8] c"atmel_isi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_isi\00", [22 x i8] zeroinitializer }, align 32
@atmel_isi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-isi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_isi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_isi_runtime_suspend, ptr @atmel_isi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isi_clk\00", [24 x i8] zeroinitializer }, align 32
@atmel_isi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&isi->lock\00", [21 x i8] zeroinitializer }, align 32
@atmel_isi_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&isi->irqlock\00", [18 x i8] zeroinitializer }, align 32
@isi_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @isi_open, ptr @isi_release }, [60 x i8] zeroinitializer }, align 32
@isi_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @isi_querycap, ptr @isi_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @isi_enum_input, ptr @isi_g_input, ptr @isi_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_g_parm, ptr @isi_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @isi_enum_framesizes, ptr @isi_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@isi_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @buffer_init, ptr @buffer_prepare, ptr null, ptr @buffer_cleanup, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@atmel_isi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1251, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize VB2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_isi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/atmel/atmel-isi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_isi_probe._entry_ptr = internal global ptr @atmel_isi_probe._entry, section ".printk_index", align 4
@atmel_isi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1259, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't allocate descriptors!\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_isi_probe._entry_ptr.12 = internal global ptr @atmel_isi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isi\00", [28 x i8] zeroinitializer }, align 32
@atmel_isi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1291, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_isi_probe._entry_ptr.16 = internal global ptr @atmel_isi_probe._entry.14, section ".printk_index", align 4
@atmel_isi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 836, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not find the endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_isi_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@atmel_isi_parse_dt._entry_ptr = internal global ptr @atmel_isi_parse_dt._entry, section ".printk_index", align 4
@atmel_isi_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 843, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not parse the endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_isi_parse_dt._entry_ptr.21 = internal global ptr @atmel_isi_parse_dt._entry.19, section ".printk_index", align 4
@atmel_isi_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.7, i32 857, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported bus width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_isi_parse_dt._entry_ptr.24 = internal global ptr @atmel_isi_parse_dt._entry.22, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-isi\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Atmel Image Sensor Interface\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform:isi\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@queue_setup.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s, count=%d, size=%ld\0A\00", [40 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 318, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s data will not fit into plane (%lu < %lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.7, i32 326, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not enough dma descriptors.\0A\00", [35 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.35 = internal global ptr @buffer_prepare._entry.33, section ".printk_index", align 4
@start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 432, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stream on failed in subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_streaming\00", [16 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr = internal global ptr @start_streaming._entry, section ".printk_index", align 4
@start_streaming._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 439, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset ISI timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.41 = internal global ptr @start_streaming._entry.39, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 370, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Already in frame handling.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_dma\00", [22 x i8] zeroinitializer }, align 32
@start_dma._entry_ptr = internal global ptr @start_dma._entry, section ".printk_index", align 4
@stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 486, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stream off failed in subdev\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_streaming\00", [17 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr = internal global ptr @stop_streaming._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stop_streaming._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.7, i32 506, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Timeout waiting for finishing codec request\0A\00", [51 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.49 = internal global ptr @stop_streaming._entry.47, section ".printk_index", align 4
@stop_streaming._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.7, i32 516, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disable ISI timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.52 = internal global ptr @stop_streaming._entry.50, section ".printk_index", align 4
@isi_graph_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @isi_graph_notify_bound, ptr @isi_graph_notify_complete, ptr @isi_graph_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@isi_graph_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.7, i32 1176, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Notifier registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isi_graph_init\00", [17 x i8] zeroinitializer }, align 32
@isi_graph_init._entry_ptr = internal global ptr @isi_graph_init._entry, section ".printk_index", align 4
@isi_graph_notify_bound.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isi_graph_notify_bound\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subdev %s bound\0A\00", [47 x i8] zeroinitializer }, align 32
@isi_graph_notify_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.7, i32 1095, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No supported mediabus format found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"isi_graph_notify_complete\00", [38 x i8] zeroinitializer }, align 32
@isi_graph_notify_complete._entry_ptr = internal global ptr @isi_graph_notify_complete._entry, section ".printk_index", align 4
@isi_graph_notify_complete._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.7, i32 1100, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't wake up device\0A\00", [42 x i8] zeroinitializer }, align 32
@isi_graph_notify_complete._entry_ptr.61 = internal global ptr @isi_graph_notify_complete._entry.59, section ".printk_index", align 4
@isi_graph_notify_complete._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.7, i32 1106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set default format\0A\00", [34 x i8] zeroinitializer }, align 32
@isi_graph_notify_complete._entry_ptr.64 = internal global ptr @isi_graph_notify_complete._entry.62, section ".printk_index", align 4
@isi_graph_notify_complete._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.7, i32 1112, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@isi_graph_notify_complete._entry_ptr.67 = internal global ptr @isi_graph_notify_complete._entry.65, section ".printk_index", align 4
@isi_graph_notify_complete.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.7, ptr @.str.68, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device registered as %s\0A\00", [39 x i8] zeroinitializer }, align 32
@isi_formats = internal constant { [10 x %struct.isi_format], [32 x i8] } { [10 x %struct.isi_format] [%struct.isi_format { i32 1448695129, i32 8200, i8 2, i32 0 }, %struct.isi_format { i32 1448695129, i32 8201, i8 2, i32 268435456 }, %struct.isi_format { i32 1448695129, i32 8198, i8 2, i32 536870912 }, %struct.isi_format { i32 1448695129, i32 8199, i8 2, i32 805306368 }, %struct.isi_format { i32 1346520914, i32 8200, i8 2, i32 536870912 }, %struct.isi_format { i32 1346520914, i32 8201, i8 2, i32 805306368 }, %struct.isi_format { i32 1346520914, i32 8198, i8 2, i32 0 }, %struct.isi_format { i32 1346520914, i32 8199, i8 2, i32 268435456 }, %struct.isi_format { i32 1497715271, i32 8202, i8 1, i32 8192 }, %struct.isi_format { i32 540422489, i32 8202, i8 2, i32 8192 }], [32 x i8] zeroinitializer }, align 32
@isi_graph_notify_unbind.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.7, ptr @.str.70, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isi_graph_notify_unbind\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Removing %s\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 540422489, i64 876758866, i64 1346520914]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"atmel_isi_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1364, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1366, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"atmel_isi_of_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1358, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"atmel_isi_dev_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1353, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1197, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1207, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1208, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"isi_fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 958, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"isi_ioctl_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 926, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"isi_video_qops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 521, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1251, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1259, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1289, i32 60 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1291, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 836, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 843, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 856, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 687, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 688, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 689, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 700, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 289, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 317, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 326, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 432, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 439, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 87, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 370, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 486, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 505, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 516, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"isi_graph_notify_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1146, i32 52 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1176, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1139, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1095, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1100, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1106, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1112, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1116, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [12 x i8] c"isi_formats\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 989, i32 32 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [44 x i8] c"../drivers/media/platform/atmel/atmel-isi.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1127, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_atmel_isi_driver_exit, ptr @__initcall__kmod_atmel_isi__311_1374_atmel_isi_driver_init6, ptr @atmel_isi_driver_exit, ptr @atmel_isi_parse_dt._entry, ptr @atmel_isi_parse_dt._entry.19, ptr @atmel_isi_parse_dt._entry.22, ptr @atmel_isi_parse_dt._entry_ptr, ptr @atmel_isi_parse_dt._entry_ptr.21, ptr @atmel_isi_parse_dt._entry_ptr.24, ptr @atmel_isi_probe._entry, ptr @atmel_isi_probe._entry.10, ptr @atmel_isi_probe._entry.14, ptr @atmel_isi_probe._entry_ptr, ptr @atmel_isi_probe._entry_ptr.12, ptr @atmel_isi_probe._entry_ptr.16, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.33, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.35, ptr @isi_graph_init._entry, ptr @isi_graph_init._entry_ptr, ptr @isi_graph_notify_complete._entry, ptr @isi_graph_notify_complete._entry.59, ptr @isi_graph_notify_complete._entry.62, ptr @isi_graph_notify_complete._entry.65, ptr @isi_graph_notify_complete._entry_ptr, ptr @isi_graph_notify_complete._entry_ptr.61, ptr @isi_graph_notify_complete._entry_ptr.64, ptr @isi_graph_notify_complete._entry_ptr.67, ptr @start_dma._entry, ptr @start_dma._entry_ptr, ptr @start_streaming._entry, ptr @start_streaming._entry.39, ptr @start_streaming._entry_ptr, ptr @start_streaming._entry_ptr.41, ptr @stop_streaming._entry, ptr @stop_streaming._entry.47, ptr @stop_streaming._entry.50, ptr @stop_streaming._entry_ptr, ptr @stop_streaming._entry_ptr.49, ptr @stop_streaming._entry_ptr.52, ptr @atmel_isi_driver, ptr @.str, ptr @atmel_isi_of_match, ptr @atmel_isi_dev_pm_ops, ptr @.str.1, ptr @atmel_isi_probe.__key, ptr @.str.2, ptr @atmel_isi_probe.__key.3, ptr @.str.4, ptr @isi_fops, ptr @isi_ioctl_ops, ptr @isi_video_qops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @isi_graph_notify_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @isi_formats, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isi_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_notify_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_notify_complete._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_notify_complete._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_graph_notify_complete._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isi_formats to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_isi_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_isi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_isi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1692, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %pclk = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep.i) #10
  %4 = call ptr @memset(ptr %ep.i, i32 0, i32 64)
  %pdata.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12
  %full_mode.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %full_mode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %full_mode.i, align 4
  %frate.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %frate.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frate.i, align 4
  %call.i224 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i224, null
  br i1 %tobool.not.i, label %do.end.i, label %cond.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %atmel_isi_parse_dt.exit.thread

cond.end.i:                                       ; preds = %if.end8
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i224, i32 0, i32 3
  %call4.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %ep.i) #10
  call void @of_node_put(ptr noundef nonnull %call.i224) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %atmel_isi_parse_dt.exit.thread

if.end11.i:                                       ; preds = %cond.end.i
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2
  %bus_width.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_width.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end18.i [
    i8 8, label %if.end11.i.sw.epilog.i_crit_edge
    i8 10, label %sw.bb13.i
  ]

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #13
  br label %atmel_isi_parse_dt.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb13.i, %if.end11.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 3, %sw.bb13.i ], [ 1, %if.end11.i.sw.epilog.i_crit_edge ]
  %data_width_flags15.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %data_width_flags15.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %data_width_flags15.i, align 4
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %sw.epilog.i.if.end29.i_crit_edge, label %if.then27.i

sw.epilog.i.if.end29.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then27.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %hsync_act_low.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %hsync_act_low.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hsync_act_low.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %sw.epilog.i.if.end29.i_crit_edge
  %and33.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.if.end37.i_crit_edge, label %if.then35.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %vsync_act_low.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %vsync_act_low.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %vsync_act_low.i, align 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end29.i.if.end37.i_crit_edge
  %and41.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end37.i.if.end45.i_crit_edge, label %if.then43.i

if.end37.i.if.end45.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %pclk_act_falling.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 12, i32 3
  %15 = ptrtoint ptr %pclk_act_falling.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pclk_act_falling.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.end37.i.if.end45.i_crit_edge
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 1
  %16 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i225 = icmp eq i32 %17, 2
  br i1 %cmp.i225, label %if.then47.i, label %if.end45.i.if.end12_crit_edge

if.end45.i.if.end12_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pdata.i, align 4
  br label %if.end12

atmel_isi_parse_dt.exit.thread:                   ; preds = %do.end18.i, %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end18.i ], [ %call4.i, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then47.i, %if.end45.i.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #10
  %active = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 15
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %active, align 4
  %dev14 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev14, align 4
  %lock = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 24
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @atmel_isi_probe.__key) #10
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @atmel_isi_probe.__key.3, i16 noundef signext 3) #10
  %video_buffer_list = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 14
  %21 = ptrtoint ptr %video_buffer_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %video_buffer_list, ptr %video_buffer_list, align 4
  %prev.i = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 14, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %video_buffer_list, ptr %prev.i, align 4
  %dma_desc_head = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %dma_desc_head, ptr %dma_desc_head, align 4
  %prev.i226 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dma_desc_head, ptr %prev.i226, align 4
  %queue = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25
  %v4l2_dev = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 16
  %call20 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call24 = call ptr @video_device_alloc() #10
  %vdev = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 17
  %25 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call24, ptr %vdev, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end23.err_vdev_alloc_crit_edge, label %if.end28

if.end23.err_vdev_alloc_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_vdev_alloc

if.end28:                                         ; preds = %if.end23
  %fops = getelementptr inbounds %struct.video_device, ptr %call24, i32 0, i32 3
  %26 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @isi_fops, ptr %fops, align 4
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 4
  %v4l2_dev32 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %v4l2_dev32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %v4l2_dev, ptr %v4l2_dev32, align 4
  %30 = load ptr, ptr %vdev, align 4
  %queue35 = getelementptr inbounds %struct.video_device, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %queue35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %queue, ptr %queue35, align 8
  %32 = load ptr, ptr %vdev, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %32, i32 0, i32 12
  %call37 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #10
  %33 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdev, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @video_device_release, ptr %release, align 8
  %36 = load ptr, ptr %vdev, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @isi_ioctl_ops, ptr %ioctl_ops, align 4
  %38 = load ptr, ptr %vdev, align 4
  %lock42 = getelementptr inbounds %struct.video_device, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %lock42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %lock, ptr %lock42, align 8
  %40 = load ptr, ptr %vdev, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 83886081, ptr %device_caps, align 8
  %42 = load ptr, ptr %vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %42, i32 0, i32 5, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %44 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 1
  %45 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 21, ptr %io_modes, align 4
  %lock46 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 5
  %46 = ptrtoint ptr %lock46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %lock, ptr %lock46, align 4
  %drv_priv = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 10
  %47 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 12
  %48 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 752, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 7
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @isi_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 8
  %50 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 13
  %51 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 15
  %52 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %min_buffers_needed, align 4
  %dev48 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 25, i32 2
  %53 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %dev48, align 4
  %call49 = call i32 @vb2_queue_init(ptr noundef %queue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  br label %err_vb2_queue

if.end55:                                         ; preds = %if.end28
  %fb_descriptors_phys = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 5
  %call.i227 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 384, ptr noundef %fb_descriptors_phys, i32 noundef 3264, i32 noundef 0) #10
  %p_fb_descriptors = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %p_fb_descriptors to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i227, ptr %p_fb_descriptors, align 4
  %tobool59.not = icmp eq ptr %call.i227, null
  br i1 %tobool59.not, label %do.end63, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %err_vb2_queue

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %if.end55.for.body_crit_edge
  %i.0233 = phi i32 [ %inc, %list_add.exit.for.body_crit_edge ], [ 0, %if.end55.for.body_crit_edge ]
  %55 = ptrtoint ptr %p_fb_descriptors to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p_fb_descriptors, align 4
  %add.ptr = getelementptr %struct.fbd, ptr %56, i32 %i.0233
  %arrayidx = getelementptr %struct.atmel_isi, ptr %call.i, i32 0, i32 7, i32 %i.0233
  %p_fbd = getelementptr %struct.atmel_isi, ptr %call.i, i32 0, i32 7, i32 %i.0233, i32 1
  %57 = ptrtoint ptr %p_fbd to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %p_fbd, align 4
  %58 = ptrtoint ptr %fb_descriptors_phys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fb_descriptors_phys, align 4
  %mul = mul nuw nsw i32 %i.0233, 12
  %add = add i32 %59, %mul
  %fbd_phys = getelementptr %struct.atmel_isi, ptr %call.i, i32 0, i32 7, i32 %i.0233, i32 2
  %60 = ptrtoint ptr %fbd_phys to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %fbd_phys, align 4
  %61 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_desc_head, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %dma_desc_head, ptr noundef %62) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dma_desc_head, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx, ptr %dma_desc_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.0233, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add.exit
  %call74 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call76 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call74) #10
  %regs77 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %regs77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call76, ptr %regs77, align 4
  %cmp.i228 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then80, label %if.end83

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %call76 to i32
  br label %err_ioremap

if.end83:                                         ; preds = %for.end
  %69 = ptrtoint ptr %data_width_flags15.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_width_flags15.i, align 4
  %and = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.end83.if.end86_crit_edge, label %if.then85

if.end83.if.end86_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %width_flags = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 13
  %71 = ptrtoint ptr %width_flags to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 128, ptr %width_flags, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end83.if.end86_crit_edge
  %72 = ptrtoint ptr %data_width_flags15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_width_flags15.i, align 4
  %and89 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end94_crit_edge, label %if.then91

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %width_flags92 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 13
  %74 = ptrtoint ptr %width_flags92 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %width_flags92, align 4
  %76 = or i16 %75, 512
  store i16 %76, ptr %width_flags92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end86.if.end94_crit_edge
  %call95 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end94.err_ioremap_crit_edge, label %if.end99

if.end94.err_ioremap_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ioremap

if.end99:                                         ; preds = %if.end94
  %call.i229 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call95, ptr noundef nonnull @isi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool102.not = icmp eq i32 %call.i229, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call95) #13
  br label %err_ioremap

if.end108:                                        ; preds = %if.end99
  %irq109 = getelementptr inbounds %struct.atmel_isi, ptr %call.i, i32 0, i32 11
  %77 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call95, ptr %irq109, align 4
  %call110 = call fastcc i32 @isi_graph_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end108.err_ioremap_crit_edge, label %if.end114

if.end108.err_ioremap_crit_edge:                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ioremap

if.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %78 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %driver_data.i.i230 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %79 = ptrtoint ptr %driver_data.i.i230 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data.i.i230, align 4
  br label %cleanup

err_ioremap:                                      ; preds = %if.end108.err_ioremap_crit_edge, %do.end106, %if.end94.err_ioremap_crit_edge, %if.then80
  %ret.0 = phi i32 [ %68, %if.then80 ], [ %call.i229, %do.end106 ], [ %call110, %if.end108.err_ioremap_crit_edge ], [ %call95, %if.end94.err_ioremap_crit_edge ]
  %80 = ptrtoint ptr %p_fb_descriptors to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p_fb_descriptors, align 4
  %82 = ptrtoint ptr %fb_descriptors_phys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fb_descriptors_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 384, ptr noundef %81, i32 noundef %83, i32 noundef 0) #10
  br label %err_vb2_queue

err_vb2_queue:                                    ; preds = %err_ioremap, %do.end63, %do.end53
  %ret.1 = phi i32 [ %call49, %do.end53 ], [ %ret.0, %err_ioremap ], [ -12, %do.end63 ]
  %84 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vdev, align 4
  call void @video_device_release(ptr noundef %85) #10
  br label %err_vdev_alloc

err_vdev_alloc:                                   ; preds = %err_vb2_queue, %if.end23.err_vdev_alloc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_vb2_queue ], [ -12, %if.end23.err_vdev_alloc_crit_edge ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_vdev_alloc, %if.end114, %if.end12.cleanup_crit_edge, %atmel_isi_parse_dt.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %ret.2, %err_vdev_alloc ], [ 0, %if.end114 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end12.cleanup_crit_edge ], [ %retval.0.i.ph, %atmel_isi_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %p_fb_descriptors = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %p_fb_descriptors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_fb_descriptors, align 4
  %fb_descriptors_phys = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fb_descriptors_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_descriptors_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 384, ptr noundef %3, i32 noundef %5, i32 noundef 0) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %notifier = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 18
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #10
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  %v4l2_dev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 16
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #10
  %regs.i = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %4, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %complete) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 67108864) #10, !srcloc !166
  br label %if.end23

if.else:                                          ; preds = %entry
  %and3 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %complete6 = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %complete6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 33554432) #10, !srcloc !166
  br label %if.end23

if.else7:                                         ; preds = %if.else
  %and8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.else7.if.then20_crit_edge, !prof !167

if.else7.if.then20_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.else7
  %and12 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then20_crit_edge, !prof !167

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.else7.if.then20_crit_edge
  %active.i = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 15
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then20.if.end.i_crit_edge, label %if.then.i

if.then20.if.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then20
  %list.i = getelementptr inbounds %struct.frame_buffer, ptr %13, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.frame_buffer, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.frame_buffer, ptr %13, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %call.i.i = tail call i64 @ktime_get() #10
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  %22 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %sequence.i = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 3
  %23 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence3.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 4
  %25 = ptrtoint ptr %sequence3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sequence3.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %field.i, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef 5) #10
  br label %if.end.i

if.end.i:                                         ; preds = %list_del_init.exit.i, %if.then20.if.end.i_crit_edge
  %video_buffer_list.i = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 14
  %27 = ptrtoint ptr %video_buffer_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %video_buffer_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %28, %video_buffer_list.i
  br i1 %cmp.i.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %active.i, align 4
  br label %if.end23

if.else.i:                                        ; preds = %if.end.i
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 -740
  %30 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i42, ptr %active.i, align 4
  %enable_preview_path.i = getelementptr inbounds %struct.atmel_isi, ptr %dev_id, i32 0, i32 8
  %31 = ptrtoint ptr %enable_preview_path.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_preview_path.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not.i = icmp eq i8 %32, 0
  %p_dma_desc.i = getelementptr i8, ptr %28, i32 -4
  %33 = ptrtoint ptr %p_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_dma_desc.i, align 8
  %fbd_phys.i = getelementptr inbounds %struct.isi_dma_desc, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %fbd_phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fbd_phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 150994944) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %43, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 33554432) #10, !srcloc !166
  br label %if.end23

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i6.i = getelementptr i8, ptr %39, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %37) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %45, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 150994944) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %47, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #10, !srcloc !166
  br label %if.end23

if.end23:                                         ; preds = %if.else14.i, %if.then12.i, %if.then7.i, %lor.lhs.false.if.end23_crit_edge, %if.then5, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 1, %if.then5 ], [ 0, %lor.lhs.false.if.end23_crit_edge ], [ 1, %if.then7.i ], [ 1, %if.then12.i ], [ 1, %if.else14.i ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isi_graph_init(ptr noundef %isi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %notifier = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 18
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #10
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call3 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %fwnode, i32 noundef 28) #10
  tail call void @of_node_put(ptr noundef nonnull %call) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @isi_graph_notify_ops, ptr %notifier, align 4
  %v4l2_dev = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 16
  %call10 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.53) #13
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call10, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %lock = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 24
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end4:                                          ; preds = %if.end
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i108 = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool6.not = icmp eq i32 %call.i108, 0
  br i1 %tobool6.not, label %if.end4.fh_rel_crit_edge, label %if.end8

if.end4.fh_rel_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fh_rel

if.end8:                                          ; preds = %if.end4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.if.end31_crit_edge, label %if.else

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else:                                          ; preds = %if.end8
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.else.if.end36_crit_edge, label %land.lhs.true

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true.if.end36_crit_edge, label %if.else16

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %s_power19 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power19, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.if.end31.sink.split_crit_edge

land.lhs.true18.if.end31.sink.split_crit_edge:    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else24, %land.lhs.true18.if.end31.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else24 ], [ %14, %land.lhs.true18.if.end31.sink.split_crit_edge ]
  %call28 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 1) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end8.if.end31_crit_edge
  %__result.0 = phi i32 [ -19, %if.end8.if.end31_crit_edge ], [ %call28, %if.end31.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp32 = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp34.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp32, %cmp34.not
  br i1 %or.cond, label %if.end31.if.end36_crit_edge, label %if.end31.if.then73_crit_edge

if.end31.if.then73_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.end31.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge
  %fmt = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 20
  %call37 = tail call fastcc i32 @isi_set_fmt(ptr noundef %1, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %brmerge = select i1 %tobool38.not, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %if.end36.fh_rel_crit_edge, label %if.else44

if.end36.fh_rel_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %fh_rel

if.else44:                                        ; preds = %if.end36
  %ops45 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %ops45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops45, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool47.not = icmp eq ptr %18, null
  br i1 %tobool47.not, label %if.else44.if.then73_crit_edge, label %land.lhs.true48

if.else44.if.then73_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73

land.lhs.true48:                                  ; preds = %if.else44
  %s_power51 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_power51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_power51, align 4
  %tobool52.not = icmp eq ptr %20, null
  br i1 %tobool52.not, label %land.lhs.true48.if.then73_crit_edge, label %if.else54

land.lhs.true48.if.then73_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73

if.else54:                                        ; preds = %land.lhs.true48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %21 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool55.not = icmp eq ptr %21, null
  br i1 %tobool55.not, label %if.else54.if.else62_crit_edge, label %land.lhs.true56

if.else54.if.else62_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

land.lhs.true56:                                  ; preds = %if.else54
  %s_power57 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_power57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_power57, align 4
  %tobool58.not = icmp eq ptr %23, null
  br i1 %tobool58.not, label %land.lhs.true56.if.else62_crit_edge, label %land.lhs.true56.if.then73.sink.split_crit_edge

land.lhs.true56.if.then73.sink.split_crit_edge:   ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split

land.lhs.true56.if.else62_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

if.else62:                                        ; preds = %land.lhs.true56.if.else62_crit_edge, %if.else54.if.else62_crit_edge
  br label %if.then73.sink.split

fh_rel:                                           ; preds = %if.end36.fh_rel_crit_edge, %if.end4.fh_rel_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end36.fh_rel_crit_edge ], [ %call2, %if.end4.fh_rel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool72.not = icmp eq i32 %ret.0, 0
  br i1 %tobool72.not, label %fh_rel.unlock_crit_edge, label %fh_rel.if.then73_crit_edge

fh_rel.if.then73_crit_edge:                       ; preds = %fh_rel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73

fh_rel.unlock_crit_edge:                          ; preds = %fh_rel
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then73.sink.split:                             ; preds = %if.else62, %land.lhs.true56.if.then73.sink.split_crit_edge
  %.sink116 = phi ptr [ %20, %if.else62 ], [ %23, %land.lhs.true56.if.then73.sink.split_crit_edge ]
  %call61 = tail call i32 %.sink116(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %if.then73

if.then73:                                        ; preds = %if.then73.sink.split, %fh_rel.if.then73_crit_edge, %land.lhs.true48.if.then73_crit_edge, %if.else44.if.then73_crit_edge, %if.end31.if.then73_crit_edge
  %ret.0115 = phi i32 [ %ret.0, %fh_rel.if.then73_crit_edge ], [ %call37, %land.lhs.true48.if.then73_crit_edge ], [ %call37, %if.else44.if.then73_crit_edge ], [ %__result.0, %if.end31.if.then73_crit_edge ], [ %call37, %if.then73.sink.split ]
  %call74 = tail call i32 @v4l2_fh_release(ptr noundef %file) #10
  br label %unlock

unlock:                                           ; preds = %if.then73, %fh_rel.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.unlock_crit_edge ], [ %ret.0115, %if.then73 ], [ 0, %fh_rel.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %lock = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i40 = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not = icmp eq i32 %call.i40, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #10
  %tobool4.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.end26_crit_edge, label %if.else

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_power14 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else19 ], [ %14, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %entry.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isi_set_fmt(ptr nocapture noundef %isi, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  %current_fmt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #10
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_fmt) #10
  %3 = ptrtoint ptr %current_fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %current_fmt, align 4, !annotation !169
  %call = call fastcc i32 @isi_try_fmt(ptr noundef %isi, ptr noundef %f, ptr noundef nonnull %current_fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_fmt, align 4
  %mbus_code = getelementptr inbounds %struct.isi_format, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus_code, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %10 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %colorspace4.i, align 4
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %conv.i = trunc i32 %22 to i16
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %23, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %26 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %29 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %code9.i, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdev, align 4
  %tobool2.not = icmp eq ptr %33, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pad, align 4
  %tobool4.not = icmp eq ptr %37, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_fmt, align 4
  %tobool7.not = icmp eq ptr %39, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.else9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not = icmp eq ptr %40, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %set_fmt12 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %set_fmt12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_fmt12, align 4
  %tobool13.not = icmp eq ptr %42, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.if.end24_crit_edge

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %land.lhs.true11.if.end24_crit_edge
  %.sink = phi ptr [ %39, %if.else17 ], [ %42, %land.lhs.true11.if.end24_crit_edge ]
  %call21 = call i32 %.sink(ptr noundef nonnull %33, ptr noundef null, ptr noundef nonnull %format) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %fmt27 = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 20
  %43 = call ptr @memcpy(ptr %fmt27, ptr %f, i32 204)
  %44 = ptrtoint ptr %current_fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_fmt, align 4
  %current_fmt28 = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 23
  %46 = ptrtoint ptr %current_fmt28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %current_fmt28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ %call21, %if.end24.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_fmt) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isi_try_fmt(ptr nocapture noundef readonly %isi, ptr nocapture noundef %f, ptr noundef writeonly %current_fmt) unnamed_addr #2 align 64 {
entry:
  %fse.i = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #10
  %0 = call ptr @memset(ptr %pad_cfg, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #10
  %1 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #10
  %2 = call ptr @memset(ptr %format, i32 0, i32 88)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixelformat, align 4
  %num_user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 22
  %5 = ptrtoint ptr %num_user_formats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_user_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not.i = icmp eq i32 %6, 0
  br i1 %cmp9.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 21
  %7 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.if.then_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %4)
  %cmp2.i = icmp eq i32 %12, %4
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.if.then_crit_edge, label %find_format_by_fourcc.exit.if.end_crit_edge

find_format_by_fourcc.exit.if.end_crit_edge:      ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

find_format_by_fourcc.exit.if.then_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %find_format_by_fourcc.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %user_formats = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 21
  %13 = ptrtoint ptr %user_formats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_formats, align 4
  %sub = add i32 %6, -1
  %arrayidx = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %find_format_by_fourcc.exit.if.end_crit_edge
  %isi_fmt.0 = phi ptr [ %10, %find_format_by_fourcc.exit.if.end_crit_edge ], [ %16, %if.then ]
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %22 = call i32 @llvm.umin.i32(i32 %21, i32 2048)
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 2048)
  %27 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height, align 4
  %format22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mbus_code = getelementptr inbounds %struct.isi_format, ptr %isi_fmt.0, i32 0, i32 1
  %28 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mbus_code, align 4
  %30 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %22, ptr %format22, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %colorspace4.i, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %conv.i = trunc i32 %40 to i16
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %41, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %44 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %47 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %48 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %29, ptr %code9.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse.i) #10
  %50 = call ptr @memset(ptr %fse.i, i32 0, i32 64)
  %code.i = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse.i, i32 0, i32 2
  %51 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mbus_code, align 4
  %53 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %code.i, align 4
  %subdev.i = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 19, i32 1
  %54 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %subdev.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end.if.then21.i_crit_edge, label %if.else.i

if.end.if.then21.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.else.i:                                        ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pad.i, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %if.else.i.if.then21.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %enum_frame_size.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %enum_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enum_frame_size.i, align 4
  %tobool4.not.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then21.i_crit_edge, label %if.else6.i

land.lhs.true.i.if.then21.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i = icmp eq ptr %62, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %enum_frame_size9.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %enum_frame_size9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %enum_frame_size9.i, align 4
  %tobool10.not.i = icmp eq ptr %64, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.i_crit_edge

land.lhs.true8.i.if.end19.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.i_crit_edge
  %.sink.i = phi ptr [ %61, %if.else13.i ], [ %64, %land.lhs.true8.i.if.end19.i_crit_edge ]
  %call17.i = call i32 %.sink.i(ptr noundef nonnull %55, ptr noundef nonnull %pad_state, ptr noundef nonnull %fse.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool20.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %if.end19.i.if.then21.i_crit_edge

if.end19.i.if.then21.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i.if.then21.i_crit_edge, %land.lhs.true.i.if.then21.i_crit_edge, %if.else.i.if.then21.i_crit_edge, %if.end.if.then21.i_crit_edge
  %65 = ptrtoint ptr %pad_state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pad_state, align 4
  %width.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %66, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2048, ptr %width.i, align 4
  br label %isi_try_fse.exit

if.else24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_width.i = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse.i, i32 0, i32 4
  %68 = ptrtoint ptr %max_width.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_width.i, align 4
  %70 = ptrtoint ptr %pad_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pad_state, align 4
  %width27.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %71, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %width27.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %width27.i, align 4
  %max_height.i = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse.i, i32 0, i32 6
  %73 = ptrtoint ptr %max_height.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_height.i, align 4
  br label %isi_try_fse.exit

isi_try_fse.exit:                                 ; preds = %if.else24.i, %if.then21.i
  %.sink47.i = phi i32 [ %74, %if.else24.i ], [ 2048, %if.then21.i ]
  %75 = ptrtoint ptr %pad_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pad_state, align 4
  %height30.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %76, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %height30.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink47.i, ptr %height30.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse.i) #10
  %78 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %subdev.i, align 4
  %tobool23.not = icmp eq ptr %79, null
  br i1 %tobool23.not, label %isi_try_fse.exit.cleanup_crit_edge, label %if.else

isi_try_fse.exit.cleanup_crit_edge:               ; preds = %isi_try_fse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %isi_try_fse.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pad, align 4
  %tobool25.not = icmp eq ptr %83, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_fmt, align 4
  %tobool28.not = icmp eq ptr %85, null
  br i1 %tobool28.not, label %land.lhs.true.cleanup_crit_edge, label %if.else30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else30:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool31.not = icmp eq ptr %86, null
  br i1 %tobool31.not, label %if.else30.if.else38_crit_edge, label %land.lhs.true32

if.else30.if.else38_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

land.lhs.true32:                                  ; preds = %if.else30
  %set_fmt33 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %set_fmt33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_fmt33, align 4
  %tobool34.not = icmp eq ptr %88, null
  br i1 %tobool34.not, label %land.lhs.true32.if.else38_crit_edge, label %land.lhs.true32.if.end45_crit_edge

land.lhs.true32.if.end45_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true32.if.else38_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.else38:                                        ; preds = %land.lhs.true32.if.else38_crit_edge, %if.else30.if.else38_crit_edge
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %land.lhs.true32.if.end45_crit_edge
  %.sink = phi ptr [ %85, %if.else38 ], [ %88, %land.lhs.true32.if.end45_crit_edge ]
  %call42 = call i32 %.sink(ptr noundef nonnull %79, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp47 = icmp slt i32 %call42, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %89 = ptrtoint ptr %format22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %format22, align 4
  %91 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %fmt, align 4
  %92 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height2.i, align 4
  %94 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %height, align 4
  %95 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %colorspace4.i, align 4
  %97 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %colorspace.i, align 4
  %98 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %41, align 4
  %conv.i111 = zext i16 %99 to i32
  %100 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv.i111, ptr %38, align 4
  %101 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %quantization6.i, align 2
  %conv5.i113 = zext i16 %102 to i32
  %103 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv5.i113, ptr %quantization.i, align 4
  %104 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i116 = zext i16 %105 to i32
  %106 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv7.i116, ptr %xfer_func.i, align 4
  %107 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %field.i, align 4
  %bpp = getelementptr inbounds %struct.isi_format, ptr %isi_fmt.0, i32 0, i32 2
  %108 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bpp, align 4
  %conv = zext i8 %109 to i32
  %mul = mul i32 %90, %conv
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %110 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul, ptr %bytesperline, align 4
  %mul54 = mul i32 %mul, %93
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %111 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul54, ptr %sizeimage, align 4
  %tobool55.not = icmp eq ptr %current_fmt, null
  br i1 %tobool55.not, label %if.end49.cleanup_crit_edge, label %if.then56

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %current_fmt to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %isi_fmt.0, ptr %current_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %isi_try_fse.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end45.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %if.end49.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %isi_try_fse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.25, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.26, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.27, i32 noundef 32) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %num_user_formats = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %num_user_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_user_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_formats = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %user_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_formats, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 20
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %streaming.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 25, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @isi_set_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @isi_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.28, i32 noundef 32) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @isi_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isi_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %a) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %a) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #10
  %2 = getelementptr inbounds i8, ptr %fse, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsize, align 4
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fse, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %7 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %num_user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %num_user_formats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_user_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not.i = icmp eq i32 %11, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.010.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp2.i = icmp eq i32 %17, %9
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

find_format_by_fourcc.exit.cleanup_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %find_format_by_fourcc.exit
  %mbus_code = getelementptr inbounds %struct.isi_format, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subdev, align 4
  %tobool3.not = icmp eq ptr %22, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pad, align 4
  %tobool5.not = icmp eq ptr %26, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enum_frame_size, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %enum_frame_size13 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %enum_frame_size13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enum_frame_size13, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %land.lhs.true12.if.end25_crit_edge
  %.sink = phi ptr [ %28, %if.else18 ], [ %31, %land.lhs.true12.if.end25_crit_edge ]
  %call22 = call i32 %.sink(ptr noundef nonnull %22, ptr noundef null, ptr noundef nonnull %fse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_width, align 4
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %37 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_height, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_format_by_fourcc.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %find_format_by_fourcc.exit.cleanup_crit_edge ], [ %call22, %if.end25.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #2 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #10
  %2 = getelementptr inbounds i8, ptr %fie, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fival, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %13 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %14 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_format, align 4
  %num_user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %num_user_formats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_user_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.not.i = icmp eq i32 %17, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %user_formats.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.010.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp2.i = icmp eq i32 %23, %15
  br i1 %cmp2.i, label %find_format_by_fourcc.exit, label %for.cond.i

find_format_by_fourcc.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %find_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

find_format_by_fourcc.exit.cleanup_crit_edge:     ; preds = %find_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %find_format_by_fourcc.exit
  %mbus_code = getelementptr inbounds %struct.isi_format, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %26 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subdev, align 4
  %tobool5.not = icmp eq ptr %28, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %32, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enum_frame_interval, align 4
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %35, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %enum_frame_interval15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %enum_frame_interval15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enum_frame_interval15, align 4
  %tobool16.not = icmp eq ptr %37, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %34, %if.else20 ], [ %37, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %fie) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type, align 4
  %39 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %40 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %interval, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_format_by_fourcc.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %find_format_by_fourcc.exit.cleanup_crit_edge ], [ %call24, %if.end27.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %sizes, align 4
  %active = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_setup.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_setup, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !170

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @queue_setup.__UNIQUE_ID_ddebug299, ptr noundef %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %14, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_init(ptr noundef %vb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dma_desc = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 1
  %0 = ptrtoint ptr %p_dma_desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_dma_desc, align 8
  %list = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 2
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit50_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit50_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit50

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp56 = icmp ult i32 %9, %5
  br i1 %cmp56, label %vb2_plane_size.exit.thread.vb2_plane_size.exit50_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit50_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit50

vb2_plane_size.exit50:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit50_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit50_crit_edge
  %retval.0.i49 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit50_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit50_crit_edge ]
  %.in = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i49, i32 noundef %5) #13
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %p_dma_desc = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 1
  %13 = ptrtoint ptr %p_dma_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_dma_desc, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.then7, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %vb2_set_plane_payload.exit
  %dma_desc_head = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %dma_desc_head, align 4
  %cmp.i.not = icmp eq ptr %16, %dma_desc_head
  br i1 %cmp.i.not, label %do.end13, label %if.else

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.else:                                          ; preds = %if.then7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %16, ptr %prev.i3.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i, align 4
  %p_fbd = getelementptr inbounds %struct.isi_dma_desc, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %p_fbd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_fbd, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %30, align 4
  %32 = load ptr, ptr %p_fbd, align 4
  %next_fbd_address = getelementptr inbounds %struct.fbd, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %next_fbd_address to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %next_fbd_address, align 4
  %34 = load ptr, ptr %p_fbd, align 4
  %dma_ctrl.i = getelementptr inbounds %struct.fbd, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %dma_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %dma_ctrl.i, align 4
  %36 = ptrtoint ptr %p_dma_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %16, ptr %p_dma_desc, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %do.end13, %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit50
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit50 ], [ -22, %do.end13 ], [ 0, %list_del_init.exit ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_cleanup(ptr nocapture noundef readonly %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dma_desc = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 1
  %0 = ptrtoint ptr %p_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dma_desc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %dma_desc_head = getelementptr inbounds %struct.atmel_isi, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_desc_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %dma_desc_head, ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dma_desc_head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %1, ptr %dma_desc_head, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.else

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.else.if.end29_crit_edge, label %land.lhs.true

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true.if.end29_crit_edge, label %if.else8

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_stream11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_stream11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_stream11, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end23_crit_edge

land.lhs.true10.if.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %land.lhs.true10.if.end23_crit_edge
  %.sink = phi ptr [ %12, %if.else16 ], [ %15, %land.lhs.true10.if.end23_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %6, i32 noundef 1) #10
  %16 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call20, label %if.end23.do.end_crit_edge [
    i32 0, label %if.end23.if.end29_crit_edge
    i32 -515, label %if.end23.if.end29_crit_edge155
  ]

if.end23.if.end29_crit_edge155:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end23.do.end_crit_edge, %if.end.do.end_crit_edge
  %__result.0151 = phi i32 [ %call20, %if.end23.do.end_crit_edge ], [ -19, %if.end.do.end_crit_edge ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.37) #13
  br label %err_start_stream

if.end29:                                         ; preds = %if.end23.if.end29_crit_edge, %if.end23.if.end29_crit_edge155, %land.lhs.true.if.end29_crit_edge, %if.else.if.end29_crit_edge
  %complete.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %regs.i12.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 67108864) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 67108864) #10, !srcloc !166
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i142 = icmp eq i32 %call2.i, 0
  br i1 %cmp.i142, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end29
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.40) #13
  %26 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdev, align 4
  %tobool44.not = icmp eq ptr %27, null
  br i1 %tobool44.not, label %do.end35.err_start_stream_crit_edge, label %if.else46

do.end35.err_start_stream_crit_edge:              ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_start_stream

if.end37:                                         ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !166
  %sequence = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sequence, align 4
  %current_fmt.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 23
  %31 = ptrtoint ptr %current_fmt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %current_fmt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %34, label %lor.rhs.i [
    i32 1346520914, label %if.end37.configure_geometry.exit_crit_edge
    i32 876758866, label %if.end37.configure_geometry.exit_crit_edge156
    i32 540422489, label %if.end37.configure_geometry.exit_crit_edge157
  ]

if.end37.configure_geometry.exit_crit_edge157:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_geometry.exit

if.end37.configure_geometry.exit_crit_edge156:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_geometry.exit

if.end37.configure_geometry.exit_crit_edge:       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_geometry.exit

lor.rhs.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_geometry.exit

configure_geometry.exit:                          ; preds = %lor.rhs.i, %if.end37.configure_geometry.exit_crit_edge, %if.end37.configure_geometry.exit_crit_edge156, %if.end37.configure_geometry.exit_crit_edge157
  %36 = phi i1 [ true, %if.end37.configure_geometry.exit_crit_edge ], [ false, %lor.rhs.i ], [ true, %if.end37.configure_geometry.exit_crit_edge156 ], [ true, %if.end37.configure_geometry.exit_crit_edge157 ]
  %enable_preview_path.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 8
  %frombool.i = zext i1 %36 to i8
  %37 = ptrtoint ptr %enable_preview_path.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %enable_preview_path.i, align 4
  %swap.i = getelementptr inbounds %struct.isi_format, ptr %32, i32 0, i32 3
  %38 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %swap.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #10, !srcloc !166
  %fmt5.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 20, i32 1
  %42 = ptrtoint ptr %fmt5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt5.i, align 4
  %sub.i = shl i32 %43, 16
  %shl.i = add i32 %sub.i, 134152192
  %and.i = and i32 %shl.i, 134152192
  %or.i = or i32 %and.i, %39
  %height.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  %sub8.i = add i32 %45, 2047
  %and10.i = and i32 %sub8.i, 2047
  %or11.i = or i32 %or.i, %and10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #10
  %47 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %46) #10, !srcloc !166
  %49 = ptrtoint ptr %fmt5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fmt5.i, align 4
  %sub15.i = shl i32 %50, 16
  %shl16.i = add i32 %sub15.i, 67043328
  %and17.i = and i32 %shl16.i, 67043328
  %51 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height.i, align 4
  %sub21.i = add i32 %52, 1023
  %and23.i = and i32 %sub21.i, 1023
  %or24.i = or i32 %and17.i, %and23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #10
  %54 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %53) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 268435456) #10, !srcloc !166
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %58 = ptrtoint ptr %regs.i12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i12.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %active = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 15
  %61 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %active, align 4
  tail call fastcc void @start_dma(ptr noundef %1, ptr noundef %62)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

if.else46:                                        ; preds = %do.end35
  %ops47 = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 6
  %63 = ptrtoint ptr %ops47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops47, align 4
  %video48 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %video48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %video48, align 4
  %tobool49.not = icmp eq ptr %66, null
  br i1 %tobool49.not, label %if.else46.err_start_stream_crit_edge, label %land.lhs.true50

if.else46.err_start_stream_crit_edge:             ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_start_stream

land.lhs.true50:                                  ; preds = %if.else46
  %s_stream53 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %s_stream53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_stream53, align 4
  %tobool54.not = icmp eq ptr %68, null
  br i1 %tobool54.not, label %land.lhs.true50.err_start_stream_crit_edge, label %if.else56

land.lhs.true50.err_start_stream_crit_edge:       ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_start_stream

if.else56:                                        ; preds = %land.lhs.true50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool57.not = icmp eq ptr %69, null
  br i1 %tobool57.not, label %if.else56.if.else64_crit_edge, label %land.lhs.true58

if.else56.if.else64_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

land.lhs.true58:                                  ; preds = %if.else56
  %s_stream59 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_stream59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_stream59, align 4
  %tobool60.not = icmp eq ptr %71, null
  br i1 %tobool60.not, label %land.lhs.true58.if.else64_crit_edge, label %if.then61

land.lhs.true58.if.else64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 %71(ptr noundef nonnull %27, i32 noundef 0) #10
  br label %err_start_stream

if.else64:                                        ; preds = %land.lhs.true58.if.else64_crit_edge, %if.else56.if.else64_crit_edge
  %call68 = tail call i32 %68(ptr noundef nonnull %27, i32 noundef 0) #10
  br label %err_start_stream

err_start_stream:                                 ; preds = %if.else64, %if.then61, %land.lhs.true50.err_start_stream_crit_edge, %if.else46.err_start_stream_crit_edge, %do.end35.err_start_stream_crit_edge, %do.end
  %ret.0 = phi i32 [ %__result.0151, %do.end ], [ -110, %if.else46.err_start_stream_crit_edge ], [ -110, %land.lhs.true50.err_start_stream_crit_edge ], [ -110, %do.end35.err_start_stream_crit_edge ], [ -110, %if.else64 ], [ -110, %if.then61 ]
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %call.i145 = tail call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 5) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %active76 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 15
  %74 = ptrtoint ptr %active76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %active76, align 4
  %video_buffer_list = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %video_buffer_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %video_buffer_list, align 4
  %cmp84.not152 = icmp eq ptr %76, %video_buffer_list
  br i1 %cmp84.not152, label %err_start_stream.for.end_crit_edge, label %err_start_stream.for.body_crit_edge

err_start_stream.for.body_crit_edge:              ; preds = %err_start_stream
  br label %for.body

err_start_stream.for.end_crit_edge:               ; preds = %err_start_stream
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %err_start_stream.for.body_crit_edge
  %.pn.in153 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %76, %err_start_stream.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in153, i32 -740
  %77 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn = load ptr, ptr %.pn.in153, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in153) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in153, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i, align 4
  %80 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %.pn.in153, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %84 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %.pn.in153, ptr %.pn.in153, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in153, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %.pn.in153, ptr %prev.i3.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #10
  %cmp84.not = icmp eq ptr %.pn, %video_buffer_list
  br i1 %cmp84.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %err_start_stream.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %configure_geometry.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %configure_geometry.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %subdev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.else

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end24_crit_edge, label %land.lhs.true

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_stream, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end24_crit_edge, label %if.else6

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_stream9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_stream9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_stream9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20_crit_edge

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %land.lhs.true8.if.end20_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 0) #10
  %13 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call18, label %if.end20.do.end_crit_edge [
    i32 0, label %if.end20.if.end24_crit_edge
    i32 -515, label %if.end20.if.end24_crit_edge103
  ]

if.end20.if.end24_crit_edge103:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end20.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end20.if.end24_crit_edge, %if.end20.if.end24_crit_edge103, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %active = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %active, align 4
  %video_buffer_list = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %video_buffer_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video_buffer_list, align 4
  %cmp32.not98 = icmp eq ptr %18, %video_buffer_list
  br i1 %cmp32.not98, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end24.for.body_crit_edge
  %.pn.in99 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %18, %if.end24.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in99, i32 -740
  %19 = ptrtoint ptr %.pn.in99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn.in99, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in99) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in99, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn.in99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in99, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in99 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in99, ptr %.pn.in99, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in99, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn.in99, ptr %prev.i3.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #10
  %cmp32.not = icmp eq ptr %.pn, %video_buffer_list
  br i1 %cmp32.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end24.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %enable_preview_path = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %enable_preview_path to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_preview_path, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not = icmp eq i8 %29, 0
  br i1 %tobool40.not, label %if.then41, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then41:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 6
  %regs.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %32, i32 40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %34 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool43.not102 = icmp eq i32 %34, 0
  br i1 %tobool43.not102, label %if.then41.while.end_crit_edge, label %if.then41.land.rhs_crit_edge

if.then41.land.rhs_crit_edge:                     ; preds = %if.then41
  br label %land.rhs

if.then41.while.end_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then41.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %35, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp44 = icmp slt i32 %sub, 0
  br i1 %cmp44, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 1) #10
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %39 = and i32 %38, 65536
  %tobool43.not = icmp eq i32 %39, 0
  br i1 %tobool43.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.then41.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub45 = sub i32 %add, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp46 = icmp slt i32 %sub45, 0
  br i1 %cmp46, label %do.end50, label %while.end.if.end53_crit_edge

while.end.if.end53_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end50:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev51 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.48) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %while.end.if.end53_crit_edge, %for.end.if.end53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %regs.i93 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %regs.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 768) #10, !srcloc !166
  %complete.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %regs.i93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i93, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %47, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 33554432) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %regs.i93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i93, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 33554432) #10, !srcloc !166
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %do.end59, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %dev60 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.51) #13
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end53.if.end61_crit_edge
  %dev62 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev62, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %list = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 2
  %video_buffer_list = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %video_buffer_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %video_buffer_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.frame_buffer, ptr %vb, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %active = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %list_add_tail.exit.if.end14_crit_edge

list_add_tail.exit.if.end14_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %list_add_tail.exit
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vb, ptr %active, align 4
  %13 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vb, align 8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then13, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_dma(ptr noundef %3, ptr noundef %vb)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then.if.end14_crit_edge, %list_add_tail.exit.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_dma(ptr nocapture noundef readonly %isi, ptr nocapture noundef readonly %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !166
  %enable_preview_path = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 8
  %5 = ptrtoint ptr %enable_preview_path to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_preview_path, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %p_dma_desc = getelementptr inbounds %struct.frame_buffer, ptr %buffer, i32 0, i32 1
  %13 = ptrtoint ptr %p_dma_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_dma_desc, align 8
  %fbd_phys = getelementptr inbounds %struct.isi_dma_desc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %fbd_phys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fbd_phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %17) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %21, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 150994944) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 33554432) #10, !srcloc !166
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %p_dma_desc4 = getelementptr inbounds %struct.frame_buffer, ptr %buffer, i32 0, i32 1
  %24 = ptrtoint ptr %p_dma_desc4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_dma_desc4, align 8
  %fbd_phys5 = getelementptr inbounds %struct.isi_dma_desc, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %fbd_phys5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fbd_phys5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %30, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %28) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 150994944) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %34, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 16777216) #10, !srcloc !166
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %35 = and i32 %2, -983041
  %frate = getelementptr inbounds %struct.atmel_isi, ptr %isi, i32 0, i32 12, i32 6
  %36 = ptrtoint ptr %frate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frate, align 4
  %38 = or i32 %35, 524288
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %or8 = or i32 %39, %37
  %40 = ptrtoint ptr %enable_preview_path to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enable_preview_path, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool10.not = icmp eq i8 %41, 0
  %spec.select = select i1 %tobool10.not, i32 257, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %42) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %or8) #10
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !166
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_graph_notify_bound(ptr nocapture noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isi_graph_notify_bound.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isi_graph_notify_bound, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %notifier, i32 -772
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isi_graph_notify_bound.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %subdev4 = getelementptr i8, ptr %notifier, i32 52
  %2 = ptrtoint ptr %subdev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %subdev, ptr %subdev4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isi_graph_notify_complete(ptr nocapture noundef %notifier) #2 align 64 {
entry:
  %f.i = alloca %struct.v4l2_format, align 4
  %isi_fmts.i = alloca [10 x ptr], align 4
  %mbus_code.i = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -816
  %subdev = getelementptr i8, ptr %notifier, i32 52
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  %vdev = getelementptr i8, ptr %notifier, i32 -4
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %ctrl_handler1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %isi_fmts.i) #10
  %7 = call ptr @memset(ptr %isi_fmts.i, i32 255, i32 40)
  %8 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdev, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbus_code.i) #10
  %10 = call ptr @memset(ptr %mbus_code.i, i32 0, i32 48)
  %11 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %11, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.else.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else.lr.ph.i:                                  ; preds = %entry
  %code.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 2
  %index.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %pad110.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %pad110.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pad110.i, align 4
  %tobool2.not111.i = icmp eq ptr %16, null
  br i1 %tobool2.not111.i, label %if.else.lr.ph.i.do.end_crit_edge, label %if.else.lr.ph.i.land.lhs.true.i_crit_edge

if.else.lr.ph.i.land.lhs.true.i_crit_edge:        ; preds = %if.else.lr.ph.i
  br label %land.lhs.true.i

if.else.lr.ph.i.do.end_crit_edge:                 ; preds = %if.else.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i:                                  ; preds = %for.end42.i.land.lhs.true.i_crit_edge, %if.else.lr.ph.i.land.lhs.true.i_crit_edge
  %17 = phi ptr [ %39, %for.end42.i.land.lhs.true.i_crit_edge ], [ %16, %if.else.lr.ph.i.land.lhs.true.i_crit_edge ]
  %num_fmts.098112.i = phi i32 [ %num_fmts.2.i, %for.end42.i.land.lhs.true.i_crit_edge ], [ 0, %if.else.lr.ph.i.land.lhs.true.i_crit_edge ]
  %enum_mbus_code.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %enum_mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enum_mbus_code.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.while.end.i_crit_edge, label %if.else7.i

land.lhs.true.i.while.end.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %enum_mbus_code10.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %enum_mbus_code10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enum_mbus_code10.i, align 4
  %tobool11.not.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %19, %if.else14.i ], [ %22, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %mbus_code.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool21.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool21.not.i, label %for.cond.preheader.i, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

for.cond.preheader.i:                             ; preds = %if.end20.i
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc40.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.097.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc41.i, %for.inc40.i.for.body.i_crit_edge ]
  %num_fmts.196.i = phi i32 [ %num_fmts.098112.i, %for.cond.preheader.i ], [ %num_fmts.2.i, %for.inc40.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x %struct.isi_format], ptr @isi_formats, i32 0, i32 %i.097.i
  %mbus_code22.i = getelementptr [10 x %struct.isi_format], ptr @isi_formats, i32 0, i32 %i.097.i, i32 1
  %25 = ptrtoint ptr %mbus_code22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mbus_code22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp23.not.i = icmp eq i32 %26, %24
  br i1 %cmp23.not.i, label %for.cond26.preheader.i, label %for.body.i.for.inc40.i_crit_edge

for.body.i.for.inc40.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40.i

for.cond26.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fmts.196.i)
  %cmp2793.not.i = icmp eq i32 %num_fmts.196.i, 0
  br i1 %cmp2793.not.i, label %for.cond26.preheader.i.for.end.i_crit_edge, label %for.body28.lr.ph.i

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body28.lr.ph.i:                               ; preds = %for.cond26.preheader.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.inc.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %j.094.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc.i, %for.inc.i.for.body28.i_crit_edge ]
  %arrayidx29.i = getelementptr [10 x ptr], ptr %isi_fmts.i, i32 0, i32 %j.094.i
  %29 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx29.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp32.i = icmp eq i32 %32, %28
  br i1 %cmp32.i, label %for.body28.i.for.end.i_crit_edge, label %for.inc.i

for.body28.i.for.end.i_crit_edge:                 ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body28.i
  %inc.i = add nuw i32 %j.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_fmts.196.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then36.i_crit_edge, label %for.inc.i.for.body28.i_crit_edge

for.inc.i.for.body28.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

for.inc.i.if.then36.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i

for.end.i:                                        ; preds = %for.body28.i.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %j.094.i, %for.body28.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %num_fmts.196.i)
  %cmp35.i = icmp eq i32 %j.0.lcssa.i, %num_fmts.196.i
  br i1 %cmp35.i, label %for.end.i.if.then36.i_crit_edge, label %for.end.i.for.inc40.i_crit_edge

for.end.i.for.inc40.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40.i

for.end.i.if.then36.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i

if.then36.i:                                      ; preds = %for.end.i.if.then36.i_crit_edge, %for.inc.i.if.then36.i_crit_edge
  %inc37.i = add i32 %num_fmts.196.i, 1
  %arrayidx38.i = getelementptr [10 x ptr], ptr %isi_fmts.i, i32 0, i32 %num_fmts.196.i
  %33 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.i, ptr %arrayidx38.i, align 4
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %if.then36.i, %for.end.i.for.inc40.i_crit_edge, %for.body.i.for.inc40.i_crit_edge
  %num_fmts.2.i = phi i32 [ %num_fmts.196.i, %for.body.i.for.inc40.i_crit_edge ], [ %inc37.i, %if.then36.i ], [ %num_fmts.196.i, %for.end.i.for.inc40.i_crit_edge ]
  %inc41.i = add nuw nsw i32 %i.097.i, 1
  %exitcond103.not.i = icmp eq i32 %inc41.i, 10
  br i1 %exitcond103.not.i, label %for.end42.i, label %for.inc40.i.for.body.i_crit_edge

for.inc40.i.for.body.i_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end42.i:                                      ; preds = %for.inc40.i
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i, align 4
  %inc43.i = add i32 %35, 1
  store i32 %inc43.i, ptr %index.i, align 4
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pad.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %for.end42.i.while.end.i_crit_edge, label %for.end42.i.land.lhs.true.i_crit_edge

for.end42.i.land.lhs.true.i_crit_edge:            ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end42.i.while.end.i_crit_edge:                ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %for.end42.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge, %land.lhs.true.i.while.end.i_crit_edge
  %num_fmts.098.lcssa.i = phi i32 [ %num_fmts.2.i, %for.end42.i.while.end.i_crit_edge ], [ %num_fmts.098112.i, %land.lhs.true.i.while.end.i_crit_edge ], [ %num_fmts.098112.i, %if.end20.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fmts.098.lcssa.i)
  %tobool44.not.i = icmp eq i32 %num_fmts.098.lcssa.i, 0
  br i1 %tobool44.not.i, label %while.end.i.do.end_crit_edge, label %if.end46.i

while.end.i.do.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end46.i:                                       ; preds = %while.end.i
  %num_user_formats.i = getelementptr i8, ptr %notifier, i32 264
  %40 = ptrtoint ptr %num_user_formats.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %num_fmts.098.lcssa.i, ptr %num_user_formats.i, align 4
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_fmts.098.lcssa.i, i32 4) #10
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !167

devm_kcalloc.exit.thread.i:                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_formats91.i = getelementptr i8, ptr %notifier, i32 260
  %43 = ptrtoint ptr %user_formats91.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %user_formats91.i, align 4
  br label %do.end

devm_kcalloc.exit.i:                              ; preds = %if.end46.i
  %dev.i = getelementptr i8, ptr %notifier, i32 -772
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = extractvalue { i32, i1 } %41, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %45, i32 noundef %46, i32 noundef 3520) #10
  %user_formats.i = getelementptr i8, ptr %notifier, i32 260
  %47 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call5.i.i.i, ptr %user_formats.i, align 4
  %tobool49.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool49.not.i, label %devm_kcalloc.exit.i.do.end_crit_edge, label %if.end

devm_kcalloc.exit.i.do.end_crit_edge:             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %devm_kcalloc.exit.i.do.end_crit_edge, %devm_kcalloc.exit.thread.i, %while.end.i.do.end_crit_edge, %if.else.lr.ph.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i59.ph = phi i32 [ -6, %if.else.lr.ph.i.do.end_crit_edge ], [ -6, %entry.do.end_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.do.end_crit_edge ], [ -6, %while.end.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %isi_fmts.i) #10
  %dev = getelementptr i8, ptr %notifier, i32 -772
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.57) #13
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit.i
  %mul.i = shl nuw i32 %num_fmts.098.lcssa.i, 2
  %50 = call ptr @memcpy(ptr %call5.i.i.i, ptr %isi_fmts.i, i32 %mul.i)
  %51 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call5.i.i.i, align 4
  %current_fmt.i = getelementptr i8, ptr %notifier, i32 268
  %53 = ptrtoint ptr %current_fmt.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %current_fmt.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %isi_fmts.i) #10
  %pdata.i = getelementptr i8, ptr %notifier, i32 -164
  %hsync_act_low.i = getelementptr i8, ptr %notifier, i32 -163
  %54 = ptrtoint ptr %hsync_act_low.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hsync_act_low.i, align 1
  %vsync_act_low.i = getelementptr i8, ptr %notifier, i32 -162
  %56 = ptrtoint ptr %vsync_act_low.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vsync_act_low.i, align 2
  %pclk_act_falling.i = getelementptr i8, ptr %notifier, i32 -161
  %58 = ptrtoint ptr %pclk_act_falling.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pclk_act_falling.i, align 1
  %60 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pdata.i, align 4
  %full_mode.i = getelementptr i8, ptr %notifier, i32 -160
  %62 = ptrtoint ptr %full_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %full_mode.i, align 4
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %65, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end9

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !172
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end7_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end7_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  br label %do.end7

do.end7:                                          ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end7_crit_edge
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool17.not.i = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool12.not.i = icmp eq i8 %61, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool7.not.i = icmp eq i8 %59, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool2.not.i61 = icmp eq i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i62 = icmp eq i8 %55, 0
  %spec.select.i = select i1 %tobool.not.i62, i32 0, i32 4
  %or4.i = or i32 %spec.select.i, 8
  %cfg1.1.i = select i1 %tobool2.not.i61, i32 %spec.select.i, i32 %or4.i
  %or9.i = or i32 %cfg1.1.i, 16
  %cfg1.2.i = select i1 %tobool7.not.i, i32 %cfg1.1.i, i32 %or9.i
  %or14.i = or i32 %cfg1.2.i, 64
  %cfg1.3.i = select i1 %tobool12.not.i, i32 %cfg1.2.i, i32 %or14.i
  %or19.i = or i32 %cfg1.3.i, 4096
  %cfg1.4.i = select i1 %tobool17.not.i, i32 %cfg1.3.i, i32 %or19.i
  %or21.i = or i32 %cfg1.4.i, 16384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @arm_heavy_mb() #10
  %regs.i.i = getelementptr i8, ptr %notifier, i32 -768
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #10, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  call void @arm_heavy_mb() #10
  %71 = call i32 @llvm.bswap.i32(i32 %or21.i) #10
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #10, !srcloc !166
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %call.i43.i = call i32 @__pm_runtime_idle(ptr noundef %75, i32 noundef 5) #10
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f.i) #10
  %76 = getelementptr inbounds i8, ptr %f.i, i32 20
  %77 = call ptr @memset(ptr %76, i32 0, i32 184)
  %78 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %f.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1
  %79 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 640, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 480, ptr %height.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %user_formats.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pixelformat.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f.i, i32 0, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %field.i, align 4
  %call.i = call fastcc i32 @isi_try_fmt(ptr noundef %add.ptr, ptr noundef nonnull %f.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i65 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i65, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f.i) #10
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.63) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %91 = ptrtoint ptr %user_formats.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %user_formats.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %95 = ptrtoint ptr %current_fmt.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %current_fmt.i, align 4
  %fmt3.i = getelementptr i8, ptr %notifier, i32 56
  %96 = call ptr @memcpy(ptr %fmt3.i, ptr %f.i, i32 204)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f.i) #10
  %97 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vdev, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fops.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %call.i67 = call i32 @__video_register_device(ptr noundef %98, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool20.not = icmp eq i32 %call.i67, 0
  br i1 %tobool20.not, label %do.body27, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.66) #13
  br label %cleanup

do.body27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isi_graph_notify_complete.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isi_graph_notify_complete, %if.then33)) #10
          to label %cleanup [label %if.then33], !srcloc !170

if.then33:                                        ; preds = %do.body27
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  %107 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %108, i32 0, i32 5, i32 3
  %109 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then33.video_device_node_name.exit_crit_edge

if.then33.video_device_node_name.exit_crit_edge:  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i68 = getelementptr inbounds %struct.video_device, ptr %108, i32 0, i32 5
  %111 = ptrtoint ptr %dev.i68 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i68, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.then33.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %112, %if.end.i.i ], [ %110, %if.then33.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isi_graph_notify_complete.__UNIQUE_ID_ddebug308, ptr noundef %106, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.body27, %do.end24, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i59.ph, %do.end ], [ %call.i.i, %do.end7 ], [ %call.i, %do.end15 ], [ %call.i67, %do.end24 ], [ 0, %video_device_node_name.exit ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isi_graph_notify_unbind(ptr nocapture noundef readonly %notifier, ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isi_graph_notify_unbind.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isi_graph_notify_unbind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %notifier, i32 -772
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdev = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.video_device_node_name.exit_crit_edge

if.then.video_device_node_name.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.then.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isi_graph_notify_unbind.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef %retval.0.i.i) #10
  br label %do.end

do.end:                                           ; preds = %video_device_node_name.exit, %entry
  %vdev5 = getelementptr i8, ptr %notifier, i32 -4
  %8 = ptrtoint ptr %vdev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev5, align 4
  tail call void @video_unregister_device(ptr noundef %9) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !148, !149, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_atmel_isi__311_1374_atmel_isi_driver_init6, !1, !"__initcall__kmod_atmel_isi__311_1374_atmel_isi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1374, i32 1}
!2 = !{ptr @__exitcall_atmel_isi_driver_exit, !1, !"__exitcall_atmel_isi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1366, i32 11}
!12 = !{ptr @atmel_isi_driver, !13, !"atmel_isi_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1364, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1197, i32 39}
!16 = !{ptr @atmel_isi_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1207, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @atmel_isi_probe.__key.3, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1208, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1251, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @atmel_isi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @atmel_isi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1259, i32 3}
!32 = !{ptr @atmel_isi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @atmel_isi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1289, i32 60}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1291, i32 3}
!38 = !{ptr @atmel_isi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @atmel_isi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 836, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atmel_isi_parse_dt._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @atmel_isi_parse_dt._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 843, i32 3}
!47 = !{ptr @atmel_isi_parse_dt._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @atmel_isi_parse_dt._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 856, i32 3}
!51 = !{ptr @atmel_isi_parse_dt._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @atmel_isi_parse_dt._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @isi_fops, !54, !"isi_fops", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 958, i32 42}
!55 = !{ptr @isi_ioctl_ops, !56, !"isi_ioctl_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 926, i32 36}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 687, i32 23}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 688, i32 21}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 689, i32 25}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 700, i32 19}
!65 = !{ptr @isi_video_qops, !66, !"isi_video_qops", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 521, i32 29}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 289, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @queue_setup.__UNIQUE_ID_ddebug299, !68, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 317, i32 3}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @buffer_prepare._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @buffer_prepare._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 326, i32 4}
!78 = !{ptr @buffer_prepare._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @buffer_prepare._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 432, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @start_streaming._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @start_streaming._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 439, i32 3}
!90 = !{ptr @start_streaming._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @start_streaming._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 370, i32 4}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @start_dma._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @start_dma._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 486, i32 3}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @stop_streaming._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @stop_streaming._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 505, i32 4}
!107 = !{ptr @stop_streaming._entry.47, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stop_streaming._entry_ptr.49, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 516, i32 3}
!111 = !{ptr @stop_streaming._entry.50, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @stop_streaming._entry_ptr.52, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1176, i32 3}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @isi_graph_init._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @isi_graph_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @isi_graph_notify_ops, !119, !"isi_graph_notify_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1146, i32 52}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1139, i32 2}
!122 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @isi_graph_notify_bound.__UNIQUE_ID_ddebug310, !121, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1095, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @isi_graph_notify_complete._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @isi_graph_notify_complete._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1100, i32 3}
!131 = !{ptr @isi_graph_notify_complete._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @isi_graph_notify_complete._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1106, i32 3}
!135 = !{ptr @isi_graph_notify_complete._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @isi_graph_notify_complete._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1112, i32 3}
!139 = !{ptr @isi_graph_notify_complete._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @isi_graph_notify_complete._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1116, i32 2}
!143 = !{ptr @isi_graph_notify_complete.__UNIQUE_ID_ddebug308, !142, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!144 = !{ptr @isi_formats, !145, !"isi_formats", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 989, i32 32}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1127, i32 2}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @isi_graph_notify_unbind.__UNIQUE_ID_ddebug309, !147, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!150 = !{ptr @atmel_isi_of_match, !151, !"atmel_isi_of_match", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1358, i32 34}
!152 = !{ptr @atmel_isi_dev_pm_ops, !153, !"atmel_isi_dev_pm_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/atmel/atmel-isi.c", i32 1353, i32 32}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 5223597}
!164 = !{i64 2156527455}
!165 = !{i64 2156526804}
!166 = !{i64 5223179}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i8 0, i8 2}
!169 = !{!"auto-init"}
!170 = !{i64 2148754600, i64 2148754605, i64 2148754618, i64 2148754662, i64 2148754696, i64 2148754717}
!171 = !{i64 2148272204}
!172 = !{i64 757027, i64 757052, i64 757074, i64 757090, i64 757102, i64 757122, i64 757146, i64 757162, i64 757174}
!173 = !{i64 2148272392}
