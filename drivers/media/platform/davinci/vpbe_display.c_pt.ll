; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpbe_display.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpbe_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vpbe_display = type { %struct.spinlock, i32, [2 x ptr], ptr, ptr }
%struct.vpbe_device = type { %struct.v4l2_device, ptr, ptr, ptr, i32, ptr, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.vpbe_enc_mode_info, ptr, %struct.vpbe_device_ops }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vpbe_enc_mode_info = type { ptr, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, %struct.v4l2_fract, %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.vpbe_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpbe_layer = type { ptr, ptr, ptr, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.video_device, %struct.v4l2_pix_format, i32, %struct.display_layer_info, i8, i32, i32, i32, %struct.mutex, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.99, i32, i32 }
%union.anon.99 = type { i32 }
%struct.display_layer_info = type { i32, i32, %struct.osd_layer_config, i32, i32, i32, i32 }
%struct.osd_layer_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.osd_state = type { i32, %struct.spinlock, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x [3 x i8]], %struct.osd_cursor_state, [4 x %struct.osd_window_state], [2 x %struct.osd_osdwin_state], %struct.vpbe_osd_ops }
%struct.osd_cursor_state = type { i32, %struct.osd_cursor_config }
%struct.osd_cursor_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.osd_window_state = type { i32, i32, i32, i32, i32, %struct.osd_layer_config }
%struct.osd_osdwin_state = type { i32, i32, i32, i32, i32, [16 x i8] }
%struct.vpbe_osd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.100, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.100 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vpbe_disp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@__param_str_debug = internal constant [19 x i8] c"vpbe_display.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [32 x i8] c"vpbe_display.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_vpbe_display__303_1508_vpbe_display_driver_init6 = internal global ptr @vpbe_display_driver_init, section ".initcall6.init", align 4
@vpbe_display_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vpbe_display_probe, ptr @vpbe_display_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vpbe_display_driver_exit = internal global ptr @vpbe_display_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [71 x i8] c"vpbe_display.description=TI DM644x/DM355/DM365 VPBE Display controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [62 x i8] c"vpbe_display.file=drivers/media/platform/davinci/vpbe_display\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"vpbe_display.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [38 x i8] c"vpbe_display.author=Texas Instruments\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpbe-v4l2\00", [22 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@vpbe_display_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017vpbe_display_probe\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpbe_display_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/davinci/vpbe_display.c\00", [50 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr = internal global ptr @vpbe_display_probe._entry, section ".printk_index", align 4
@vpbe_display_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&disp_dev->dma_queue_lock\00", [38 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Error initing vpbe\0A\00", [38 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr.7 = internal global ptr @vpbe_display_probe._entry.5, section ".printk_index", align 4
@vpbe_display_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Unable to get VENC interrupt resource\0A\00", [51 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr.10 = internal global ptr @vpbe_display_probe._entry.8, section ".printk_index", align 4
@vpbe_display_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: VPBE IRQ request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr.13 = internal global ptr @vpbe_display_probe._entry.11, section ".printk_index", align 4
@video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vpbe_buffer_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vpbe_buffer_prepare, ptr null, ptr null, ptr @vpbe_start_streaming, ptr @vpbe_stop_streaming, ptr @vpbe_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vpbe_display_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: vb2_queue_init() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr.16 = internal global ptr @vpbe_display_probe._entry.14, section ".printk_index", align 4
@vpbe_display_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: Successfully completed the probing of vpbe v4l2 device\0A\00", [34 x i8] zeroinitializer }, align 32
@vpbe_display_probe._entry_ptr.19 = internal global ptr @vpbe_display_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpbe_controller\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpbe-osd\00", [23 x i8] zeroinitializer }, align 32
@init_vpbe_layer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&disp_dev->dev[i]->irqlock\00", [37 x i8] zeroinitializer }, align 32
@init_vpbe_layer.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&disp_dev->dev[i]->opslock\00", [37 x i8] zeroinitializer }, align 32
@vpbe_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @vpbe_display_open, ptr @vpbe_display_release }, [60 x i8] zeroinitializer }, align 32
@vpbe_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpbe_display_querycap, ptr null, ptr null, ptr @vpbe_display_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vpbe_display_g_std, ptr @vpbe_display_s_std, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_enum_output, ptr @vpbe_display_g_output, ptr @vpbe_display_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_g_pixelaspect, ptr @vpbe_display_g_selection, ptr @vpbe_display_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpbe_display_s_dv_timings, ptr @vpbe_display_g_dv_timings, ptr null, ptr @vpbe_display_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DaVinci_VPBE Display_DRIVER_V%d.%d.%d\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vpbe_display_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: v4l2_fh_open failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpbe_display_open\00", [46 x i8] zeroinitializer }, align 32
@vpbe_display_open._entry_ptr = internal global ptr @vpbe_display_open._entry, section ".printk_index", align 4
@vpbe_display_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Display Manager failed to allocate layer\0A\00", [48 x i8] zeroinitializer }, align 32
@vpbe_display_open._entry_ptr.30 = internal global ptr @vpbe_display_open._entry.28, section ".printk_index", align 4
@vpbe_display_open._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: vpbe display device opened successfully\0A\00", [49 x i8] zeroinitializer }, align 32
@vpbe_display_open._entry_ptr.33 = internal global ptr @vpbe_display_open._entry.31, section ".printk_index", align 4
@vpbe_display_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: vpbe_display_release\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpbe_display_release\00", [43 x i8] zeroinitializer }, align 32
@vpbe_display_release._entry_ptr = internal global ptr @vpbe_display_release._entry, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vpbe_display_enum_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: VIDIOC_ENUM_FMT, layer id = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpbe_display_enum_fmt\00", [42 x i8] zeroinitializer }, align 32
@vpbe_display_enum_fmt._entry_ptr = internal global ptr @vpbe_display_enum_fmt._entry, section ".printk_index", align 4
@vpbe_display_enum_fmt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid format index\0A\00", [36 x i8] zeroinitializer }, align 32
@vpbe_display_enum_fmt._entry_ptr.42 = internal global ptr @vpbe_display_enum_fmt._entry.40, section ".printk_index", align 4
@vpbe_display_g_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: VIDIOC_G_FMT, layer id = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpbe_display_g_fmt\00", [45 x i8] zeroinitializer }, align 32
@vpbe_display_g_fmt._entry_ptr = internal global ptr @vpbe_display_g_fmt._entry, section ".printk_index", align 4
@vpbe_display_g_fmt._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: invalid type\0A\00", [44 x i8] zeroinitializer }, align 32
@vpbe_display_g_fmt._entry_ptr.47 = internal global ptr @vpbe_display_g_fmt._entry.45, section ".printk_index", align 4
@vpbe_display_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: VIDIOC_S_FMT, layer id = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpbe_display_s_fmt\00", [45 x i8] zeroinitializer }, align 32
@vpbe_display_s_fmt._entry_ptr = internal global ptr @vpbe_display_s_fmt._entry, section ".printk_index", align 4
@vpbe_display_s_fmt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: invalid type\0A\00", [44 x i8] zeroinitializer }, align 32
@vpbe_display_s_fmt._entry_ptr.52 = internal global ptr @vpbe_display_s_fmt._entry.50, section ".printk_index", align 4
@vpbe_display_s_fmt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.49, ptr @.str.3, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpbe_display_s_fmt._entry_ptr.54 = internal global ptr @vpbe_display_s_fmt._entry.53, section ".printk_index", align 4
@vpbe_display_s_fmt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.3, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Error in S_FMT params:\0A\00", [34 x i8] zeroinitializer }, align 32
@vpbe_display_s_fmt._entry_ptr.57 = internal global ptr @vpbe_display_s_fmt._entry.55, section ".printk_index", align 4
@vpbe_display_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: VIDIOC_TRY_FMT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpbe_display_try_fmt\00", [43 x i8] zeroinitializer }, align 32
@vpbe_display_try_fmt._entry_ptr = internal global ptr @vpbe_display_try_fmt._entry, section ".printk_index", align 4
@vpbe_display_try_fmt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.59, ptr @.str.3, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpbe_display_try_fmt._entry_ptr.61 = internal global ptr @vpbe_display_try_fmt._entry.60, section ".printk_index", align 4
@vpbe_display_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: VIDIOC_G_STD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpbe_display_g_std\00", [45 x i8] zeroinitializer }, align 32
@vpbe_display_g_std._entry_ptr = internal global ptr @vpbe_display_g_std._entry, section ".printk_index", align 4
@vpbe_display_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: VIDIOC_S_STD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpbe_display_s_std\00", [45 x i8] zeroinitializer }, align 32
@vpbe_display_s_std._entry_ptr = internal global ptr @vpbe_display_s_std._entry, section ".printk_index", align 4
@vpbe_display_s_std._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Failed to set standard for sub devices\0A\00", [50 x i8] zeroinitializer }, align 32
@vpbe_display_s_std._entry_ptr.68 = internal global ptr @vpbe_display_s_std._entry.66, section ".printk_index", align 4
@vpbe_display_enum_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: VIDIOC_ENUM_OUTPUT\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpbe_display_enum_output\00", [39 x i8] zeroinitializer }, align 32
@vpbe_display_enum_output._entry_ptr = internal global ptr @vpbe_display_enum_output._entry, section ".printk_index", align 4
@vpbe_display_enum_output._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Failed to enumerate outputs\0A\00", [61 x i8] zeroinitializer }, align 32
@vpbe_display_enum_output._entry_ptr.73 = internal global ptr @vpbe_display_enum_output._entry.71, section ".printk_index", align 4
@vpbe_display_g_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: VIDIOC_G_OUTPUT\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpbe_display_g_output\00", [42 x i8] zeroinitializer }, align 32
@vpbe_display_g_output._entry_ptr = internal global ptr @vpbe_display_g_output._entry, section ".printk_index", align 4
@vpbe_display_s_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: VIDIOC_S_OUTPUT\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpbe_display_s_output\00", [42 x i8] zeroinitializer }, align 32
@vpbe_display_s_output._entry_ptr = internal global ptr @vpbe_display_s_output._entry, section ".printk_index", align 4
@vpbe_display_s_output._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to set output for sub devices\0A\00", [52 x i8] zeroinitializer }, align 32
@vpbe_display_s_output._entry_ptr.80 = internal global ptr @vpbe_display_s_output._entry.78, section ".printk_index", align 4
@vpbe_display_g_pixelaspect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: VIDIOC_CROPCAP ioctl\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpbe_display_g_pixelaspect\00", [37 x i8] zeroinitializer }, align 32
@vpbe_display_g_pixelaspect._entry_ptr = internal global ptr @vpbe_display_g_pixelaspect._entry, section ".printk_index", align 4
@vpbe_display_g_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: VIDIOC_G_SELECTION, layer id = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpbe_display_g_selection\00", [39 x i8] zeroinitializer }, align 32
@vpbe_display_g_selection._entry_ptr = internal global ptr @vpbe_display_g_selection._entry, section ".printk_index", align 4
@vpbe_display_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: VIDIOC_S_SELECTION, layer id = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpbe_display_s_selection\00", [39 x i8] zeroinitializer }, align 32
@vpbe_display_s_selection._entry_ptr = internal global ptr @vpbe_display_s_selection._entry, section ".printk_index", align 4
@vpbe_display_s_selection._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Error in set layer config:\0A\00", [62 x i8] zeroinitializer }, align 32
@vpbe_display_s_selection._entry_ptr.89 = internal global ptr @vpbe_display_s_selection._entry.87, section ".printk_index", align 4
@vpbe_display_s_selection._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error in set vid expansion:\0A\00", [61 x i8] zeroinitializer }, align 32
@vpbe_display_s_selection._entry_ptr.92 = internal global ptr @vpbe_display_s_selection._entry.90, section ".printk_index", align 4
@vpbe_disp_calculate_scale_factor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: crop display xsize = %d, ysize = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vpbe_disp_calculate_scale_factor\00", [63 x i8] zeroinitializer }, align 32
@vpbe_disp_calculate_scale_factor._entry_ptr = internal global ptr @vpbe_disp_calculate_scale_factor._entry, section ".printk_index", align 4
@vpbe_disp_adj_position._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: new xpos = %d, ypos = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpbe_disp_adj_position\00", [41 x i8] zeroinitializer }, align 32
@vpbe_disp_adj_position._entry_ptr = internal global ptr @vpbe_disp_adj_position._entry, section ".printk_index", align 4
@vpbe_display_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: VIDIOC_S_DV_TIMINGS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vpbe_display_s_dv_timings\00", [38 x i8] zeroinitializer }, align 32
@vpbe_display_s_dv_timings._entry_ptr = internal global ptr @vpbe_display_s_dv_timings._entry, section ".printk_index", align 4
@vpbe_display_s_dv_timings._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to set the dv timings info\0A\00", [55 x i8] zeroinitializer }, align 32
@vpbe_display_s_dv_timings._entry_ptr.101 = internal global ptr @vpbe_display_s_dv_timings._entry.99, section ".printk_index", align 4
@vpbe_display_g_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: VIDIOC_G_DV_TIMINGS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vpbe_display_g_dv_timings\00", [38 x i8] zeroinitializer }, align 32
@vpbe_display_g_dv_timings._entry_ptr = internal global ptr @vpbe_display_g_dv_timings._entry, section ".printk_index", align 4
@vpbe_display_enum_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: VIDIOC_ENUM_DV_TIMINGS\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vpbe_display_enum_dv_timings\00", [35 x i8] zeroinitializer }, align 32
@vpbe_display_enum_dv_timings._entry_ptr = internal global ptr @vpbe_display_enum_dv_timings._entry, section ".printk_index", align 4
@vpbe_display_enum_dv_timings._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Failed to enumerate dv timings info\0A\00", [53 x i8] zeroinitializer }, align 32
@vpbe_display_enum_dv_timings._entry_ptr.108 = internal global ptr @vpbe_display_enum_dv_timings._entry.106, section ".printk_index", align 4
@venc_isr.last_event = internal global { i32, [28 x i8] } zeroinitializer, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@venc_is_second_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error in getting Field ID 0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"venc_is_second_field\00", [43 x i8] zeroinitializer }, align 32
@venc_is_second_field._entry_ptr = internal global ptr @venc_is_second_field._entry, section ".printk_index", align 4
@vpbe_buffer_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpbe_buffer_setup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vpbe_buffer_queue_setup\00", [40 x i8] zeroinitializer }, align 32
@vpbe_buffer_queue_setup._entry_ptr = internal global ptr @vpbe_buffer_queue_setup._entry, section ".printk_index", align 4
@vpbe_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: vpbe_buffer_prepare\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpbe_buffer_prepare\00", [44 x i8] zeroinitializer }, align 32
@vpbe_buffer_prepare._entry_ptr = internal global ptr @vpbe_buffer_prepare._entry, section ".printk_index", align 4
@vpbe_buffer_prepare._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: buffer_prepare:offset is not aligned to 32 bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@vpbe_buffer_prepare._entry_ptr.117 = internal global ptr @vpbe_buffer_prepare._entry.115, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vpbe_set_osd_display_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Error in enabling osd window layer 0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vpbe_set_osd_display_params\00", [36 x i8] zeroinitializer }, align 32
@vpbe_set_osd_display_params._entry_ptr = internal global ptr @vpbe_set_osd_display_params._entry, section ".printk_index", align 4
@vpbe_set_osd_display_params._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Error in enabling osd window layer 1\0A\00", [52 x i8] zeroinitializer }, align 32
@vpbe_set_osd_display_params._entry_ptr.123 = internal global ptr @vpbe_set_osd_display_params._entry.121, section ".printk_index", align 4
@vpbe_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpbe_buffer_queue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpbe_buffer_queue\00", [46 x i8] zeroinitializer }, align 32
@vpbe_buffer_queue._entry_ptr = internal global ptr @vpbe_buffer_queue._entry, section ".printk_index", align 4
@register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Trying to register VPBE display device.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_device\00", [16 x i8] zeroinitializer }, align 32
@register_device._entry_ptr = internal global ptr @register_device._entry, section ".printk_index", align 4
@register_device._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: layer=%p,layer->video_dev=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.130 = internal global ptr @register_device._entry.128, section ".printk_index", align 4
@vpbe_display_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: vpbe_display_remove\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpbe_display_remove\00", [44 x i8] zeroinitializer }, align 32
@vpbe_display_remove._entry_ptr = internal global ptr @vpbe_display_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1498831189]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 34, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"vpbe_display_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1499, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1501, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1373, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1379, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1395, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1410, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1419, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [11 x i8] c"video_qops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 348, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1439, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1451, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1271, i32 13 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1274, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1291, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1292, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [10 x i8] c"vpbe_fops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1257, i32 42 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"vpbe_ioctl_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1225, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1312, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1148, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1165, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1173, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1191, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 631, i32 45 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 633, i32 49 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 789, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 793, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 768, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 774, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 817, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 825, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 847, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 880, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 900, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 903, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 956, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 925, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 933, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 980, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 988, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1035, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1007, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1017, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 753, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 717, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 651, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 676, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 690, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 516, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 533, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1086, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1097, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1118, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1056, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1064, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant [11 x i8] c"last_event\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 110, i32 18 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 54, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 230, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 200, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 209, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1163, i32 7 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 390, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 404, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 260, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1332, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1334, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [49 x i8] c"../drivers/media/platform/davinci/vpbe_display.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1478, i32 2 }
@llvm.compiler.used = appending global [204 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_vpbe_display_driver_exit, ptr @__initcall__kmod_vpbe_display__303_1508_vpbe_display_driver_init6, ptr @__param_debug, ptr @register_device._entry, ptr @register_device._entry.128, ptr @register_device._entry_ptr, ptr @register_device._entry_ptr.130, ptr @venc_is_second_field._entry, ptr @venc_is_second_field._entry_ptr, ptr @vpbe_buffer_prepare._entry, ptr @vpbe_buffer_prepare._entry.115, ptr @vpbe_buffer_prepare._entry_ptr, ptr @vpbe_buffer_prepare._entry_ptr.117, ptr @vpbe_buffer_queue._entry, ptr @vpbe_buffer_queue._entry_ptr, ptr @vpbe_buffer_queue_setup._entry, ptr @vpbe_buffer_queue_setup._entry_ptr, ptr @vpbe_disp_adj_position._entry, ptr @vpbe_disp_adj_position._entry_ptr, ptr @vpbe_disp_calculate_scale_factor._entry, ptr @vpbe_disp_calculate_scale_factor._entry_ptr, ptr @vpbe_display_driver_exit, ptr @vpbe_display_enum_dv_timings._entry, ptr @vpbe_display_enum_dv_timings._entry.106, ptr @vpbe_display_enum_dv_timings._entry_ptr, ptr @vpbe_display_enum_dv_timings._entry_ptr.108, ptr @vpbe_display_enum_fmt._entry, ptr @vpbe_display_enum_fmt._entry.40, ptr @vpbe_display_enum_fmt._entry_ptr, ptr @vpbe_display_enum_fmt._entry_ptr.42, ptr @vpbe_display_enum_output._entry, ptr @vpbe_display_enum_output._entry.71, ptr @vpbe_display_enum_output._entry_ptr, ptr @vpbe_display_enum_output._entry_ptr.73, ptr @vpbe_display_g_dv_timings._entry, ptr @vpbe_display_g_dv_timings._entry_ptr, ptr @vpbe_display_g_fmt._entry, ptr @vpbe_display_g_fmt._entry.45, ptr @vpbe_display_g_fmt._entry_ptr, ptr @vpbe_display_g_fmt._entry_ptr.47, ptr @vpbe_display_g_output._entry, ptr @vpbe_display_g_output._entry_ptr, ptr @vpbe_display_g_pixelaspect._entry, ptr @vpbe_display_g_pixelaspect._entry_ptr, ptr @vpbe_display_g_selection._entry, ptr @vpbe_display_g_selection._entry_ptr, ptr @vpbe_display_g_std._entry, ptr @vpbe_display_g_std._entry_ptr, ptr @vpbe_display_open._entry, ptr @vpbe_display_open._entry.28, ptr @vpbe_display_open._entry.31, ptr @vpbe_display_open._entry_ptr, ptr @vpbe_display_open._entry_ptr.30, ptr @vpbe_display_open._entry_ptr.33, ptr @vpbe_display_probe._entry, ptr @vpbe_display_probe._entry.11, ptr @vpbe_display_probe._entry.14, ptr @vpbe_display_probe._entry.17, ptr @vpbe_display_probe._entry.5, ptr @vpbe_display_probe._entry.8, ptr @vpbe_display_probe._entry_ptr, ptr @vpbe_display_probe._entry_ptr.10, ptr @vpbe_display_probe._entry_ptr.13, ptr @vpbe_display_probe._entry_ptr.16, ptr @vpbe_display_probe._entry_ptr.19, ptr @vpbe_display_probe._entry_ptr.7, ptr @vpbe_display_release._entry, ptr @vpbe_display_release._entry_ptr, ptr @vpbe_display_remove._entry, ptr @vpbe_display_remove._entry_ptr, ptr @vpbe_display_s_dv_timings._entry, ptr @vpbe_display_s_dv_timings._entry.99, ptr @vpbe_display_s_dv_timings._entry_ptr, ptr @vpbe_display_s_dv_timings._entry_ptr.101, ptr @vpbe_display_s_fmt._entry, ptr @vpbe_display_s_fmt._entry.50, ptr @vpbe_display_s_fmt._entry.53, ptr @vpbe_display_s_fmt._entry.55, ptr @vpbe_display_s_fmt._entry_ptr, ptr @vpbe_display_s_fmt._entry_ptr.52, ptr @vpbe_display_s_fmt._entry_ptr.54, ptr @vpbe_display_s_fmt._entry_ptr.57, ptr @vpbe_display_s_output._entry, ptr @vpbe_display_s_output._entry.78, ptr @vpbe_display_s_output._entry_ptr, ptr @vpbe_display_s_output._entry_ptr.80, ptr @vpbe_display_s_selection._entry, ptr @vpbe_display_s_selection._entry.87, ptr @vpbe_display_s_selection._entry.90, ptr @vpbe_display_s_selection._entry_ptr, ptr @vpbe_display_s_selection._entry_ptr.89, ptr @vpbe_display_s_selection._entry_ptr.92, ptr @vpbe_display_s_std._entry, ptr @vpbe_display_s_std._entry.66, ptr @vpbe_display_s_std._entry_ptr, ptr @vpbe_display_s_std._entry_ptr.68, ptr @vpbe_display_try_fmt._entry, ptr @vpbe_display_try_fmt._entry.60, ptr @vpbe_display_try_fmt._entry_ptr, ptr @vpbe_display_try_fmt._entry_ptr.61, ptr @vpbe_set_osd_display_params._entry, ptr @vpbe_set_osd_display_params._entry.121, ptr @vpbe_set_osd_display_params._entry_ptr, ptr @vpbe_set_osd_display_params._entry_ptr.123, ptr @debug, ptr @vpbe_display_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vpbe_display_probe.__key, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @video_qops, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @init_vpbe_layer.__key, ptr @.str.22, ptr @init_vpbe_layer.__key.23, ptr @.str.24, ptr @vpbe_fops, ptr @vpbe_ioctl_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @venc_isr.last_event, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vpbe_layer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vpbe_layer.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_open._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_fmt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_fmt._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_fmt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_fmt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_fmt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_try_fmt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_std._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_output._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_output._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_pixelaspect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_selection._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_selection._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_disp_calculate_scale_factor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_disp_adj_position._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_s_dv_timings._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_g_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_enum_dv_timings._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_isr.last_event to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_is_second_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_buffer_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_buffer_prepare._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_set_osd_display_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_set_osd_display_params._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_display_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpbe_display_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpbe_display_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpbe_display_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @vpbe_display_probe.__key, i16 noundef signext 3) #11
  %call6 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @vpbe_device_get) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.body2.cleanup_crit_edge, label %if.end8

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.body2
  %vpbe_dev = getelementptr inbounds %struct.vpbe_display, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpbe_dev, align 4
  %initialize = getelementptr inbounds %struct.vpbe_device, ptr %1, i32 0, i32 14, i32 8
  %2 = ptrtoint ptr %initialize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %initialize, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end8.if.end27_crit_edge, label %if.then12

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then12:                                        ; preds = %if.end8
  %call18 = tail call i32 %3(ptr noundef %dev, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then12.if.end27_crit_edge, label %if.then12.probe_out.sink.split_crit_edge

if.then12.probe_out.sink.split_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out.sink.split

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %if.then12.if.end27_crit_edge, %if.end8.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2144) #15
  %arrayidx.i = getelementptr %struct.vpbe_display, ptr %call.i, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end27.probe_out_crit_edge, label %do.body.i

if.end27.probe_out_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out

do.body.i:                                        ; preds = %if.end27
  %irqlock.i = getelementptr inbounds %struct.vpbe_layer, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_vpbe_layer.__key, i16 noundef signext 3) #11
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %opslock.i = getelementptr inbounds %struct.vpbe_layer, ptr %7, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %opslock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_vpbe_layer.__key.23) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %release.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 23
  %10 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %fops.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vpbe_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 24
  %12 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vpbe_ioctl_ops, ptr %ioctl_ops.i, align 4
  %minor.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 15
  %13 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %minor.i, align 8
  %14 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpbe_dev, align 4
  %v4l2_dev13.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 7
  %16 = ptrtoint ptr %v4l2_dev13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %v4l2_dev13.i, align 4
  %opslock14.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 26
  %17 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %opslock14.i, ptr %lock.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 14
  %18 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %vfl_dir.i, align 4
  %device_caps.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108866, ptr %device_caps.i, align 8
  %20 = load ptr, ptr %vpbe_dev, align 4
  %timings_type.i = getelementptr inbounds %struct.vpbe_device, ptr %20, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %timings_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timings_type.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.body.i.for.inc_crit_edge, label %if.then17.i

do.body.i.for.inc_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %tvnorms.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 22
  %23 = ptrtoint ptr %tvnorms.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 16777215, ptr %tvnorms.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then17.i, %do.body.i.for.inc_crit_edge
  %name.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 6, i32 12
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 0, i32 noundef 1) #11
  %device_id.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 13
  %24 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %device_id.i, align 4
  %id.i = getelementptr inbounds %struct.vpbe_layer, ptr %9, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 2144) #15
  %arrayidx.i.1 = getelementptr %struct.vpbe_display, ptr %call.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i.1, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.probe_out_crit_edge, label %do.body.i.1

for.inc.probe_out_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out

do.body.i.1:                                      ; preds = %for.inc
  %irqlock.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %call7.i.i.i.1, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock.i.1, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_vpbe_layer.__key, i16 noundef signext 3) #11
  %28 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.1, align 4
  %opslock.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %29, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %opslock.i.1, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_vpbe_layer.__key.23) #11
  %30 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.1, align 4
  %release.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 23
  %32 = ptrtoint ptr %release.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @video_device_release_empty, ptr %release.i.1, align 8
  %fops.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %fops.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @vpbe_fops, ptr %fops.i.1, align 4
  %ioctl_ops.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 24
  %34 = ptrtoint ptr %ioctl_ops.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vpbe_ioctl_ops, ptr %ioctl_ops.i.1, align 4
  %minor.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 15
  %35 = ptrtoint ptr %minor.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %minor.i.1, align 8
  %36 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vpbe_dev, align 4
  %v4l2_dev13.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 7
  %38 = ptrtoint ptr %v4l2_dev13.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %v4l2_dev13.i.1, align 4
  %opslock14.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 14
  %lock.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 26
  %39 = ptrtoint ptr %lock.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %opslock14.i.1, ptr %lock.i.1, align 8
  %vfl_dir.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 14
  %40 = ptrtoint ptr %vfl_dir.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %vfl_dir.i.1, align 4
  %device_caps.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 4
  %41 = ptrtoint ptr %device_caps.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 67108866, ptr %device_caps.i.1, align 8
  %42 = load ptr, ptr %vpbe_dev, align 4
  %timings_type.i.1 = getelementptr inbounds %struct.vpbe_device, ptr %42, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %timings_type.i.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timings_type.i.1, align 4
  %and.i.1 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool16.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool16.not.i.1, label %do.body.i.1.for.inc.1_crit_edge, label %if.then17.i.1

do.body.i.1.for.inc.1_crit_edge:                  ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then17.i.1:                                    ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %tvnorms.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 22
  %45 = ptrtoint ptr %tvnorms.i.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 16777215, ptr %tvnorms.i.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then17.i.1, %do.body.i.1.for.inc.1_crit_edge
  %name.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 6, i32 12
  %call19.i.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.1, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 0, i32 noundef 1) #11
  %device_id.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 13
  %46 = ptrtoint ptr %device_id.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %device_id.i.1, align 4
  %id.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %31, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %id.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %id.i.1, align 4
  %call33 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %for.inc.1.probe_out.sink.split_crit_edge, label %if.end43

for.inc.1.probe_out.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out.sink.split

if.end43:                                         ; preds = %for.inc.1
  %48 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call33, align 4
  %call.i183 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %49, ptr noundef nonnull @venc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool46.not = icmp eq i32 %call.i183, 0
  br i1 %tobool46.not, label %for.cond56.preheader, label %if.end43.probe_out.sink.split_crit_edge

if.end43.probe_out.sink.split_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out.sink.split

for.cond56.preheader:                             ; preds = %if.end43
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %buffer_queue = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3
  %52 = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 2
  %53 = call ptr @memset(ptr %52, i32 0, i32 504)
  %54 = ptrtoint ptr %buffer_queue to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %buffer_queue, align 4
  %io_modes = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 19, ptr %io_modes, align 4
  %56 = load ptr, ptr %arrayidx.i, align 4
  %drv_priv = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 10
  %57 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %drv_priv, align 4
  %ops62 = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 7
  %58 = ptrtoint ptr %ops62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @video_qops, ptr %ops62, align 4
  %mem_ops = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 12
  %60 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 13
  %61 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 15
  %62 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %min_buffers_needed, align 4
  %63 = load ptr, ptr %arrayidx.i, align 4
  %opslock = getelementptr inbounds %struct.vpbe_layer, ptr %63, i32 0, i32 14
  %lock = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %opslock, ptr %lock, align 4
  %65 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vpbe_dev, align 4
  %pdev66 = getelementptr inbounds %struct.vpbe_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %pdev66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev66, align 4
  %dev67 = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 3, i32 2
  %69 = ptrtoint ptr %dev67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %dev67, align 4
  %call68 = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end78, label %for.cond56.preheader.probe_out.sink.split_crit_edge

for.cond56.preheader.probe_out.sink.split_crit_edge: ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out.sink.split

if.end78:                                         ; preds = %for.cond56.preheader
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i, align 4
  %dma_queue = getelementptr inbounds %struct.vpbe_layer, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.vpbe_layer, ptr %71, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dma_queue, ptr %prev.i, align 4
  %74 = load ptr, ptr %arrayidx.i, align 4
  %75 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vpbe_dev, align 4
  %name.i185 = getelementptr inbounds %struct.v4l2_device, ptr %76, i32 0, i32 4
  %call.i186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name.i185) #14
  %77 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vpbe_dev, align 4
  %name7.i = getelementptr inbounds %struct.v4l2_device, ptr %78, i32 0, i32 4
  %video_dev.i = getelementptr inbounds %struct.vpbe_layer, ptr %74, i32 0, i32 6
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name7.i, ptr noundef %74, ptr noundef %video_dev.i) #14
  %buffer_queue.i = getelementptr inbounds %struct.vpbe_layer, ptr %74, i32 0, i32 3
  %queue.i = getelementptr inbounds %struct.vpbe_layer, ptr %74, i32 0, i32 6, i32 10
  %79 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buffer_queue.i, ptr %queue.i, align 8
  %fops.i.i = getelementptr inbounds %struct.vpbe_layer, ptr %74, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fops.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %video_dev.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i187 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i187, label %for.inc87, label %if.end78.probe_out_crit_edge

if.end78.probe_out_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out

for.inc87:                                        ; preds = %if.end78
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %74, align 8
  %85 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i25.i = getelementptr inbounds %struct.vpbe_layer, ptr %74, i32 0, i32 6, i32 5, i32 8
  %86 = ptrtoint ptr %driver_data.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %74, ptr %driver_data.i.i25.i, align 4
  %87 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.1, align 4
  %buffer_queue.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3
  %89 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 2
  %90 = call ptr @memset(ptr %89, i32 0, i32 504)
  %91 = ptrtoint ptr %buffer_queue.1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %buffer_queue.1, align 4
  %io_modes.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %io_modes.1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 19, ptr %io_modes.1, align 4
  %93 = load ptr, ptr %arrayidx.i.1, align 4
  %drv_priv.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 10
  %94 = ptrtoint ptr %drv_priv.1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %drv_priv.1, align 4
  %ops62.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 7
  %95 = ptrtoint ptr %ops62.1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @video_qops, ptr %ops62.1, align 4
  %mem_ops.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 8
  %96 = ptrtoint ptr %mem_ops.1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.1, align 4
  %buf_struct_size.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 12
  %97 = ptrtoint ptr %buf_struct_size.1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 744, ptr %buf_struct_size.1, align 4
  %timestamp_flags.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 13
  %98 = ptrtoint ptr %timestamp_flags.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8192, ptr %timestamp_flags.1, align 4
  %min_buffers_needed.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 15
  %99 = ptrtoint ptr %min_buffers_needed.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %min_buffers_needed.1, align 4
  %100 = load ptr, ptr %arrayidx.i.1, align 4
  %opslock.1 = getelementptr inbounds %struct.vpbe_layer, ptr %100, i32 0, i32 14
  %lock.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 5
  %101 = ptrtoint ptr %lock.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %opslock.1, ptr %lock.1, align 4
  %102 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vpbe_dev, align 4
  %pdev66.1 = getelementptr inbounds %struct.vpbe_device, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %pdev66.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev66.1, align 4
  %dev67.1 = getelementptr inbounds %struct.vpbe_layer, ptr %88, i32 0, i32 3, i32 2
  %106 = ptrtoint ptr %dev67.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %dev67.1, align 4
  %call68.1 = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.1)
  %tobool69.not.1 = icmp eq i32 %call68.1, 0
  br i1 %tobool69.not.1, label %if.end78.1, label %for.inc87.probe_out.sink.split_crit_edge

for.inc87.probe_out.sink.split_crit_edge:         ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out.sink.split

if.end78.1:                                       ; preds = %for.inc87
  %107 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.1, align 4
  %dma_queue.1 = getelementptr inbounds %struct.vpbe_layer, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %dma_queue.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %dma_queue.1, ptr %dma_queue.1, align 4
  %prev.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %108, i32 0, i32 4, i32 1
  %110 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %dma_queue.1, ptr %prev.i.1, align 4
  %111 = load ptr, ptr %arrayidx.i.1, align 4
  %112 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vpbe_dev, align 4
  %name.i185.1 = getelementptr inbounds %struct.v4l2_device, ptr %113, i32 0, i32 4
  %call.i186.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name.i185.1) #14
  %114 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vpbe_dev, align 4
  %name7.i.1 = getelementptr inbounds %struct.v4l2_device, ptr %115, i32 0, i32 4
  %video_dev.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %111, i32 0, i32 6
  %call9.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name7.i.1, ptr noundef %111, ptr noundef %video_dev.i.1) #14
  %buffer_queue.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %111, i32 0, i32 3
  %queue.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %111, i32 0, i32 6, i32 10
  %116 = ptrtoint ptr %queue.i.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %buffer_queue.i.1, ptr %queue.i.1, align 8
  %fops.i.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %111, i32 0, i32 6, i32 3
  %117 = ptrtoint ptr %fops.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fops.i.i.1, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %call.i.i.1 = tail call i32 @__video_register_device(ptr noundef %video_dev.i.1, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %120) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i187.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i187.1, label %for.inc87.1, label %if.end78.1.probe_out_crit_edge

if.end78.1.probe_out_crit_edge:                   ; preds = %if.end78.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out

for.inc87.1:                                      ; preds = %if.end78.1
  %121 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i, ptr %111, align 8
  %122 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i25.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %111, i32 0, i32 6, i32 5, i32 8
  %123 = ptrtoint ptr %driver_data.i.i25.i.1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %111, ptr %driver_data.i.i25.i.1, align 4
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp91 = icmp sgt i32 %124, 0
  br i1 %cmp91, label %do.end95, label %for.inc87.1.cleanup_crit_edge

for.inc87.1.cleanup_crit_edge:                    ; preds = %for.inc87.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end95:                                         ; preds = %for.inc87.1
  call void @__sanitizer_cov_trace_pc() #13
  %name97 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name97) #14
  br label %cleanup

probe_out.sink.split:                             ; preds = %for.inc87.probe_out.sink.split_crit_edge, %for.cond56.preheader.probe_out.sink.split_crit_edge, %if.end43.probe_out.sink.split_crit_edge, %for.inc.1.probe_out.sink.split_crit_edge, %if.then12.probe_out.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.6, %if.then12.probe_out.sink.split_crit_edge ], [ @.str.9, %for.inc.1.probe_out.sink.split_crit_edge ], [ @.str.12, %if.end43.probe_out.sink.split_crit_edge ], [ @.str.15, %for.inc87.probe_out.sink.split_crit_edge ], [ @.str.15, %for.cond56.preheader.probe_out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -12, %if.then12.probe_out.sink.split_crit_edge ], [ -19, %for.inc.1.probe_out.sink.split_crit_edge ], [ %call.i183, %if.end43.probe_out.sink.split_crit_edge ], [ %call68.1, %for.inc87.probe_out.sink.split_crit_edge ], [ %call68, %for.cond56.preheader.probe_out.sink.split_crit_edge ]
  %name75 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef %name75) #14
  br label %probe_out

probe_out:                                        ; preds = %probe_out.sink.split, %if.end78.1.probe_out_crit_edge, %if.end78.probe_out_crit_edge, %for.inc.probe_out_crit_edge, %if.end27.probe_out_crit_edge
  %err.0 = phi i32 [ -19, %if.end78.1.probe_out_crit_edge ], [ -19, %if.end78.probe_out_crit_edge ], [ -19, %for.inc.probe_out_crit_edge ], [ -19, %if.end27.probe_out_crit_edge ], [ %err.0.ph, %probe_out.sink.split ]
  %arrayidx107 = getelementptr %struct.vpbe_display, ptr %call.i, i32 0, i32 2, i32 0
  %125 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %126, null
  br i1 %tobool108.not, label %probe_out.for.inc115_crit_edge, label %if.then109

probe_out.for.inc115_crit_edge:                   ; preds = %probe_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc115

if.then109:                                       ; preds = %probe_out
  call void @__sanitizer_cov_trace_pc() #13
  %video_dev = getelementptr inbounds %struct.vpbe_layer, ptr %126, i32 0, i32 6
  tail call void @video_unregister_device(ptr noundef %video_dev) #11
  %127 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx107, align 4
  tail call void @kfree(ptr noundef %128) #11
  br label %for.inc115

for.inc115:                                       ; preds = %if.then109, %probe_out.for.inc115_crit_edge
  %arrayidx107.1 = getelementptr %struct.vpbe_display, ptr %call.i, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx107.1, align 4
  %tobool108.not.1 = icmp eq ptr %130, null
  br i1 %tobool108.not.1, label %for.inc115.cleanup_crit_edge, label %if.then109.1

for.inc115.cleanup_crit_edge:                     ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then109.1:                                     ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #13
  %video_dev.1 = getelementptr inbounds %struct.vpbe_layer, ptr %130, i32 0, i32 6
  tail call void @video_unregister_device(ptr noundef %video_dev.1) #11
  %131 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx107.1, align 4
  tail call void @kfree(ptr noundef %132) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then109.1, %for.inc115.cleanup_crit_edge, %do.end95, %for.inc87.1.cleanup_crit_edge, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %do.body2.cleanup_crit_edge ], [ 0, %do.end95 ], [ 0, %for.inc87.1.cleanup_crit_edge ], [ %err.0, %if.then109.1 ], [ %err.0, %for.inc115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpbe_dev1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %deinitialize = getelementptr inbounds %struct.vpbe_device, ptr %3, i32 0, i32 14, i32 9
  %5 = ptrtoint ptr %deinitialize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %deinitialize, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end5.if.end9_crit_edge, label %if.then6

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void %6(ptr noundef %dev, ptr noundef %3) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end5.if.end9_crit_edge
  %arrayidx = getelementptr %struct.vpbe_display, ptr %1, i32 0, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %video_dev = getelementptr inbounds %struct.vpbe_layer, ptr %8, i32 0, i32 6
  tail call void @video_unregister_device(ptr noundef %video_dev) #11
  %arrayidx.1 = getelementptr %struct.vpbe_display, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %video_dev.1 = getelementptr inbounds %struct.vpbe_layer, ptr %10, i32 0, i32 6
  tail call void @video_unregister_device(ptr noundef %video_dev.1) #11
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %15) #11
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.1, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_device_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.20, ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %vpbe_dev = getelementptr inbounds %struct.vpbe_display, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %vpbe_dev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %call3 = tail call ptr @strstr(ptr noundef %6, ptr noundef nonnull @.str.21)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i11 = getelementptr i8, ptr %dev, i32 164
  %7 = ptrtoint ptr %driver_data.i.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i11, align 4
  %osd_device = getelementptr inbounds %struct.vpbe_display, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %osd_device to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %osd_device, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr %struct.vpbe_display, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vpbe_dev1.i = getelementptr inbounds %struct.vpbe_display, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %vpbe_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpbe_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !285
  %venc.i = getelementptr inbounds %struct.vpbe_device, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %venc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %venc.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.venc_is_second_field.exit.thread_crit_edge, label %if.else.i

if.end.venc_is_second_field.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %venc_is_second_field.exit.thread

if.else.i:                                        ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.else.i.venc_is_second_field.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.venc_is_second_field.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %venc_is_second_field.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %command.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.venc_is_second_field.exit.thread_crit_edge, label %if.else7.i

land.lhs.true.i.venc_is_second_field.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %venc_is_second_field.exit.thread

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %13 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not.i = icmp eq ptr %13, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %command10.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %command10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %command10.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %12, %if.else14.i ], [ %15, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %if.end20.i.venc_is_second_field.exit.thread_crit_edge, label %venc_is_second_field.exit

if.end20.i.venc_is_second_field.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %venc_is_second_field.exit.thread

venc_is_second_field.exit.thread:                 ; preds = %if.end20.i.venc_is_second_field.exit.thread_crit_edge, %land.lhs.true.i.venc_is_second_field.exit.thread_crit_edge, %if.else.i.venc_is_second_field.exit.thread_crit_edge, %if.end.venc_is_second_field.exit.thread_crit_edge
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %.thread

venc_is_second_field.exit:                        ; preds = %if.end20.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %phi.cmp = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br i1 %phi.cmp, label %18, label %venc_is_second_field.exit..thread_crit_edge

venc_is_second_field.exit..thread_crit_edge:      ; preds = %venc_is_second_field.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread

18:                                               ; preds = %venc_is_second_field.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread

.thread:                                          ; preds = %18, %venc_is_second_field.exit..thread_crit_edge, %venc_is_second_field.exit.thread
  %.sink = phi i32 [ 2, %18 ], [ 4, %venc_is_second_field.exit..thread_crit_edge ], [ 4, %venc_is_second_field.exit.thread ]
  %or794 = phi i32 [ 3, %18 ], [ 5, %venc_is_second_field.exit..thread_crit_edge ], [ 5, %venc_is_second_field.exit.thread ]
  %19 = phi i32 [ 2, %18 ], [ 5, %venc_is_second_field.exit..thread_crit_edge ], [ 5, %venc_is_second_field.exit.thread ]
  %20 = load i32, ptr @venc_isr.last_event, align 4
  %and90 = and i32 %20, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink, i32 %and90)
  %cmp91 = icmp eq i32 %.sink, %and90
  %event.1 = select i1 %cmp91, i32 %or794, i32 %19
  store i32 %event.1, ptr @venc_isr.last_event, align 4
  %and25 = and i32 %event.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %and29 = and i32 %event.1, 2
  %and29.lobit = lshr exact i32 %and29, 1
  %21 = xor i32 %and29.lobit, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 3, i32 28
  %24 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %25 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not = icmp eq i16 %25, 0
  br i1 %tobool.i.not, label %.thread.for.inc_crit_edge, label %if.end19

.thread.for.inc_crit_edge:                        ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %.thread
  %layer_first_int = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %layer_first_int to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %layer_first_int, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not = icmp eq i8 %27, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %layer_first_int to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %layer_first_int, align 4
  br label %for.inc

if.end23:                                         ; preds = %if.end19
  %field = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp24 = icmp ne i32 %30, 1
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.end23
  %cur_frm.i = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %cur_frm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_frm.i, align 4
  %next_frm.i = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 2
  %33 = ptrtoint ptr %next_frm.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_frm.i, align 8
  %cmp.i78 = icmp eq ptr %32, %34
  br i1 %cmp.i78, label %if.then27.vpbe_isr_even_field.exit_crit_edge, label %if.end.i

if.then27.vpbe_isr_even_field.exit_crit_edge:     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpbe_isr_even_field.exit

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i64 @ktime_get() #11
  %35 = ptrtoint ptr %cur_frm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_frm.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %38 = load ptr, ptr %cur_frm.i, align 4
  call void @vb2_buffer_done(ptr noundef %38, i32 noundef 5) #11
  %39 = ptrtoint ptr %next_frm.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next_frm.i, align 8
  %41 = ptrtoint ptr %cur_frm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %cur_frm.i, align 4
  br label %vpbe_isr_even_field.exit

vpbe_isr_even_field.exit:                         ; preds = %if.end.i, %if.then27.vpbe_isr_even_field.exit_crit_edge
  call fastcc void @vpbe_isr_odd_field(ptr noundef nonnull %arg, ptr noundef %23)
  br label %for.inc

if.else28:                                        ; preds = %if.end23
  %field_id = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 12
  %42 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %field_id, align 8
  %xor = xor i32 %43, 1
  store i32 %xor, ptr %field_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and29.lobit, i32 %43)
  %cmp35.not = icmp eq i32 %and29.lobit, %43
  br i1 %cmp35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %21, ptr %field_id, align 8
  br label %for.inc

if.end38:                                         ; preds = %if.else28
  br i1 %tobool30.not, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end38
  %cur_frm.i79 = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 1
  %45 = ptrtoint ptr %cur_frm.i79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_frm.i79, align 4
  %next_frm.i80 = getelementptr inbounds %struct.vpbe_layer, ptr %23, i32 0, i32 2
  %47 = ptrtoint ptr %next_frm.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next_frm.i80, align 8
  %cmp.i81 = icmp eq ptr %46, %48
  br i1 %cmp.i81, label %if.then40.for.inc_crit_edge, label %if.end.i84

if.then40.for.inc_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i84:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i82 = call i64 @ktime_get() #11
  %49 = ptrtoint ptr %cur_frm.i79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur_frm.i79, align 4
  %timestamp.i83 = getelementptr inbounds %struct.vb2_buffer, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %timestamp.i83 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %call.i.i82, ptr %timestamp.i83, align 8
  %52 = load ptr, ptr %cur_frm.i79, align 4
  call void @vb2_buffer_done(ptr noundef %52, i32 noundef 5) #11
  %53 = ptrtoint ptr %next_frm.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next_frm.i80, align 8
  %55 = ptrtoint ptr %cur_frm.i79 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %cur_frm.i79, align 4
  br label %for.inc

if.else41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @vpbe_isr_odd_field(ptr noundef nonnull %arg, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %if.else41, %if.end.i84, %if.then40.for.inc_crit_edge, %if.then36, %vpbe_isr_even_field.exit, %if.then21, %.thread.for.inc_crit_edge
  %arrayidx16.1 = getelementptr %struct.vpbe_display, ptr %arg, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx16.1, align 4
  %start_streaming_called.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 3, i32 28
  %58 = ptrtoint ptr %start_streaming_called.i.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load.i.1 = load i16, ptr %start_streaming_called.i.1, align 4
  %59 = and i16 %bf.load.i.1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.i.not.1 = icmp eq i16 %59, 0
  br i1 %tobool.i.not.1, label %for.inc.cleanup_crit_edge, label %if.end19.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19.1:                                       ; preds = %for.inc
  %layer_first_int.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 15
  %60 = ptrtoint ptr %layer_first_int.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %layer_first_int.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool20.not.1 = icmp eq i8 %61, 0
  br i1 %tobool20.not.1, label %if.end23.1, label %if.then21.1

if.then21.1:                                      ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %layer_first_int.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %layer_first_int.1, align 4
  br label %cleanup

if.end23.1:                                       ; preds = %if.end19.1
  %field.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 7, i32 3
  %63 = ptrtoint ptr %field.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %field.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp24.1 = icmp ne i32 %64, 1
  %or.cond.1 = select i1 %cmp24.1, i1 true, i1 %tobool26.not
  br i1 %or.cond.1, label %if.else28.1, label %if.then27.1

if.then27.1:                                      ; preds = %if.end23.1
  %cur_frm.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 1
  %65 = ptrtoint ptr %cur_frm.i.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur_frm.i.1, align 4
  %next_frm.i.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 2
  %67 = ptrtoint ptr %next_frm.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next_frm.i.1, align 8
  %cmp.i78.1 = icmp eq ptr %66, %68
  br i1 %cmp.i78.1, label %if.then27.1.vpbe_isr_even_field.exit.1_crit_edge, label %if.end.i.1

if.then27.1.vpbe_isr_even_field.exit.1_crit_edge: ; preds = %if.then27.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpbe_isr_even_field.exit.1

if.end.i.1:                                       ; preds = %if.then27.1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.1 = call i64 @ktime_get() #11
  %69 = ptrtoint ptr %cur_frm.i.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur_frm.i.1, align 4
  %timestamp.i.1 = getelementptr inbounds %struct.vb2_buffer, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %timestamp.i.1 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i.i.1, ptr %timestamp.i.1, align 8
  %72 = load ptr, ptr %cur_frm.i.1, align 4
  call void @vb2_buffer_done(ptr noundef %72, i32 noundef 5) #11
  %73 = ptrtoint ptr %next_frm.i.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %next_frm.i.1, align 8
  %75 = ptrtoint ptr %cur_frm.i.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %cur_frm.i.1, align 4
  br label %vpbe_isr_even_field.exit.1

vpbe_isr_even_field.exit.1:                       ; preds = %if.end.i.1, %if.then27.1.vpbe_isr_even_field.exit.1_crit_edge
  call fastcc void @vpbe_isr_odd_field(ptr noundef nonnull %arg, ptr noundef %57)
  br label %cleanup

if.else28.1:                                      ; preds = %if.end23.1
  %field_id.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 12
  %76 = ptrtoint ptr %field_id.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %field_id.1, align 8
  %xor.1 = xor i32 %77, 1
  store i32 %xor.1, ptr %field_id.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and29.lobit, i32 %77)
  %cmp35.not.1 = icmp eq i32 %and29.lobit, %77
  br i1 %cmp35.not.1, label %if.end38.1, label %if.then36.1

if.then36.1:                                      ; preds = %if.else28.1
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %field_id.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %21, ptr %field_id.1, align 8
  br label %cleanup

if.end38.1:                                       ; preds = %if.else28.1
  br i1 %tobool30.not, label %if.else41.1, label %if.then40.1

if.then40.1:                                      ; preds = %if.end38.1
  %cur_frm.i79.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 1
  %79 = ptrtoint ptr %cur_frm.i79.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur_frm.i79.1, align 4
  %next_frm.i80.1 = getelementptr inbounds %struct.vpbe_layer, ptr %57, i32 0, i32 2
  %81 = ptrtoint ptr %next_frm.i80.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %next_frm.i80.1, align 8
  %cmp.i81.1 = icmp eq ptr %80, %82
  br i1 %cmp.i81.1, label %if.then40.1.cleanup_crit_edge, label %if.end.i84.1

if.then40.1.cleanup_crit_edge:                    ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i84.1:                                     ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i82.1 = call i64 @ktime_get() #11
  %83 = ptrtoint ptr %cur_frm.i79.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur_frm.i79.1, align 4
  %timestamp.i83.1 = getelementptr inbounds %struct.vb2_buffer, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %timestamp.i83.1 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %call.i.i82.1, ptr %timestamp.i83.1, align 8
  %86 = load ptr, ptr %cur_frm.i79.1, align 4
  call void @vb2_buffer_done(ptr noundef %86, i32 noundef 5) #11
  %87 = ptrtoint ptr %next_frm.i80.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %next_frm.i80.1, align 8
  %89 = ptrtoint ptr %cur_frm.i79.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %cur_frm.i79.1, align 4
  br label %cleanup

if.else41.1:                                      ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @vpbe_isr_odd_field(ptr noundef nonnull %arg, ptr noundef %57)
  br label %cleanup

cleanup:                                          ; preds = %if.else41.1, %if.end.i84.1, %if.then40.1.cleanup_crit_edge, %if.then36.1, %vpbe_isr_even_field.exit.1, %if.then21.1, %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev2 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev2, align 4
  %osd_device3 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %osd_device3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osd_device3, align 4
  %call4 = tail call i32 @v4l2_fh_open(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %call.i64 = tail call i32 @v4l2_fh_is_singular(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool7.not = icmp eq i32 %call.i64, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %usrs = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then11:                                        ; preds = %if.end9
  %opslock = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 14
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %opslock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  %request_layer = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %request_layer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %call16 = tail call i32 %13(ptr noundef %7, i32 noundef %15) #11
  tail call void @mutex_unlock(ptr noundef %opslock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end21, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name24 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name24) #14
  %call27 = tail call i32 @v4l2_fh_release(ptr noundef %file) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end15.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %16 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usrs, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %usrs, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32 = icmp sgt i32 %18, 0
  br i1 %cmp32, label %do.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %name39 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name39) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end29.cleanup_crit_edge, %do.end21, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ -22, %do.end21 ], [ 0, %if.end.cleanup_crit_edge ], [ -512, %if.then11.cleanup_crit_edge ], [ 0, %do.end36 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %osd_device3 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %osd_device3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_device3, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vpbe_dev2 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vpbe_dev2, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %opslock = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %opslock, i32 noundef 0) #11
  %disable_layer = getelementptr inbounds %struct.osd_state, ptr %5, i32 0, i32 23, i32 4
  %9 = ptrtoint ptr %disable_layer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  tail call void %10(ptr noundef %5, i32 noundef %12) #11
  %usrs = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usrs, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %usrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then10, label %do.end7.if.end30_crit_edge

do.end7.if.end30_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then10:                                        ; preds = %do.end7
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp11 = icmp eq i32 %16, 8
  br i1 %cmp11, label %if.then12, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %device_id.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  %cond.i = zext i1 %cmp.i to i32
  %arrayidx.i = getelementptr %struct.vpbe_display, ptr %3, i32 0, i32 2, i32 %cond.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %disable_layer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disable_layer, align 4
  %id17 = getelementptr inbounds %struct.vpbe_layer, ptr %20, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id17, align 4
  tail call void %22(ptr noundef %5, i32 noundef %24) #11
  %release_layer = getelementptr inbounds %struct.osd_state, ptr %5, i32 0, i32 23, i32 2
  %25 = ptrtoint ptr %release_layer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release_layer, align 4
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id17, align 4
  tail call void %26(ptr noundef %5, i32 noundef %28) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %if.then10.if.end21_crit_edge
  %29 = ptrtoint ptr %disable_layer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disable_layer, align 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  tail call void %30(ptr noundef %5, i32 noundef %32) #11
  %release_layer27 = getelementptr inbounds %struct.osd_state, ptr %5, i32 0, i32 23, i32 2
  %33 = ptrtoint ptr %release_layer27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %release_layer27, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  tail call void %34(ptr noundef %5, i32 noundef %36) #11
  br label %if.end30

if.end30:                                         ; preds = %if.end21, %do.end7.if.end30_crit_edge
  %call31 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #11
  tail call void @mutex_unlock(ptr noundef %opslock) #11
  %cbcr_ofst = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %cbcr_ofst to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cbcr_ofst, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %pdev = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cap, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i)
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %init_name.i15 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i15, align 8
  %tobool.not.i16 = icmp eq ptr %15, null
  br i1 %tobool.not.i16, label %if.end.i17, label %dev_name.exit.dev_name.exit19_crit_edge

dev_name.exit.dev_name.exit19_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit19

if.end.i17:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit19

dev_name.exit19:                                  ; preds = %if.end.i17, %dev_name.exit.dev_name.exit19_crit_edge
  %retval.0.i18 = phi ptr [ %17, %if.end.i17 ], [ %15, %dev_name.exit.dev_name.exit19_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i18)
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %cfg = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg, align 8
  %call10 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %19, i32 noundef 32) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_enum_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %device_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %8) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp ugt i32 %10, 1
  br i1 %cmp6, label %do.end10, label %if.end16

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %name13 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name13) #14
  br label %cleanup

if.end16:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18 = icmp eq i32 %10, 0
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842094158, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %if.else ], [ 0, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %device_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %8) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6.not = icmp eq i32 %10, 2
  br i1 %cmp6.not, label %if.end16, label %do.end10

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %name13 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name13) #14
  br label %cleanup

if.end16:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %fmt17 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pix_fmt = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %fmt17, ptr %pix_fmt, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_s_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev2 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev2, align 4
  %config = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %osd_device4 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %osd_device4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osd_device4, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %device_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %10) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 3, i32 21
  %11 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  br i1 %cmp.i.not, label %if.end11, label %do.end8.cleanup87_crit_edge

do.end8.cleanup87_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

if.end11:                                         ; preds = %do.end8
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp12.not = icmp eq i32 %14, 2
  br i1 %cmp12.not, label %if.end28, label %do.body14

do.body14:                                        ; preds = %if.end11
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp sgt i32 %15, 0
  br i1 %cmp15, label %do.end19, label %do.body14.cleanup87_crit_edge

do.body14.cleanup87_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name22) #14
  br label %cleanup87

if.end28:                                         ; preds = %if.end11
  tail call fastcc void @vpbe_try_format(ptr noundef %3, ptr noundef %fmt3)
  %pix_fmt = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %pix_fmt, ptr %fmt3, i32 48)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %18)
  %cmp32 = icmp eq i32 %18, 842094158
  br i1 %cmp32, label %if.then33, label %if.end28.if.end48_crit_edge

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then33:                                        ; preds = %if.end28
  %device_id.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i139 = icmp eq i32 %20, 0
  %cond.i = zext i1 %cmp.i139 to i32
  %arrayidx.i = getelementptr %struct.vpbe_display, ptr %3, i32 0, i32 2, i32 %cond.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %request_layer = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 1
  %23 = ptrtoint ptr %request_layer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %22, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %call36 = tail call i32 %24(ptr noundef %7, i32 noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.then33.if.end48_crit_edge

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %name44 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name44) #14
  br label %cleanup87

if.end48:                                         ; preds = %if.then33.if.end48_crit_edge, %if.end28.if.end48_crit_edge
  %get_layer_config = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 6
  %27 = ptrtoint ptr %get_layer_config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_layer_config, align 4
  %id51 = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id51, align 4
  tail call void %28(ptr noundef %7, i32 noundef %30, ptr noundef %config) #11
  %31 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt3, align 4
  %xsize = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 2
  %33 = ptrtoint ptr %xsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %xsize, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %ysize = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 3
  %36 = ptrtoint ptr %ysize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ysize, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytesperline, align 4
  %line_length = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 1
  %39 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %line_length, align 4
  %ypos = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 5
  %40 = ptrtoint ptr %ypos to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ypos, align 4
  %xpos = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 4
  %41 = ptrtoint ptr %xpos to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %xpos, align 4
  %interlaced = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 4
  %42 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %interlaced, align 4
  %interlaced52 = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 6
  %44 = ptrtoint ptr %interlaced52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %interlaced52, align 4
  %45 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %46)
  %cmp54 = icmp eq i32 %46, 1498831189
  br i1 %cmp54, label %if.then55, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %config, align 4
  %48 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %pixelformat, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end48.if.end57_crit_edge
  %49 = phi i32 [ %.pr, %if.then55 ], [ %46, %if.end48.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %49)
  %cmp59 = icmp eq i32 %49, 842094158
  br i1 %cmp59, label %if.then60, label %if.end57.if.end67_crit_edge

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %config, align 4
  %device_id.i140 = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %device_id.i140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %device_id.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i141 = icmp eq i32 %52, 0
  %cond.i142 = zext i1 %cmp.i141 to i32
  %arrayidx.i143 = getelementptr %struct.vpbe_display, ptr %3, i32 0, i32 2, i32 %cond.i142
  %53 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i143, align 4
  %config65 = getelementptr inbounds %struct.vpbe_layer, ptr %54, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %config65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %config65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.end57.if.end67_crit_edge
  %set_layer_config = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 5
  %56 = ptrtoint ptr %set_layer_config to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_layer_config, align 4
  %58 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id51, align 4
  %call71 = tail call i32 %57(ptr noundef %7, i32 noundef %59, ptr noundef %config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end82

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %name79 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name79) #14
  br label %cleanup87

if.end82:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %get_layer_config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_layer_config, align 4
  %62 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id51, align 4
  tail call void %61(ptr noundef %7, i32 noundef %63, ptr noundef %config) #11
  br label %cleanup87

cleanup87:                                        ; preds = %if.end82, %do.end76, %do.end41, %do.end19, %do.body14.cleanup87_crit_edge, %do.end8.cleanup87_crit_edge
  %retval.1 = phi i32 [ -22, %do.end76 ], [ 0, %if.end82 ], [ -16, %do.end8.cleanup87_crit_edge ], [ -22, %do.end19 ], [ -22, %do.body14.cleanup87_crit_edge ], [ -16, %do.end41 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev3 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev3, align 4
  %fmt4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp9.not = icmp eq i32 %8, 2
  br i1 %cmp9.not, label %if.end19, label %do.end13

do.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %name16 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name16) #14
  br label %cleanup

if.end19:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vpbe_try_format(ptr noundef %3, ptr noundef %fmt4)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %if.end19 ]
  ret i32 %retval.0
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %timings_type = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timings_type, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.then6

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %std_id8 = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %std_id8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %std_id8, align 8
  %11 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %std_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %s_std = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 14, i32 6
  %9 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_std, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  %call12 = tail call i32 %10(ptr noundef %5, i64 noundef %std_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %do.end17

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name20) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then9.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -16, %do.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_enum_output(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ops = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 14
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %call10 = tail call i32 %8(ptr noundef %5, ptr noundef %output) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %do.body13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body13:                                        ; preds = %if.end7
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp sgt i32 %9, 0
  br i1 %cmp14, label %do.end18, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %name21 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name21) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5.cleanup_crit_edge ], [ -22, %do.end18 ], [ -22, %do.body13.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_output(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_out_index, align 8
  %9 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_s_output(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %set_output = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %set_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_output, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %call13 = tail call i32 %10(ptr noundef %5, i32 noundef %i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %do.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %name21 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name21) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -16, %do.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp6.not = icmp eq i32 %type, 2
  br i1 %cmp6.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %aspect = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 7
  %7 = ptrtoint ptr %aspect to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %aspect, align 8
  %9 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %osd_device3 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %osd_device3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osd_device3, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %device_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %10) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %11 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp8.not = icmp eq i32 %12, 2
  br i1 %cmp8.not, label %if.end10, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end10.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end10.sw.bb12_crit_edge
    i32 2, label %if.end10.sw.bb12_crit_edge42
  ]

if.end10.sw.bb12_crit_edge42:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.end10.sw.bb12_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %get_layer_config = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 6
  %16 = ptrtoint ptr %get_layer_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_layer_config, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  tail call void %17(ptr noundef %7, i32 noundef %19, ptr noundef %config) #11
  %ypos = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 5
  %20 = ptrtoint ptr %ypos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ypos, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %top, align 4
  %xpos = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 4
  %23 = ptrtoint ptr %xpos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xpos, align 4
  %25 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %r, align 4
  %xsize = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 2
  %26 = ptrtoint ptr %xsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xsize, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %width, align 4
  %ysize = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 3
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end10.sw.bb12_crit_edge, %if.end10.sw.bb12_crit_edge42
  %29 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %r, align 4
  %top14 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %top14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %top14, align 4
  %xres = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 5
  %31 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xres, align 8
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %width15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %width15, align 4
  %yres = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb12, %sw.bb
  %ysize.sink = phi ptr [ %ysize, %sw.bb ], [ %yres, %sw.bb12 ]
  %34 = ptrtoint ptr %ysize.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ysize.sink, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_s_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev2 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev2, align 4
  %config = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2
  %osd_device3 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %osd_device3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osd_device3, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %rect.sroa.0.0.copyload = load i32, ptr %r, align 4
  %rect.sroa.10.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %rect.sroa.10.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %rect.sroa.10.0.copyload = load i32, ptr %rect.sroa.10.0.r.sroa_idx, align 4
  %rect.sroa.16.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %rect.sroa.16.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %rect.sroa.16.0.copyload = load i32, ptr %rect.sroa.16.0.r.sroa_idx, align 4
  %rect.sroa.20.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %rect.sroa.20.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %rect.sroa.20.0.copyload = load i32, ptr %rect.sroa.20.0.r.sroa_idx, align 4
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %device_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, i32 noundef %14) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %15 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp8.not = icmp eq i32 %16, 2
  br i1 %cmp8.not, label %lor.lhs.false, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end7
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %17 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.not = icmp eq i32 %18, 0
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %19 = tail call i32 @llvm.smax.i32(i32 %rect.sroa.10.0.copyload, i32 0)
  %20 = tail call i32 @llvm.smax.i32(i32 %rect.sroa.0.0.copyload, i32 0)
  %21 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vpbe_dev2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rect.sroa.16.0.copyload)
  %cmp.i = icmp eq i32 %rect.sroa.16.0.copyload, 0
  br i1 %cmp.i, label %if.end11.if.then.i_crit_edge, label %lor.lhs.false.i

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end11
  %add.i = add i32 %rect.sroa.16.0.copyload, %20
  %xres.i = getelementptr inbounds %struct.vpbe_device, ptr %22, i32 0, i32 12, i32 5
  %23 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xres.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp3.i = icmp ugt i32 %add.i, %24
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %xres5.i = getelementptr inbounds %struct.vpbe_device, ptr %22, i32 0, i32 12, i32 5
  %25 = ptrtoint ptr %xres5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xres5.i, align 8
  %sub.i = sub i32 %26, %20
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %rect.sroa.16.0 = phi i32 [ %sub.i, %if.then.i ], [ %rect.sroa.16.0.copyload, %lor.lhs.false.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rect.sroa.20.0.copyload)
  %cmp8.i = icmp eq i32 %rect.sroa.20.0.copyload, 0
  br i1 %cmp8.i, label %if.end.i.if.then14.i_crit_edge, label %lor.lhs.false9.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %add11.i = add i32 %rect.sroa.20.0.copyload, %19
  %yres.i = getelementptr inbounds %struct.vpbe_device, ptr %22, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %28)
  %cmp13.i = icmp ugt i32 %add11.i, %28
  br i1 %cmp13.i, label %lor.lhs.false9.i.if.then14.i_crit_edge, label %lor.lhs.false9.i.if.end20.i_crit_edge

lor.lhs.false9.i.if.end20.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

lor.lhs.false9.i.if.then14.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.lhs.false9.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge
  %yres16.i = getelementptr inbounds %struct.vpbe_device, ptr %22, i32 0, i32 12, i32 6
  %29 = ptrtoint ptr %yres16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yres16.i, align 4
  %sub18.i = sub i32 %30, %19
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %lor.lhs.false9.i.if.end20.i_crit_edge
  %rect.sroa.20.0 = phi i32 [ %sub18.i, %if.then14.i ], [ %rect.sroa.20.0.copyload, %lor.lhs.false9.i.if.end20.i_crit_edge ]
  %interlaced.i = getelementptr inbounds %struct.vpbe_device, ptr %22, i32 0, i32 12, i32 4
  %31 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  %and.i = and i32 %rect.sroa.20.0, -2
  %spec.select152 = select i1 %tobool.not.i, i32 %rect.sroa.20.0, i32 %and.i
  %get_layer_config = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 6
  %33 = ptrtoint ptr %get_layer_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_layer_config, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  tail call void %34(ptr noundef %7, i32 noundef %36, ptr noundef %config) #11
  %pix_fmt.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vpbe_dev2, align 4
  %std_id.i = getelementptr inbounds %struct.vpbe_device, ptr %38, i32 0, i32 12, i32 2
  %39 = ptrtoint ptr %std_id.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %std_id.i, align 8
  %41 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pix_fmt.i, align 4
  %xsize.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 2
  %43 = ptrtoint ptr %xsize.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %xsize.i, align 4
  %height.i122 = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %height.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i122, align 4
  %ysize.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 3
  %46 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ysize.i, align 4
  %h_zoom.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 3
  %v_zoom.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 4
  %h_exp4.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 5
  %v_exp5.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %rect.sroa.16.0)
  %cmp.i123 = icmp ult i32 %42, %rect.sroa.16.0
  %47 = call ptr @memset(ptr %h_zoom.i, i32 0, i32 16)
  br i1 %cmp.i123, label %if.then.i125, label %if.else44.i

if.then.i125:                                     ; preds = %if.end20.i
  %xres.i124 = getelementptr inbounds %struct.vpbe_device, ptr %38, i32 0, i32 12, i32 5
  %48 = ptrtoint ptr %xres.i124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres.i124, align 8
  %div.i = udiv i32 %49, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp9.i = icmp slt i32 %div.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div.i)
  %cmp11.i = icmp ugt i32 %div.i, 3
  %.155.i = select i1 %cmp11.i, i32 4, i32 2
  %50 = and i32 %div.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %51 = icmp eq i32 %50, 2
  %not.cmp9.i = xor i1 %cmp9.i, true
  %cmp35.i = and i1 %cmp11.i, %not.cmp9.i
  %h_scale.0.i = select i1 %cmp9.i, i32 1, i32 %.155.i
  %mul.i = mul i32 %h_scale.0.i, %42
  %52 = ptrtoint ptr %xsize.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i, ptr %xsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rect.sroa.16.0)
  %cmp17.i = icmp uge i32 %mul.i, %rect.sroa.16.0
  %53 = and i64 %40, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %54 = icmp eq i64 %53, 0
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %54
  br i1 %or.cond.i, label %if.then.i125.if.end30.i_crit_edge, label %if.then21.i

if.then.i125.if.end30.i_crit_edge:                ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then21.i:                                      ; preds = %if.then.i125
  %mul23.i = mul i32 %mul.i, 9
  %div24153.i = lshr i32 %mul23.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div24153.i, i32 %rect.sroa.16.0)
  %cmp25.not.i = icmp sgt i32 %div24153.i, %rect.sroa.16.0
  br i1 %cmp25.not.i, label %if.then21.i.if.end30.i_crit_edge, label %if.then26.i

if.then21.i.if.end30.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %xsize.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div24153.i, ptr %xsize.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.then21.i.if.end30.i_crit_edge, %if.then.i125.if.end30.i_crit_edge
  %tobool40.not.i = phi i1 [ false, %if.then26.i ], [ true, %if.then21.i.if.end30.i_crit_edge ], [ true, %if.then.i125.if.end30.i_crit_edge ]
  %brmerge.i = select i1 %51, i1 true, i1 %cmp35.i
  br i1 %brmerge.i, label %if.end39.sink.split.i, label %if.end30.i.if.end39.i_crit_edge

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.end39.sink.split.i:                            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.i = select i1 %51, i32 1, i32 2
  %56 = ptrtoint ptr %h_zoom.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.mux.i, ptr %h_zoom.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39.sink.split.i, %if.end30.i.if.end39.i_crit_edge
  br i1 %tobool40.not.i, label %if.end39.i.if.end46.i_crit_edge, label %if.then41.i

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %h_exp4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %h_exp4.i, align 4
  br label %if.end46.i

if.else44.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %xsize.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rect.sroa.16.0, ptr %xsize.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else44.i, %if.then41.i, %if.end39.i.if.end46.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %spec.select152)
  %cmp48.i = icmp ult i32 %45, %spec.select152
  br i1 %cmp48.i, label %if.then49.i, label %if.else90.i

if.then49.i:                                      ; preds = %if.end46.i
  %div51.i = udiv i32 %spec.select152, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div51.i)
  %cmp52.i = icmp slt i32 %div51.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div51.i)
  %cmp55.i = icmp ugt i32 %div51.i, 3
  %.158.i = select i1 %cmp55.i, i32 4, i32 2
  %59 = and i32 %div51.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %60 = icmp eq i32 %59, 2
  %not.cmp52.i = xor i1 %cmp52.i, true
  %cmp81.i = and i1 %cmp55.i, %not.cmp52.i
  %v_scale.0.i = select i1 %cmp52.i, i32 1, i32 %.158.i
  %mul61.i = mul i32 %v_scale.0.i, %45
  %61 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul61.i, ptr %ysize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul61.i, i32 %spec.select152)
  %cmp63.i = icmp uge i32 %mul61.i, %spec.select152
  %and65.i = and i64 %40, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65.i)
  %tobool66.not.i = icmp eq i64 %and65.i, 0
  %or.cond159.i = select i1 %cmp63.i, i1 true, i1 %tobool66.not.i
  br i1 %or.cond159.i, label %if.then49.i.if.end76.i_crit_edge, label %if.then67.i

if.then49.i.if.end76.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

if.then67.i:                                      ; preds = %if.then49.i
  %mul69.i = mul i32 %mul61.i, 6
  %div70.i = udiv i32 %mul69.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div70.i, i32 %spec.select152)
  %cmp71.not.i = icmp sgt i32 %div70.i, %spec.select152
  br i1 %cmp71.not.i, label %if.then67.i.if.end76.i_crit_edge, label %if.then72.i

if.then67.i.if.end76.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

if.then72.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div70.i, ptr %ysize.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %if.then67.i.if.end76.i_crit_edge, %if.then49.i.if.end76.i_crit_edge
  %tobool86.not.i = phi i1 [ false, %if.then72.i ], [ true, %if.then67.i.if.end76.i_crit_edge ], [ true, %if.then49.i.if.end76.i_crit_edge ]
  %brmerge162.i = select i1 %60, i1 true, i1 %cmp81.i
  br i1 %brmerge162.i, label %if.end85.sink.split.i, label %if.end76.i.if.end85.i_crit_edge

if.end76.i.if.end85.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

if.end85.sink.split.i:                            ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  %.mux163.i = select i1 %60, i32 1, i32 2
  %63 = ptrtoint ptr %v_zoom.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.mux163.i, ptr %v_zoom.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end85.sink.split.i, %if.end76.i.if.end85.i_crit_edge
  br i1 %tobool86.not.i, label %if.end85.i.do.body.i_crit_edge, label %if.then87.i

if.end85.i.do.body.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %v_exp5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %v_exp5.i, align 4
  br label %do.body.i

if.else90.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select152, ptr %ysize.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else90.i, %if.then87.i, %if.end85.i.do.body.i_crit_edge
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp93.i = icmp sgt i32 %66, 0
  br i1 %cmp93.i, label %do.end.i, label %do.body.i.vpbe_disp_calculate_scale_factor.exit_crit_edge

do.body.i.vpbe_disp_calculate_scale_factor.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpbe_disp_calculate_scale_factor.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %38, i32 0, i32 4
  %67 = ptrtoint ptr %xsize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %xsize.i, align 4
  %69 = ptrtoint ptr %ysize.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ysize.i, align 4
  %call.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name.i, i32 noundef %68, i32 noundef %70) #14
  br label %vpbe_disp_calculate_scale_factor.exit

vpbe_disp_calculate_scale_factor.exit:            ; preds = %do.end.i, %do.body.i.vpbe_disp_calculate_scale_factor.exit_crit_edge
  %71 = ptrtoint ptr %vpbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vpbe_dev2, align 4
  %xres.i128 = getelementptr inbounds %struct.vpbe_device, ptr %72, i32 0, i32 12, i32 5
  %73 = ptrtoint ptr %xres.i128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %xres.i128, align 8
  %75 = ptrtoint ptr %xsize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xsize.i, align 4
  %sub.i130 = sub i32 %74, %76
  %77 = tail call i32 @llvm.umin.i32(i32 %sub.i130, i32 %20) #11
  %xpos.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 4
  %78 = ptrtoint ptr %xpos.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %xpos.i, align 4
  %yres.i131 = getelementptr inbounds %struct.vpbe_device, ptr %72, i32 0, i32 12, i32 6
  %79 = ptrtoint ptr %yres.i131 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yres.i131, align 4
  %81 = ptrtoint ptr %ysize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ysize.i, align 4
  %sub3.i = sub i32 %80, %82
  %83 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 %19) #11
  %ypos.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2, i32 5
  %84 = ptrtoint ptr %ypos.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %ypos.i, align 4
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp10.i = icmp sgt i32 %85, 0
  br i1 %cmp10.i, label %do.end.i135, label %vpbe_disp_calculate_scale_factor.exit.vpbe_disp_adj_position.exit_crit_edge

vpbe_disp_calculate_scale_factor.exit.vpbe_disp_adj_position.exit_crit_edge: ; preds = %vpbe_disp_calculate_scale_factor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpbe_disp_adj_position.exit

do.end.i135:                                      ; preds = %vpbe_disp_calculate_scale_factor.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name.i133 = getelementptr inbounds %struct.v4l2_device, ptr %72, i32 0, i32 4
  %call.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name.i133, i32 noundef %77, i32 noundef %83) #14
  br label %vpbe_disp_adj_position.exit

vpbe_disp_adj_position.exit:                      ; preds = %do.end.i135, %vpbe_disp_calculate_scale_factor.exit.vpbe_disp_adj_position.exit_crit_edge
  %set_layer_config = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 5
  %86 = ptrtoint ptr %set_layer_config to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_layer_config, align 4
  %88 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id, align 4
  %call26 = tail call i32 %87(ptr noundef %7, i32 noundef %89, ptr noundef %config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end37

do.end31:                                         ; preds = %vpbe_disp_adj_position.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name34 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name34) #14
  br label %cleanup

if.end37:                                         ; preds = %vpbe_disp_adj_position.exit
  %set_zoom = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 13
  %90 = ptrtoint ptr %set_zoom to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_zoom, align 4
  %92 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %id, align 4
  %94 = ptrtoint ptr %h_zoom.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %h_zoom.i, align 4
  %96 = ptrtoint ptr %v_zoom.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %v_zoom.i, align 4
  tail call void %91(ptr noundef %7, i32 noundef %93, i32 noundef %95, i32 noundef %97) #11
  %set_vid_expansion = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 11
  %98 = ptrtoint ptr %set_vid_expansion to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_vid_expansion, align 4
  %100 = ptrtoint ptr %h_exp4.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %h_exp4.i, align 4
  %102 = ptrtoint ptr %v_exp5.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %v_exp5.i, align 4
  %call46 = tail call i32 %99(ptr noundef %7, i32 noundef %101, i32 noundef %103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end57

do.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %name54 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name54) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end37
  %104 = ptrtoint ptr %h_zoom.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %h_zoom.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp60.not = icmp eq i32 %105, 0
  br i1 %cmp60.not, label %lor.lhs.false61, label %if.end57.if.end77_crit_edge

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

lor.lhs.false61:                                  ; preds = %if.end57
  %106 = ptrtoint ptr %v_zoom.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %v_zoom.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp64.not = icmp eq i32 %107, 0
  br i1 %cmp64.not, label %lor.lhs.false65, label %lor.lhs.false61.if.end77_crit_edge

lor.lhs.false61.if.end77_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %108 = ptrtoint ptr %h_exp4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %h_exp4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp68.not = icmp eq i32 %109, 0
  br i1 %cmp68.not, label %lor.lhs.false69, label %lor.lhs.false65.if.end77_crit_edge

lor.lhs.false65.if.end77_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %v_exp5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %v_exp5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp72.not = icmp ne i32 %111, 0
  %spec.select = zext i1 %cmp72.not to i32
  br label %if.end77

if.end77:                                         ; preds = %lor.lhs.false69, %lor.lhs.false65.if.end77_crit_edge, %lor.lhs.false61.if.end77_crit_edge, %if.end57.if.end77_crit_edge
  %.sink = phi i32 [ 1, %lor.lhs.false65.if.end77_crit_edge ], [ 1, %lor.lhs.false61.if.end77_crit_edge ], [ 1, %if.end57.if.end77_crit_edge ], [ %spec.select, %lor.lhs.false69 ]
  %set_interpolation_filter76 = getelementptr inbounds %struct.osd_state, ptr %7, i32 0, i32 23, i32 10
  %112 = ptrtoint ptr %set_interpolation_filter76 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_interpolation_filter76, align 4
  tail call void %113(ptr noundef %7, i32 noundef %.sink) #11
  %114 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %20, ptr %r, align 4
  %115 = ptrtoint ptr %rect.sroa.10.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %19, ptr %rect.sroa.10.0.r.sroa_idx, align 4
  %116 = ptrtoint ptr %rect.sroa.16.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %rect.sroa.16.0, ptr %rect.sroa.16.0.r.sroa_idx, align 4
  %117 = ptrtoint ptr %rect.sroa.20.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select152, ptr %rect.sroa.20.0.r.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end51, %do.end31, %lor.lhs.false.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %do.end51 ], [ 0, %if.end77 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %s_dv_timings = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 14, i32 3
  %9 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_dv_timings, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %call13 = tail call i32 %10(ptr noundef %5, ptr noundef %timings) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %do.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %name21 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name21) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -16, %do.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %dv_timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %timings_type = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timings_type, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.then6

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dv_timings8 = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 12, i32 3
  %9 = call ptr @memcpy(ptr %dv_timings, ptr %dv_timings8, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_display_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpbe_dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %enum_dv_timings = getelementptr inbounds %struct.vpbe_device, ptr %5, i32 0, i32 14, i32 5
  %7 = ptrtoint ptr %enum_dv_timings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enum_dv_timings, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %call10 = tail call i32 %8(ptr noundef %5, ptr noundef %timings) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %do.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %name18 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name18) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end5.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @vpbe_try_format(ptr nocapture noundef readonly %disp_dev, ptr nocapture noundef %pixfmt) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %disp_dev, i32 0, i32 3
  %0 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpbe_dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %3, label %if.then [
    i32 1498831189, label %entry.if.end_crit_edge
    i32 842094158, label %entry.if.end_crit_edge4
  ]

entry.if.end_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %7, label %if.then9 [
    i32 4, label %if.end.if.end14_crit_edge
    i32 1, label %if.end.if.end14_crit_edge5
  ]

if.end.if.end14_crit_edge5:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %interlaced = getelementptr inbounds %struct.vpbe_device, ptr %1, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %. = select i1 %tobool.not, i32 1, i32 4
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %., ptr %field, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge5
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp16 = icmp eq i32 %13, 4
  %spec.select = select i1 %cmp16, i32 2, i32 1
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %15)
  %cmp20 = icmp eq i32 %15, 842094158
  %bpp.0 = select i1 %cmp20, i32 1, i32 2
  %xres = getelementptr inbounds %struct.vpbe_device, ptr %1, i32 0, i32 12, i32 5
  %16 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres, align 8
  %yres = getelementptr inbounds %struct.vpbe_device, ptr %1, i32 0, i32 12, i32 6
  %18 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres, align 4
  %20 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end14.if.then32_crit_edge, label %lor.lhs.false

if.end14.if.then32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end14
  %div.rhs.trunc = trunc i32 %bpp.0 to i8
  %div3 = udiv i8 32, %div.rhs.trunc
  %div.zext = zext i8 %div3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div.zext)
  %cmp28 = icmp ult i32 %21, %div.zext
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp31 = icmp ugt i32 %21, %17
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp31
  br i1 %or.cond, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end14.if.then32_crit_edge
  %22 = ptrtoint ptr %pixfmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %pixfmt, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %lor.lhs.false.if.end36_crit_edge
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool37.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %spec.select)
  %cmp40 = icmp ult i32 %24, %spec.select
  %or.cond1 = select i1 %tobool37.not, i1 true, i1 %cmp40
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %19)
  %cmp43 = icmp ugt i32 %24, %19
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp43
  br i1 %or.cond2, label %if.then44, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres, align 4
  %27 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end36.if.end48_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 4
  %28 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixfmt, align 4
  %mul = mul i32 %29, %bpp.0
  %add = add i32 %mul, 31
  %and = and i32 %add, -32
  %30 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %bytesperline, align 4
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %mul64 = mul i32 %32, %and
  %shr = lshr exact i32 %mul64, 1
  %add68 = select i1 %cmp20, i32 %shr, i32 0
  %mul72.sink = add i32 %mul64, %add68
  %33 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul72.sink, ptr %33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpbe_isr_odd_field(ptr noundef %disp_obj, ptr noundef %layer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_device1 = getelementptr inbounds %struct.vpbe_display, ptr %disp_obj, i32 0, i32 4
  %0 = ptrtoint ptr %osd_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_device1, align 4
  tail call void @_raw_spin_lock(ptr noundef %disp_obj) #11
  %dma_queue = getelementptr inbounds %struct.vpbe_layer, ptr %layer, i32 0, i32 4
  %2 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %dma_queue
  br i1 %cmp.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cur_frm = getelementptr inbounds %struct.vpbe_layer, ptr %layer, i32 0, i32 1
  %4 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_frm, align 4
  %next_frm = getelementptr inbounds %struct.vpbe_layer, ptr %layer, i32 0, i32 2
  %6 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_frm, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %disp_obj) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %8 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %next_frm, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %disp_obj) #11
  %17 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_frm, align 8
  %state = getelementptr inbounds %struct.vb2_buffer, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %state, align 8
  %20 = load ptr, ptr %next_frm, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %20, i32 noundef 0) #11
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i, align 4
  %start_layer = getelementptr inbounds %struct.osd_state, ptr %1, i32 0, i32 23, i32 7
  %23 = ptrtoint ptr %start_layer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %start_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %layer, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %cbcr_ofst = getelementptr inbounds %struct.vpbe_display, ptr %disp_obj, i32 0, i32 1
  %27 = ptrtoint ptr %cbcr_ofst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cbcr_ofst, align 4
  tail call void %24(ptr noundef %1, i32 noundef %26, i32 noundef %22, i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_buffer_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vpbe_dev1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers, align 4
  %9 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbuffers, align 4
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp6 = icmp ult i32 %add, 3
  br i1 %cmp6, label %if.then7, label %do.end5.if.end9_crit_edge

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 3, %8
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end5.if.end9_crit_edge
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11 = icmp ult i32 %15, %17
  %cond = select i1 %cmp11, i32 -22, i32 0
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nplanes, align 4
  %sizeimage14 = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %sizeimage14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizeimage14, align 4
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10
  %retval.0 = phi i32 [ %cond, %if.then10 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_buffer_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %vpbe_dev1 = getelementptr inbounds %struct.vpbe_display, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %vpbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpbe_dev1, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %do.end5.if.end10_crit_edge, label %if.then.i

do.end5.if.end10_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.i:                                        ; preds = %do.end5
  %sizeimage = getelementptr inbounds %struct.vpbe_layer, ptr %3, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp1.i = icmp ult i32 %14, %12
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.vb2_set_plane_payload.exit_crit_edge

if.then.i.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !286

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %16, %if.then38.i ], [ %12, %if.then.i.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i33 = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i33, label %vb2_set_plane_payload.exit.if.end10_crit_edge, label %vb2_plane_size.exit

vb2_set_plane_payload.exit.if.end10_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

vb2_plane_size.exit:                              ; preds = %vb2_set_plane_payload.exit
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytesused.i, align 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp8 = icmp ugt i32 %20, %22
  br i1 %cmp8, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.if.end10_crit_edge

vb2_plane_size.exit.if.end10_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %vb2_plane_size.exit.if.end10_crit_edge, %vb2_set_plane_payload.exit.if.end10_crit_edge, %do.end5.if.end10_crit_edge
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #11
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 4
  %and = and i32 %24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %name19 = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name19) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end10.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %osd_device1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %osd_device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_device1, align 4
  %disable_layer = getelementptr inbounds %struct.osd_state, ptr %5, i32 0, i32 23, i32 4
  %6 = ptrtoint ptr %disable_layer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void %7(ptr noundef %5, i32 noundef %9) #11
  %dma_queue = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -736
  %cur_frm = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %cur_frm, align 4
  %next_frm = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %next_frm, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %22 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_frm, align 4
  %state = getelementptr inbounds %struct.vb2_buffer, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %state, align 8
  %field_id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %field_id, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %osd_device1.i = getelementptr inbounds %struct.vpbe_display, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %osd_device1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %osd_device1.i, align 4
  %vpbe_dev2.i = getelementptr inbounds %struct.vpbe_display, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %vpbe_dev2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vpbe_dev2.i, align 4
  %32 = load ptr, ptr %cur_frm, align 4
  %call.i.i54 = tail call ptr @vb2_plane_cookie(ptr noundef %32, i32 noundef 0) #11
  %33 = ptrtoint ptr %call.i.i54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i.i54, align 4
  %start_layer.i = getelementptr inbounds %struct.osd_state, ptr %29, i32 0, i32 23, i32 7
  %35 = ptrtoint ptr %start_layer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start_layer.i, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  %cbcr_ofst.i = getelementptr inbounds %struct.vpbe_display, ptr %27, i32 0, i32 1
  %39 = ptrtoint ptr %cbcr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cbcr_ofst.i, align 4
  tail call void %36(ptr noundef %29, i32 noundef %38, i32 noundef %34, i32 noundef %40) #11
  %enable_layer.i = getelementptr inbounds %struct.osd_state, ptr %29, i32 0, i32 23, i32 3
  %41 = ptrtoint ptr %enable_layer.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enable_layer.i, align 4
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %call7.i = tail call i32 %42(ptr noundef %29, i32 noundef %44, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %list_del.exit.if.then_crit_edge, label %if.end.i

list_del.exit.if.then_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %list_del.exit
  %layer_info.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9
  %config.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %layer_info.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %layer_info.i, align 4
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp10.i = icmp eq i32 %47, 8
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  %device_id.i.i = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i = icmp eq i32 %49, 0
  %cond.i.i = zext i1 %cmp.i.i to i32
  %arrayidx.i.i = getelementptr %struct.vpbe_display, ptr %27, i32 0, i32 2, i32 %cond.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %52 = ptrtoint ptr %enable_layer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %enable_layer.i, align 4
  %id16.i = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id16.i, align 4
  %call17.i = tail call i32 %53(ptr noundef %29, i32 noundef %55, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then11.i.if.then_crit_edge, label %if.end28.i

if.then11.i.if.then_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end28.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %layer_info15.i = getelementptr inbounds %struct.vpbe_layer, ptr %51, i32 0, i32 9
  %56 = ptrtoint ptr %layer_info15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %layer_info15.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then11.i.if.then_crit_edge, %list_del.exit.if.then_crit_edge
  %.str.119.sink = phi ptr [ @.str.119, %list_del.exit.if.then_crit_edge ], [ @.str.122, %if.then11.i.if.then_crit_edge ]
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %31, i32 0, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.119.sink, ptr noundef %name.i) #14
  %57 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur_frm, align 4
  tail call void @vb2_buffer_done(ptr noundef %58, i32 noundef 3) #11
  %59 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_queue, align 4
  %cmp22.not65 = icmp eq ptr %60, %dma_queue
  br i1 %cmp22.not65, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %list_del.exit60.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in66 = phi ptr [ %.pn, %list_del.exit60.for.body_crit_edge ], [ %60, %if.then.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in66, i32 -736
  %61 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn.in66, align 8
  %call.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in66) #11
  br i1 %call.i.i55, label %if.end.i.i58, label %for.body.list_del.exit60_crit_edge

for.body.list_del.exit60_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit60

if.end.i.i58:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i56 = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i56, align 4
  %64 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn.in66, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i57, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit60

list_del.exit60:                                  ; preds = %if.end.i.i58, %for.body.list_del.exit60_crit_edge
  %68 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in66, align 4
  %prev.i59 = getelementptr inbounds %struct.list_head, ptr %.pn.in66, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i59, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #11
  %cmp22.not = icmp eq ptr %.pn, %dma_queue
  br i1 %cmp22.not, label %list_del.exit60.cleanup_crit_edge, label %list_del.exit60.for.body_crit_edge

list_del.exit60.for.body_crit_edge:               ; preds = %list_del.exit60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit60.cleanup_crit_edge:                ; preds = %list_del.exit60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end28.i, %if.end.i.if.end_crit_edge
  %layer_first_int = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 15
  %70 = ptrtoint ptr %layer_first_int to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %layer_first_int, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_del.exit60.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.1.i63 = phi i32 [ 0, %if.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %list_del.exit60.cleanup_crit_edge ]
  ret i32 %retval.1.i63
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpbe_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %osd_device1 = getelementptr inbounds %struct.vpbe_display, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %osd_device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %osd_device1, align 4
  %disable_layer = getelementptr inbounds %struct.osd_state, ptr %6, i32 0, i32 23, i32 4
  %7 = ptrtoint ptr %disable_layer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_layer, align 4
  %id = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  tail call void %8(ptr noundef %6, i32 noundef %10) #11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %cur_frm = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_frm, align 4
  %next_frm = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_frm, align 8
  %cmp9 = icmp eq ptr %12, %14
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef %12, i32 noundef 6) #11
  br label %if.end26

if.else:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else.if.end18_crit_edge, label %if.then14

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %12, i32 noundef 6) #11
  %15 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %next_frm, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge
  %16 = phi ptr [ %.pr, %if.then14 ], [ %14, %if.else.if.end18_crit_edge ]
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %16, i32 noundef 6) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18.if.end26_crit_edge, %if.then11
  %dma_queue = getelementptr inbounds %struct.vpbe_layer, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not58 = icmp eq ptr %18, %dma_queue
  br i1 %cmp.i.not58, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end26.while.body_crit_edge
  %19 = phi ptr [ %32, %list_del.exit.while.body_crit_edge ], [ %18, %if.end26.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %19, i32 -736
  %20 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %next_frm, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %29 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next_frm, align 8
  tail call void @vb2_buffer_done(ptr noundef %30, i32 noundef 6) #11
  %31 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %32, %dma_queue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end26.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpbe_buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vpbe_dev5 = getelementptr inbounds %struct.vpbe_display, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %vpbe_dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vpbe_dev5, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name) #14
  br label %do.body12

do.body12:                                        ; preds = %do.end, %entry.do.body12_crit_edge
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %list = getelementptr inbounds %struct.vpbe_disp_buffer, ptr %vb, i32 0, i32 1
  %dma_queue = getelementptr inbounds %struct.vpbe_layer, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.vpbe_layer, ptr %3, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef %dma_queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body12.list_add_tail.exit_crit_edge

do.body12.list_add_tail.exit_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dma_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vpbe_disp_buffer, ptr %vb, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body12.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call16) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !224, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_vpbe_display__303_1508_vpbe_display_driver_init6, !4, !"__initcall__kmod_vpbe_display__303_1508_vpbe_display_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1508, i32 1}
!5 = !{ptr @__exitcall_vpbe_display_driver_exit, !4, !"__exitcall_vpbe_display_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description304, !7, !"__UNIQUE_ID_description304", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1510, i32 1}
!8 = !{ptr @__UNIQUE_ID_file305, !9, !"__UNIQUE_ID_file305", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1511, i32 1}
!10 = !{ptr @__UNIQUE_ID_license306, !9, !"__UNIQUE_ID_license306", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author307, !12, !"__UNIQUE_ID_author307", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1512, i32 1}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 34, i32 12}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1501, i32 11}
!18 = !{ptr @vpbe_display_driver, !19, !"vpbe_display_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1499, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1373, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vpbe_display_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @vpbe_display_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @vpbe_display_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1379, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1395, i32 4}
!31 = !{ptr @vpbe_display_probe._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vpbe_display_probe._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1410, i32 3}
!35 = !{ptr @vpbe_display_probe._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @vpbe_display_probe._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1419, i32 3}
!39 = !{ptr @vpbe_display_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vpbe_display_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1439, i32 4}
!43 = !{ptr @vpbe_display_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vpbe_display_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1451, i32 2}
!47 = !{ptr @vpbe_display_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vpbe_display_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1271, i32 13}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1274, i32 25}
!53 = !{ptr @init_vpbe_layer.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1291, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @init_vpbe_layer.__key.23, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1292, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1312, i32 4}
!61 = !{ptr @vpbe_fops, !62, !"vpbe_fops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1257, i32 42}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1148, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vpbe_display_open._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @vpbe_display_open._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1165, i32 4}
!70 = !{ptr @vpbe_display_open._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vpbe_display_open._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1173, i32 2}
!74 = !{ptr @vpbe_display_open._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @vpbe_display_open._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1191, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vpbe_display_release._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vpbe_display_release._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vpbe_ioctl_ops, !82, !"vpbe_ioctl_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1225, i32 36}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 631, i32 45}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 633, i32 49}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 789, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vpbe_display_enum_fmt._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @vpbe_display_enum_fmt._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 793, i32 3}
!94 = !{ptr @vpbe_display_enum_fmt._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vpbe_display_enum_fmt._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 768, i32 2}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vpbe_display_g_fmt._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @vpbe_display_g_fmt._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 774, i32 3}
!103 = !{ptr @vpbe_display_g_fmt._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @vpbe_display_g_fmt._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 817, i32 2}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vpbe_display_s_fmt._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @vpbe_display_s_fmt._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 825, i32 3}
!112 = !{ptr @vpbe_display_s_fmt._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @vpbe_display_s_fmt._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @vpbe_display_s_fmt._entry.53, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 847, i32 4}
!116 = !{ptr @vpbe_display_s_fmt._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 880, i32 3}
!119 = !{ptr @vpbe_display_s_fmt._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @vpbe_display_s_fmt._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 900, i32 2}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @vpbe_display_try_fmt._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @vpbe_display_try_fmt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @vpbe_display_try_fmt._entry.60, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 903, i32 3}
!128 = !{ptr @vpbe_display_try_fmt._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 956, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @vpbe_display_g_std._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @vpbe_display_g_std._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 925, i32 2}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vpbe_display_s_std._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @vpbe_display_s_std._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 933, i32 4}
!141 = !{ptr @vpbe_display_s_std._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vpbe_display_s_std._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 980, i32 2}
!145 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @vpbe_display_enum_output._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @vpbe_display_enum_output._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 988, i32 3}
!150 = !{ptr @vpbe_display_enum_output._entry.71, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @vpbe_display_enum_output._entry_ptr.73, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1035, i32 2}
!154 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @vpbe_display_g_output._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @vpbe_display_g_output._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1007, i32 2}
!159 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @vpbe_display_s_output._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @vpbe_display_s_output._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1017, i32 3}
!164 = !{ptr @vpbe_display_s_output._entry.78, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @vpbe_display_s_output._entry_ptr.80, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 753, i32 2}
!168 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @vpbe_display_g_pixelaspect._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @vpbe_display_g_pixelaspect._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 717, i32 2}
!173 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @vpbe_display_g_selection._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @vpbe_display_g_selection._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 651, i32 2}
!178 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @vpbe_display_s_selection._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @vpbe_display_s_selection._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 676, i32 3}
!183 = !{ptr @vpbe_display_s_selection._entry.87, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @vpbe_display_s_selection._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 690, i32 3}
!187 = !{ptr @vpbe_display_s_selection._entry.90, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @vpbe_display_s_selection._entry_ptr.92, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 516, i32 2}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @vpbe_disp_calculate_scale_factor._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @vpbe_disp_calculate_scale_factor._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 533, i32 2}
!196 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @vpbe_disp_adj_position._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @vpbe_disp_adj_position._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1086, i32 2}
!201 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @vpbe_display_s_dv_timings._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @vpbe_display_s_dv_timings._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1097, i32 3}
!206 = !{ptr @vpbe_display_s_dv_timings._entry.99, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @vpbe_display_s_dv_timings._entry_ptr.101, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1118, i32 2}
!210 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @vpbe_display_g_dv_timings._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @vpbe_display_g_dv_timings._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1056, i32 2}
!215 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @vpbe_display_enum_dv_timings._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @vpbe_display_enum_dv_timings._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1064, i32 3}
!220 = !{ptr @vpbe_display_enum_dv_timings._entry.106, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @vpbe_display_enum_dv_timings._entry_ptr.108, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @venc_isr.last_event, !223, !"last_event", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 110, i32 18}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 54, i32 3}
!226 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @venc_is_second_field._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @venc_is_second_field._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @video_qops, !230, !"video_qops", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 348, i32 29}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 230, i32 2}
!233 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @vpbe_buffer_queue_setup._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @vpbe_buffer_queue_setup._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 200, i32 2}
!238 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @vpbe_buffer_prepare._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @vpbe_buffer_prepare._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 209, i32 3}
!243 = !{ptr @vpbe_buffer_prepare._entry.115, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @vpbe_buffer_prepare._entry_ptr.117, !242, !"_entry_ptr", i1 false, i1 false}
!245 = distinct !{null, !246, !"__already_done", i1 false, i1 false}
!246 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!247 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 390, i32 3}
!250 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @vpbe_set_osd_display_params._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @vpbe_set_osd_display_params._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 404, i32 4}
!255 = !{ptr @vpbe_set_osd_display_params._entry.121, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @vpbe_set_osd_display_params._entry_ptr.123, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 260, i32 2}
!259 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @vpbe_buffer_queue._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @vpbe_buffer_queue._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1332, i32 2}
!264 = !{ptr @.str.127, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @register_device._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @register_device._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1334, i32 2}
!269 = !{ptr @register_device._entry.128, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @register_device._entry_ptr.130, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/davinci/vpbe_display.c", i32 1478, i32 2}
!273 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @vpbe_display_remove._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @vpbe_display_remove._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"auto-init"}
!286 = !{!"branch_weights", i32 2000, i32 1}
