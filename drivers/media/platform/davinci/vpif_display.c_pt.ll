; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpif_display.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpif_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vpif_device = type { %struct.v4l2_device, [2 x ptr], ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpif_channel_config_params = type { [30 x i8], i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i64, %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32, %union.anon.114 }
%union.anon.114 = type { [32 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.channel_obj = type { %struct.video_device, i32, i8, i32, ptr, i32, %struct.vpif_params, [1 x %struct.common_obj], %struct.video_obj }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vpif_params = type { %struct.vpif_interface, %struct.vpif_video_params, %struct.vpif_channel_config_params, %union.param }
%struct.vpif_interface = type { i32, i8 }
%struct.vpif_video_params = type { i8, i32, i64 }
%union.param = type { %struct.vpif_vbi_params }
%struct.vpif_vbi_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.common_obj = type { ptr, ptr, %struct.v4l2_format, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, ptr, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_obj = type { i32, i32, i64, %struct.v4l2_dv_timings }
%struct.vpif_display_config = type { ptr, ptr, i32, i32, [2 x %struct.vpif_display_chan_config], ptr }
%struct.vpif_display_chan_config = type { ptr, i32, i8 }
%struct.vpif_subdev_info = type { ptr, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.vpif_output = type { %struct.v4l2_output, ptr, i32, i32 }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vpif_disp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description298 = internal constant [56 x i8] c"vpif_display.description=TI DaVinci VPIF Display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [62 x i8] c"vpif_display.file=drivers/media/platform/davinci/vpif_display\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [25 x i8] c"vpif_display.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [27 x i8] c"vpif_display.version=0.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpif_display\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [19 x i8] c"vpif_display.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype302 = internal constant [32 x i8] c"vpif_display.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug303 = internal constant [40 x i8] c"vpif_display.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [41 x i8] c"vpif_display.alias=platform:vpif_display\00", section ".modinfo", align 1
@__initcall__kmod_vpif_display__305_1402_vpif_driver_init6 = internal global ptr @vpif_driver_init, section ".initcall6.init", align 4
@vpif_driver = internal global %struct.platform_driver { ptr @vpif_probe, ptr @vpif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@__exitcall_vpif_driver_exit = internal global ptr @vpif_driver_exit, section ".exitcall.exit", align 4
@vpif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vpif_suspend, ptr @vpif_resume, ptr @vpif_suspend, ptr @vpif_resume, ptr @vpif_suspend, ptr @vpif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vpif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1230, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing platform data.  Giving up.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpif_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/davinci/vpif_display.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr = internal global ptr @vpif_probe._entry, section ".printk_index", align 4
@vpif_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vpif_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Error initializing vpif\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.10 = internal global ptr @vpif_probe._entry.8, section ".printk_index", align 4
@vpif_obj = internal global { %struct.vpif_device, [48 x i8] } zeroinitializer, align 32
@vpif_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error registering v4l2 device\0A\00", [59 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.13 = internal global ptr @vpif_probe._entry.11, section ".printk_index", align 4
@vpif_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: VPIF IRQ request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.16 = internal global ptr @vpif_probe._entry.14, section ".printk_index", align 4
@vpif_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error registering v4l2 subdevice\0A\00", [56 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.19 = internal global ptr @vpif_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@channel_first_int = internal global { [1 x [2 x i8]], [30 x i8] } { [1 x [2 x i8]] [[2 x i8] c"\01\01"], [30 x i8] zeroinitializer }, align 32
@vpif_base = external dso_local local_unnamed_addr global ptr, align 4
@vpif_probe_complete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->irqlock\00", [47 x i8] zeroinitializer }, align 32
@vpif_probe_complete.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&common->lock\00", [18 x i8] zeroinitializer }, align 32
@video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vpif_buffer_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vpif_buffer_prepare, ptr null, ptr null, ptr @vpif_start_streaming, ptr @vpif_stop_streaming, ptr @vpif_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vpif_probe_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: vpif_display: vb2_queue_init() failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpif_probe_complete\00", [44 x i8] zeroinitializer }, align 32
@vpif_probe_complete._entry_ptr = internal global ptr @vpif_probe_complete._entry, section ".printk_index", align 4
@vpif_probe_complete._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: channel=%p,channel->video_dev=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@vpif_probe_complete._entry_ptr.27 = internal global ptr @vpif_probe_complete._entry.25, section ".printk_index", align 4
@vpif_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@vpif_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpif_querycap, ptr null, ptr null, ptr @vpif_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vpif_g_std, ptr @vpif_s_std, ptr null, ptr null, ptr null, ptr null, ptr @vpif_enum_output, ptr @vpif_g_output, ptr @vpif_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_s_dv_timings, ptr @vpif_g_dv_timings, ptr null, ptr @vpif_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vpif_set_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Failed to set output\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpif_set_output\00", [16 x i8] zeroinitializer }, align 32
@vpif_set_output._entry_ptr = internal global ptr @vpif_set_output._entry, section ".printk_index", align 4
@vpif_output_to_subdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: vpif_output_to_subdev\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpif_output_to_subdev\00", [42 x i8] zeroinitializer }, align 32
@vpif_output_to_subdev._entry_ptr = internal global ptr @vpif_output_to_subdev._entry, section ".printk_index", align 4
@vpif_update_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Pixel details: Width = %d,Height = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpif_update_resolution\00", [41 x i8] zeroinitializer }, align 32
@vpif_update_resolution._entry_ptr = internal global ptr @vpif_update_resolution._entry, section ".printk_index", align 4
@vpif_ch_params_count = external dso_local local_unnamed_addr constant i32, align 4
@vpif_ch_params = external dso_local local_unnamed_addr constant [0 x %struct.vpif_channel_config_params], align 8
@vpif_update_std_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: SD format\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_update_std_info\00", [43 x i8] zeroinitializer }, align 32
@vpif_update_std_info._entry_ptr = internal global ptr @vpif_update_std_info._entry, section ".printk_index", align 4
@vpif_update_std_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Format not found\0A\00", [40 x i8] zeroinitializer }, align 32
@vpif_update_std_info._entry_ptr.38 = internal global ptr @vpif_update_std_info._entry.36, section ".printk_index", align 4
@vpif_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: buffer offset not aligned to 8 bytes\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpif_buffer_prepare\00", [44 x i8] zeroinitializer }, align 32
@vpif_buffer_prepare._entry_ptr = internal global ptr @vpif_buffer_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: can't set clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry_ptr = internal global ptr @vpif_start_streaming._entry, section ".printk_index", align 4
@ycmux_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vpif_lock = external dso_local global %struct.spinlock, align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vpif_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to set output standard\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpif_s_std\00", [21 x i8] zeroinitializer }, align 32
@vpif_s_std._entry_ptr = internal global ptr @vpif_s_std._entry, section ".printk_index", align 4
@vpif_s_std._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Failed to set standard for sub devices\0A\00", [50 x i8] zeroinitializer }, align 32
@vpif_s_std._entry_ptr.49 = internal global ptr @vpif_s_std._entry.47, section ".printk_index", align 4
@vpif_enum_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Invalid output index\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpif_enum_output\00", [47 x i8] zeroinitializer }, align 32
@vpif_enum_output._entry_ptr = internal global ptr @vpif_enum_output._entry, section ".printk_index", align 4
@vpif_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Timing type not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpif_s_dv_timings\00", [46 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr = internal global ptr @vpif_s_dv_timings._entry, section ".printk_index", align 4
@vpif_s_dv_timings._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Error setting custom DV timings\0A\00", [57 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.56 = internal global ptr @vpif_s_dv_timings._entry.54, section ".printk_index", align 4
@vpif_s_dv_timings._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.5, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [173 x i8], [51 x i8] } { [173 x i8] c"\017%s: Timings for width, height, horizontal back porch, horizontal sync, horizontal front porch, vertical back porch, vertical sync and vertical back porch must be defined\0A\00", [51 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.59 = internal global ptr @vpif_s_dv_timings._entry.57, section ".printk_index", align 4
@vpif_s_dv_timings._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.5, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: Required timing values for interlaced BT format missing\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.62 = internal global ptr @vpif_s_dv_timings._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Custom timings BT656/1120\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 30, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 38, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"vpif_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1391, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1230, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"vpif_dev\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 53, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1238, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"vpif_obj\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 52, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1244, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1255, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1278, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"channel_first_int\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 50, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1133, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1134, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [11 x i8] c"video_qops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 293, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1178, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1185, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"vpif_fops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1077, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"vpif_ioctl_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1047, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 825, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 780, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 475, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 441, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 450, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 92, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1163, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 185, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [11 x i8] c"ycmux_mode\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 48, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 588, i32 49 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 712, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 719, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 754, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 933, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 942, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 953, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 978, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [49 x i8] c"../drivers/media/platform/davinci/vpif_display.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 984, i32 26 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_debug303, ptr @__UNIQUE_ID_debugtype302, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_version301, ptr @__exitcall_vpif_driver_exit, ptr @__initcall__kmod_vpif_display__305_1402_vpif_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @vpif_buffer_prepare._entry, ptr @vpif_buffer_prepare._entry_ptr, ptr @vpif_driver_exit, ptr @vpif_enum_output._entry, ptr @vpif_enum_output._entry_ptr, ptr @vpif_output_to_subdev._entry, ptr @vpif_output_to_subdev._entry_ptr, ptr @vpif_probe._entry, ptr @vpif_probe._entry.11, ptr @vpif_probe._entry.14, ptr @vpif_probe._entry.17, ptr @vpif_probe._entry.8, ptr @vpif_probe._entry_ptr, ptr @vpif_probe._entry_ptr.10, ptr @vpif_probe._entry_ptr.13, ptr @vpif_probe._entry_ptr.16, ptr @vpif_probe._entry_ptr.19, ptr @vpif_probe_complete._entry, ptr @vpif_probe_complete._entry.25, ptr @vpif_probe_complete._entry_ptr, ptr @vpif_probe_complete._entry_ptr.27, ptr @vpif_s_dv_timings._entry, ptr @vpif_s_dv_timings._entry.54, ptr @vpif_s_dv_timings._entry.57, ptr @vpif_s_dv_timings._entry.60, ptr @vpif_s_dv_timings._entry_ptr, ptr @vpif_s_dv_timings._entry_ptr.56, ptr @vpif_s_dv_timings._entry_ptr.59, ptr @vpif_s_dv_timings._entry_ptr.62, ptr @vpif_s_std._entry, ptr @vpif_s_std._entry.47, ptr @vpif_s_std._entry_ptr, ptr @vpif_s_std._entry_ptr.49, ptr @vpif_set_output._entry, ptr @vpif_set_output._entry_ptr, ptr @vpif_start_streaming._entry, ptr @vpif_start_streaming._entry_ptr, ptr @vpif_update_resolution._entry, ptr @vpif_update_resolution._entry_ptr, ptr @vpif_update_std_info._entry, ptr @vpif_update_std_info._entry.36, ptr @vpif_update_std_info._entry_ptr, ptr @vpif_update_std_info._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @vpif_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vpif_dev, ptr @.str.9, ptr @vpif_obj, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @channel_first_int, ptr @vpif_probe_complete.__key, ptr @.str.20, ptr @vpif_probe_complete.__key.21, ptr @.str.22, ptr @video_qops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @vpif_fops, ptr @vpif_ioctl_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @ycmux_mode, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_obj to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_first_int to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_set_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_output_to_subdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_std_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_std_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ycmux_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_std._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_enum_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpif_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpif_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpif_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %dev, ptr @vpif_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2688) #16
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end7_crit_edge, label %for.inc.i

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

for.inc.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2688) #16
  store ptr %call7.i.i.1.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %cleanup.loopexit.critedge.i, label %if.end9

cleanup.loopexit.critedge.i:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %4) #12
  br label %do.end7

do.end7:                                          ; preds = %cleanup.loopexit.critedge.i, %if.end.do.end7_crit_edge
  %5 = load ptr, ptr @vpif_dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %9) #15
  br label %cleanup

if.end9:                                          ; preds = %for.inc.i
  %10 = load ptr, ptr @vpif_dev, align 4
  %call10 = tail call i32 @v4l2_device_register(ptr noundef %10, ptr noundef nonnull @vpif_obj) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %while.cond.preheader, label %do.end15

while.cond.preheader:                             ; preds = %if.end9
  %call21109 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool22.not110 = icmp eq ptr %call21109, null
  br i1 %tobool22.not110, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %11 = load ptr, ptr @vpif_dev, align 4
  %driver17 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %driver17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver17, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %15) #15
  br label %vpif_free

while.cond:                                       ; preds = %while.body
  %inc = add i32 %res_idx.0111, 1
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %inc) #12
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call21112 = phi ptr [ %call21, %while.cond.while.body_crit_edge ], [ %call21109, %while.cond.preheader.while.body_crit_edge ]
  %res_idx.0111 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %16 = ptrtoint ptr %call21112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call21112, align 4
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %res_idx.0111
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %19, i32 0, i32 5
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @vpif_channel_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %channel_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %while.cond, label %if.then26

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %vpif_unregister

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data, align 8
  store ptr %21, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3), align 4
  %subdev_count35 = getelementptr inbounds %struct.vpif_display_config, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %subdev_count35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subdev_count35, align 4
  %subdevinfo = getelementptr inbounds %struct.vpif_display_config, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %subdevinfo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subdevinfo, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #12
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !162

kcalloc.exit.thread:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  br label %vpif_unregister

if.end7.i.i:                                      ; preds = %while.end
  %28 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #17
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %tobool37.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool37.not, label %if.end7.i.i.vpif_unregister_crit_edge, label %if.end39

if.end7.i.i.vpif_unregister_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_unregister

if.end39:                                         ; preds = %if.end7.i.i
  %29 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3), align 4
  %i2c_adapter_id = getelementptr inbounds %struct.vpif_display_config, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2c_adapter_id, align 4
  %call40 = tail call ptr @i2c_get_adapter(i32 noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp113.not = icmp eq i32 %23, 0
  br i1 %cmp113.not, label %if.end39.for.body.i.preheader_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.for.body.i.preheader_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.body:                                         ; preds = %if.then55.for.body_crit_edge, %if.end39.for.body_crit_edge
  %i.0114 = phi i32 [ %inc58, %if.then55.for.body_crit_edge ], [ 0, %if.end39.for.body_crit_edge ]
  %board_info = getelementptr %struct.vpif_subdev_info, ptr %25, i32 %i.0114, i32 1
  %call42 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef nonnull @vpif_obj, ptr noundef %call40, ptr noundef %board_info, ptr noundef null) #12
  %32 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx43 = getelementptr ptr, ptr %32, i32 %i.0114
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call42, ptr %arrayidx43, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx44 = getelementptr ptr, ptr %34, i32 %i.0114
  %35 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %36, null
  br i1 %tobool45.not, label %do.end49, label %if.then55

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %probe_subdev_out

if.then55:                                        ; preds = %for.body
  %shl = shl nuw i32 1, %i.0114
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl, ptr %grp_id, align 4
  %inc58 = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc58, %23
  br i1 %exitcond.not, label %if.then55.for.body.i.preheader_crit_edge, label %if.then55.for.body_crit_edge

if.then55.for.body_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then55.for.body.i.preheader_crit_edge:         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then55.for.body.i.preheader_crit_edge, %if.end39.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc51.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.0134.i = phi i32 [ %inc52.i, %for.inc51.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %j.0134.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %common4.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7
  %irqlock.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 6
  %ytop_off.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 7
  %fmt.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @vpif_probe_complete.__key, i16 noundef signext 3) #12
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @vpif_probe_complete.__key.21) #12
  %initialized.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %initialized.i, align 4
  %41 = call ptr @memset(ptr %common4.i, i32 0, i32 212)
  %42 = call ptr @memset(ptr %ytop_off.i, i32 0, i32 20)
  %43 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3), align 4
  %subdev_count.i = getelementptr inbounds %struct.vpif_display_config, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %subdev_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i90 = icmp eq i32 %45, 0
  br i1 %tobool.not.i90, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %sd.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 4
  %49 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %sd.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %channel_id.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 5
  %50 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %j.0134.i, ptr %channel_id.i, align 8
  %vpifparams.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 6
  %51 = call ptr @memset(ptr %vpifparams.i, i32 0, i32 264)
  %52 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %fmt.i, align 8
  %call13.i = tail call fastcc i32 @vpif_set_output(ptr noundef %43, ptr noundef %39, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end.i.probe_out.i_crit_edge

if.end.i.probe_out.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_out.i

if.end16.i:                                       ; preds = %if.end.i
  %stdid.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 8, i32 2
  %53 = ptrtoint ptr %stdid.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 63744, ptr %stdid.i, align 8
  %dv_timings.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 8, i32 3
  %54 = call ptr @memset(ptr %dv_timings.i, i32 0, i32 132)
  %call18.i = tail call fastcc i32 @vpif_update_resolution(ptr noundef %39) #12
  %buffer_queue.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3
  %55 = ptrtoint ptr %buffer_queue.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %buffer_queue.i, align 4
  %io_modes.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 19, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 10
  %57 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %39, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 7
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @video_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 12
  %60 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 13
  %61 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 15
  %62 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %min_buffers_needed.i, align 4
  %lock21.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 5
  %63 = ptrtoint ptr %lock21.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %lock.i, ptr %lock21.i, align 4
  %64 = load ptr, ptr @vpif_dev, align 4
  %dev.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 3, i32 2
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %dev.i, align 4
  %call22.i = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %probe_out.i

if.end29.i:                                       ; preds = %if.end16.i
  %dma_queue.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 4
  %66 = ptrtoint ptr %dma_queue.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %dma_queue.i, ptr %dma_queue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.channel_obj, ptr %39, i32 0, i32 7, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dma_queue.i, ptr %prev.i.i, align 4
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp31.i = icmp sgt i32 %68, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.end29.i.do.end40.i_crit_edge

if.end29.i.do.end40.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), ptr noundef %39, ptr noundef %39) #15
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end35.i, %if.end29.i.do.end40.i_crit_edge
  %name.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 12
  %call42.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %release.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 23
  %69 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 3
  %70 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @vpif_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 24
  %71 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @vpif_ioctl_ops, ptr %ioctl_ops.i, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 7
  %72 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @vpif_obj, ptr %v4l2_dev.i, align 4
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 14
  %73 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %vfl_dir.i, align 4
  %queue.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 10
  %74 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buffer_queue.i, ptr %queue.i, align 8
  %lock44.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 26
  %75 = ptrtoint ptr %lock44.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %lock.i, ptr %lock44.i, align 8
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 4
  %76 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 67108866, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 5, i32 8
  %77 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %39, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0134.i)
  %tobool46.not.i = icmp eq i32 %j.0134.i, 0
  %cond.i = select i1 %tobool46.not.i, i32 2, i32 3
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %39, i32 noundef 0, i32 noundef %cond.i, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp48.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp48.i, label %do.end40.i.probe_out.i_crit_edge, label %for.inc51.i

do.end40.i.probe_out.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_out.i

for.inc51.i:                                      ; preds = %do.end40.i
  %inc52.i = add nuw nsw i32 %j.0134.i, 1
  %exitcond.not.i = icmp eq i32 %inc52.i, 2
  br i1 %exitcond.not.i, label %for.inc51.i.cleanup_crit_edge, label %for.inc51.i.for.body.i_crit_edge

for.inc51.i.for.body.i_crit_edge:                 ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc51.i.cleanup_crit_edge:                    ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

probe_out.i:                                      ; preds = %do.end40.i.probe_out.i_crit_edge, %do.end27.i, %if.end.i.probe_out.i_crit_edge
  %err.0.i = phi i32 [ %call22.i, %do.end27.i ], [ %call13.i, %if.end.i.probe_out.i_crit_edge ], [ %call.i.i, %do.end40.i.probe_out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0134.i)
  %cmp55135.not.i = icmp eq i32 %j.0134.i, 0
  br i1 %cmp55135.not.i, label %probe_out.i.probe_subdev_out_crit_edge, label %for.body56.lr.ph.i

probe_out.i.probe_subdev_out_crit_edge:           ; preds = %probe_out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_subdev_out

for.body56.lr.ph.i:                               ; preds = %probe_out.i
  %cmp55.not.i = icmp eq i32 %j.0134.i, 1
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.body56.i.for.body56.i_crit_edge, %for.body56.lr.ph.i
  %78 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1), align 4
  tail call void @video_unregister_device(ptr noundef %78) #12
  br i1 %cmp55.not.i, label %vpif_probe_complete.exit, label %for.body56.i.for.body56.i_crit_edge

for.body56.i.for.body56.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56.i

vpif_probe_complete.exit:                         ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool60.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool60.not, label %vpif_probe_complete.exit.cleanup_crit_edge, label %vpif_probe_complete.exit.probe_subdev_out_crit_edge

vpif_probe_complete.exit.probe_subdev_out_crit_edge: ; preds = %vpif_probe_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_subdev_out

vpif_probe_complete.exit.cleanup_crit_edge:       ; preds = %vpif_probe_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

probe_subdev_out:                                 ; preds = %vpif_probe_complete.exit.probe_subdev_out_crit_edge, %probe_out.i.probe_subdev_out_crit_edge, %do.end49
  %err.0 = phi i32 [ -19, %do.end49 ], [ %err.0.i, %vpif_probe_complete.exit.probe_subdev_out_crit_edge ], [ %err.0.i, %probe_out.i.probe_subdev_out_crit_edge ]
  %79 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %79) #12
  br label %vpif_unregister

vpif_unregister:                                  ; preds = %probe_subdev_out, %if.end7.i.i.vpif_unregister_crit_edge, %kcalloc.exit.thread, %if.then26
  %err.1 = phi i32 [ -22, %if.then26 ], [ %err.0, %probe_subdev_out ], [ -12, %if.end7.i.i.vpif_unregister_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull @vpif_obj) #12
  br label %vpif_free

vpif_free:                                        ; preds = %vpif_unregister, %do.end15
  %err.2 = phi i32 [ %call10, %do.end15 ], [ %err.1, %vpif_unregister ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @kfree(ptr noundef %80) #12
  %81 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %81) #12
  br label %cleanup

cleanup:                                          ; preds = %vpif_free, %vpif_probe_complete.exit.cleanup_crit_edge, %for.inc51.i.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -12, %do.end7 ], [ %err.2, %vpif_free ], [ -22, %do.end ], [ 0, %vpif_probe_complete.exit.cleanup_crit_edge ], [ 0, %for.inc51.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_remove(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister(ptr noundef nonnull @vpif_obj) #12
  %0 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %0) #12
  %1 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @video_unregister_device(ptr noundef %1) #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @video_unregister_device(ptr noundef %2) #12
  %3 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @kfree(ptr noundef %3) #12
  %4 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_channel_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 4
  %add = add i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %2 = icmp ugt i32 %add, 3
  br i1 %2, label %entry.cleanup_crit_edge, label %vpif_intr_status.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vpif_intr_status.exit:                            ; preds = %entry
  %shl.i = shl nuw nsw i32 1, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !163
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  %and.i = and i32 %5, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #12, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %vpif_intr_status.exit.cleanup_crit_edge, label %if.end

vpif_intr_status.exit.cleanup_crit_edge:          ; preds = %vpif_intr_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %vpif_intr_status.exit
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %common2 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7
  %frm_fmt = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 6, i32 2, i32 3
  %arrayidx26 = getelementptr [2 x i8], ptr @channel_first_int, i32 0, i32 %1
  %field_id = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 1
  %channel_id35 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 5
  %irqlock.i = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 5
  %dma_queue.i = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 4
  %next_frm13.i = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %frm_fmt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frm_fmt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp4 = icmp eq i8 %11, 1
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %irqlock.i) #12
  %12 = ptrtoint ptr %dma_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %dma_queue.i, align 4
  %cmp.i.not = icmp eq ptr %13, %dma_queue.i
  tail call void @_raw_spin_unlock(ptr noundef %irqlock.i) #12
  br i1 %cmp.i.not, label %if.then6.cleanup_crit_edge, label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.then16, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i64 @ktime_get() #12
  %16 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common2, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i, ptr %timestamp, align 8
  %19 = load ptr, ptr %common2, align 4
  tail call void @vb2_buffer_done(ptr noundef %19, i32 noundef 5) #12
  %20 = ptrtoint ptr %next_frm13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_frm13.i, align 4
  %22 = ptrtoint ptr %common2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %common2, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end11.if.end22_crit_edge
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx26, align 1
  tail call fastcc void @process_progressive_mode(ptr noundef %common2)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %if.then34, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx26, align 1
  br label %cleanup

if.then34:                                        ; preds = %if.else
  %27 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field_id, align 8
  %xor = xor i32 %28, 1
  store i32 %xor, ptr %field_id, align 8
  %29 = ptrtoint ptr %channel_id35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_id35, align 8
  %31 = trunc i32 %30 to i8
  %conv37 = add i8 %31, 2
  %call38 = tail call i32 @vpif_channel_getfid(i8 noundef zeroext %conv37) #12
  %32 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %33)
  %cmp40.not = icmp eq i32 %call38, %33
  br i1 %cmp40.not, label %if.end49, label %if.then42

if.then42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp43 = icmp eq i32 %call38, 0
  br i1 %cmp43, label %if.then45, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %field_id, align 8
  br label %cleanup

if.end49:                                         ; preds = %if.then34
  %35 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call38, label %if.end49.cleanup_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then10.i
  ]

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end49
  %36 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common2, align 4
  %38 = ptrtoint ptr %next_frm13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_frm13.i, align 4
  %cmp1.i = icmp eq ptr %37, %39
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.end.i85

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i85:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i64 @ktime_get() #12
  %40 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %common2, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %43 = load ptr, ptr %common2, align 4
  tail call void @vb2_buffer_done(ptr noundef %43, i32 noundef 5) #12
  %44 = ptrtoint ptr %next_frm13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_frm13.i, align 4
  %46 = ptrtoint ptr %common2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %common2, align 4
  br label %cleanup

if.then10.i:                                      ; preds = %if.end49
  tail call void @_raw_spin_lock(ptr noundef %irqlock.i) #12
  %47 = ptrtoint ptr %dma_queue.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %dma_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %48, %dma_queue.i
  br i1 %cmp.i.not.i, label %if.then10.i.if.then15.i_crit_edge, label %lor.lhs.false.i

if.then10.i.if.then15.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.then10.i
  %49 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %common2, align 4
  %51 = ptrtoint ptr %next_frm13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %next_frm13.i, align 4
  %cmp14.not.i = icmp eq ptr %50, %52
  br i1 %cmp14.not.i, label %if.end17.i, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.then10.i.if.then15.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irqlock.i) #12
  br label %cleanup

if.end17.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %irqlock.i) #12
  tail call fastcc void @process_progressive_mode(ptr noundef %common2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %if.then15.i, %if.end.i85, %if.then.i.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then45, %if.then42.cleanup_crit_edge, %if.then28, %if.end22, %if.then6.cleanup_crit_edge, %vpif_intr_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vpif_intr_status.exit.cleanup_crit_edge ], [ 1, %if.then45 ], [ 1, %if.then42.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %if.end22 ], [ 1, %if.end49.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end.i85 ], [ 1, %if.then15.i ], [ 1, %if.end17.i ], [ 1, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_progressive_mode(ptr noundef %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #12
  %dma_queue = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %next_frm = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 1
  %2 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #12
  %11 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_frm, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %12, i32 noundef 0) #12
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %set_addr = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 11
  %15 = ptrtoint ptr %set_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_addr, align 4
  %ytop_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 7
  %17 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ytop_off, align 4
  %add = add i32 %18, %14
  %ybtm_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 8
  %19 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ybtm_off, align 4
  %add4 = add i32 %20, %14
  %ctop_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 9
  %21 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctop_off, align 4
  %add5 = add i32 %22, %14
  %cbtm_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 10
  %23 = ptrtoint ptr %cbtm_off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cbtm_off, align 4
  %add6 = add i32 %24, %14
  tail call void %16(i32 noundef %add, i32 noundef %add4, i32 noundef %add5, i32 noundef %add6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpif_channel_getfid(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpif_set_output(ptr nocapture noundef readonly %vpif_cfg, ptr nocapture noundef %ch, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_id, align 8
  %arrayidx = getelementptr %struct.vpif_display_config, ptr %vpif_cfg, i32 0, i32 4, i32 %1
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp sgt i32 %2, 1
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end3.i.if.end36_crit_edge, label %if.end5.i

do.end3.i.if.end36_crit_edge:                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end5.i:                                        ; preds = %do.end3.i
  %subdev_name7.i = getelementptr %struct.vpif_output, ptr %4, i32 %index, i32 1
  %5 = ptrtoint ptr %subdev_name7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdev_name7.i, align 8
  %tobool8.not.i = icmp eq ptr %6, null
  br i1 %tobool8.not.i, label %if.end5.i.if.end36_crit_edge, label %for.cond.preheader.i

if.end5.i.if.end36_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

for.cond.preheader.i:                             ; preds = %if.end5.i
  %subdev_count.i = getelementptr inbounds %struct.vpif_display_config, ptr %vpif_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %subdev_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %subdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1126.i = icmp sgt i32 %8, 0
  br i1 %cmp1126.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end36_crit_edge

for.cond.preheader.i.if.end36_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %subdevinfo.i = getelementptr inbounds %struct.vpif_display_config, ptr %vpif_cfg, i32 0, i32 1
  %9 = ptrtoint ptr %subdevinfo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdevinfo.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.vpif_subdev_info, ptr %10, i32 %i.027.i
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull %6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end:                                           ; preds = %for.body.i
  %13 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx1 = getelementptr ptr, ptr %13, i32 %i.027.i
  %14 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end36_crit_edge, label %if.then2

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then2:                                         ; preds = %if.end
  %input_route = getelementptr %struct.vpif_output, ptr %4, i32 %index, i32 2
  %16 = ptrtoint ptr %input_route to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input_route, align 4
  %output_route = getelementptr %struct.vpif_output, ptr %4, i32 %index, i32 3
  %18 = ptrtoint ptr %output_route to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output_route, align 8
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %if.then2.if.end36_crit_edge, label %land.lhs.true

if.then2.if.end36_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %land.lhs.true.if.end36_crit_edge, label %if.else13

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true15.if.else21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true15.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %land.lhs.true15.if.end28_crit_edge
  %.sink = phi ptr [ %25, %if.else21 ], [ %28, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = tail call i32 %.sink(ptr noundef nonnull %15, i32 noundef %17, i32 noundef %19, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp29 = icmp sgt i32 %call25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call25)
  %cmp31.not = icmp eq i32 %call25, -515
  %or.cond = or i1 %cmp29, %cmp31.not
  br i1 %or.cond, label %if.end28.if.end36_crit_edge, label %do.end

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end28.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.then2.if.end36_crit_edge, %if.end.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge, %for.cond.preheader.i.if.end36_crit_edge, %if.end5.i.if.end36_crit_edge, %do.end3.i.if.end36_crit_edge
  %sd.081 = phi ptr [ %15, %if.end28.if.end36_crit_edge ], [ null, %if.end.if.end36_crit_edge ], [ null, %do.end3.i.if.end36_crit_edge ], [ null, %if.end5.i.if.end36_crit_edge ], [ null, %for.cond.preheader.i.if.end36_crit_edge ], [ %15, %land.lhs.true.if.end36_crit_edge ], [ %15, %if.then2.if.end36_crit_edge ], [ null, %for.inc.i.if.end36_crit_edge ]
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 3
  %29 = ptrtoint ptr %output_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %index, ptr %output_idx, align 8
  %sd37 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 4
  %30 = ptrtoint ptr %sd37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sd.081, ptr %sd37, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool39.not = icmp eq ptr %32, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.then40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %std = getelementptr %struct.vpif_output, ptr %32, i32 %index, i32 0, i32 5
  %33 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %std, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %ch, i32 0, i32 22
  %35 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %tvnorms, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call25, %do.end ], [ 0, %if.then40 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpif_update_resolution(ptr nocapture noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stdid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then7

land.lhs.true:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 8, i32 3, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %entry
  %std_info2.i = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_ch_params_count to i32))
  %4 = load i32, ptr @vpif_ch_params_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp45.not.i = icmp eq i32 %4, 0
  br i1 %cmp45.not.i, label %if.then7.for.end.i_crit_edge, label %if.then7.for.body.i_crit_edge

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

if.then7.for.end.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then7.for.body.i_crit_edge ]
  %hd_sd.i = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %i.046.i, i32 16
  %5 = ptrtoint ptr %hd_sd.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hd_sd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.i = icmp eq i8 %6, 0
  br i1 %cmp3.i, label %do.body.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5.i = icmp sgt i32 %7, 1
  br i1 %cmp5.i, label %do.end.i, label %do.body.i.do.end10.i_crit_edge

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  %stdid.i = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %i.046.i, i32 17
  %8 = ptrtoint ptr %stdid.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %stdid.i, align 8
  %10 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stdid, align 8
  %and.i = and i64 %11, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.end10.i.for.inc.i_crit_edge, label %if.then12.i

do.end10.i.for.inc.i_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.le.i = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %i.046.i
  %12 = call ptr @memcpy(ptr %std_info2.i, ptr %arrayidx.le.i, i32 208)
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.do.body18.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body18.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

for.end.i:                                        ; preds = %if.then12.i, %if.then7.for.end.i_crit_edge
  %i.043.i = phi i32 [ %i.046.i, %if.then12.i ], [ 0, %if.then7.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.043.i, i32 %4)
  %cmp15.i = icmp eq i32 %i.043.i, %4
  br i1 %cmp15.i, label %for.end.i.do.body18.i_crit_edge, label %for.end.i.if.end11_crit_edge

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.end.i.do.body18.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

do.body18.i:                                      ; preds = %for.end.i.do.body18.i_crit_edge, %for.inc.i.do.body18.i_crit_edge
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.i = icmp sgt i32 %13, 0
  br i1 %cmp19.i, label %do.end24.i, label %do.body18.i.cleanup_crit_edge

do.body18.i.cleanup_crit_edge:                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end24.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end11:                                         ; preds = %for.end.i.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %fmt12 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1
  %pixelformat = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1345466932, ptr %pixelformat, align 4
  %width = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 1
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %width, align 2
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %fmt12, align 4
  %height16 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 2
  %18 = ptrtoint ptr %height16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %height16, align 8
  %conv17 = zext i16 %19 to i32
  %height20 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv17, ptr %height20, align 4
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %do.end, label %if.end11.do.end33_crit_edge

if.end11.do.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), i32 noundef %conv, i32 noundef %conv17) #15
  br label %do.end33

do.end33:                                         ; preds = %do.end, %if.end11.do.end33_crit_edge
  %22 = ptrtoint ptr %height16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %height16, align 8
  %conv35 = zext i16 %23 to i32
  %height36 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 12
  %24 = ptrtoint ptr %height36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv35, ptr %height36, align 4
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %width, align 2
  %conv38 = zext i16 %26 to i32
  %width39 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 13
  %27 = ptrtoint ptr %width39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv38, ptr %width39, align 4
  %mul = shl nuw nsw i32 %conv35, 1
  %mul42 = mul i32 %mul, %conv38
  %sizeimage = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul42, ptr %sizeimage, align 4
  %29 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stdid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool46.not = icmp eq i64 %30, 0
  %spec.select = select i1 %tobool46.not, i32 3, i32 1
  %31 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %31, align 4
  %frm_fmt = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 3
  %33 = ptrtoint ptr %frm_fmt to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %frm_fmt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool56.not = icmp eq i8 %34, 0
  %field63 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  br i1 %tobool56.not, label %if.else60, label %if.then57

if.then57:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %field63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %field63, align 4
  br label %cleanup

if.else60:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %field63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %field63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else60, %if.then57, %do.end24.i, %do.body18.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else60 ], [ 0, %if.then57 ], [ -22, %do.end24.i ], [ -22, %do.body18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpif_buffer_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %size.0 = phi i32 [ %3, %entry.if.end6_crit_edge ], [ %7, %if.then.if.end6_crit_edge ]
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbuffers, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp7 = icmp ult i32 %add, 3
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 3, %9
  %12 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.0, ptr %sizes, align 4
  %field4.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field4.i, align 4
  %video.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %frm_fmt.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 3
  %17 = ptrtoint ptr %frm_fmt.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %frm_fmt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %..i = select i1 %tobool.not.i, i32 4, i32 1
  %19 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %..i, ptr %video.i, align 8
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage, align 4
  %bytesperline159.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline159.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytesperline159.i, align 4
  br label %if.then26.i

if.end16.i:                                       ; preds = %if.end10
  %24 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %video.i, align 8
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizeimage, align 4
  %bytesperline.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytesperline.i, align 4
  %29 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %16, label %if.end16.i.if.end56.i_crit_edge [
    i32 1, label %if.end16.i.if.then26.i_crit_edge
    i32 4, label %if.end16.i.if.then26.i_crit_edge22
    i32 5, label %if.then31.i
    i32 6, label %if.then44.i
  ]

if.end16.i.if.then26.i_crit_edge22:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.end16.i.if.end56.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then26.i:                                      ; preds = %if.end16.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge22, %if.then.i
  %30 = phi i32 [ %23, %if.then.i ], [ %28, %if.end16.i.if.then26.i_crit_edge ], [ %28, %if.end16.i.if.then26.i_crit_edge22 ]
  %31 = phi i32 [ %21, %if.then.i ], [ %26, %if.end16.i.if.then26.i_crit_edge ], [ %26, %if.end16.i.if.then26.i_crit_edge22 ]
  %32 = phi i32 [ %..i, %if.then.i ], [ %16, %if.end16.i.if.then26.i_crit_edge ], [ %16, %if.end16.i.if.then26.i_crit_edge22 ]
  %ytop_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 7
  %33 = ptrtoint ptr %ytop_off.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ytop_off.i, align 4
  %ybtm_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %34 = ptrtoint ptr %ybtm_off.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %ybtm_off.i, align 4
  %div157.i = lshr i32 %31, 1
  %ctop_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %35 = ptrtoint ptr %ctop_off.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div157.i, ptr %ctop_off.i, align 4
  %add.i = add i32 %div157.i, %30
  %cbtm_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %36 = ptrtoint ptr %cbtm_off.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %cbtm_off.i, align 4
  br label %if.end56.i

if.then31.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %ytop_off32.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 7
  %37 = ptrtoint ptr %ytop_off32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ytop_off32.i, align 4
  %div33155.i = lshr i32 %26, 2
  %ybtm_off34.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %38 = ptrtoint ptr %ybtm_off34.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div33155.i, ptr %ybtm_off34.i, align 4
  %div35156.i = lshr i32 %26, 1
  %ctop_off36.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %39 = ptrtoint ptr %ctop_off36.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div35156.i, ptr %ctop_off36.i, align 4
  %add39.i = add nuw i32 %div35156.i, %div33155.i
  %cbtm_off40.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %40 = ptrtoint ptr %cbtm_off40.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add39.i, ptr %cbtm_off40.i, align 4
  br label %if.else63.i

if.then44.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %ybtm_off45.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %41 = ptrtoint ptr %ybtm_off45.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ybtm_off45.i, align 4
  %div46153.i = lshr i32 %26, 2
  %ytop_off47.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 7
  %42 = ptrtoint ptr %ytop_off47.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div46153.i, ptr %ytop_off47.i, align 4
  %div48154.i = lshr i32 %26, 1
  %cbtm_off49.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %43 = ptrtoint ptr %cbtm_off49.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div48154.i, ptr %cbtm_off49.i, align 4
  %add52.i = add nuw i32 %div48154.i, %div46153.i
  %ctop_off53.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %44 = ptrtoint ptr %ctop_off53.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add52.i, ptr %ctop_off53.i, align 4
  br label %if.else63.i

if.end56.i:                                       ; preds = %if.then26.i, %if.end16.i.if.end56.i_crit_edge
  %45 = phi i32 [ %28, %if.end16.i.if.end56.i_crit_edge ], [ %30, %if.then26.i ]
  %46 = phi i32 [ %16, %if.end16.i.if.end56.i_crit_edge ], [ %32, %if.then26.i ]
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %46, label %if.end56.i.if.else63.i_crit_edge [
    i32 1, label %if.end56.i.if.end66.i_crit_edge
    i32 4, label %if.end56.i.if.end66.i_crit_edge23
  ]

if.end56.i.if.end66.i_crit_edge23:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.end56.i.if.end66.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.end56.i.if.else63.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else63.i

if.else63.i:                                      ; preds = %if.end56.i.if.else63.i_crit_edge, %if.then44.i, %if.then31.i
  %48 = phi i32 [ %45, %if.end56.i.if.else63.i_crit_edge ], [ %28, %if.then31.i ], [ %28, %if.then44.i ]
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else63.i, %if.end56.i.if.end66.i_crit_edge, %if.end56.i.if.end66.i_crit_edge23
  %.sink.i = phi i8 [ 0, %if.else63.i ], [ 1, %if.end56.i.if.end66.i_crit_edge ], [ 1, %if.end56.i.if.end66.i_crit_edge23 ]
  %49 = phi i32 [ %48, %if.else63.i ], [ %45, %if.end56.i.if.end66.i_crit_edge ], [ %45, %if.end56.i.if.end66.i_crit_edge23 ]
  %video_params64.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %video_params64.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i, ptr %video_params64.i, align 8
  %frm_fmt69.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 3
  %51 = ptrtoint ptr %frm_fmt69.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %frm_fmt69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp70.i = icmp eq i8 %52, 1
  br i1 %cmp70.i, label %if.end66.i.vpif_calculate_offsets.exit_crit_edge, label %if.else78.i

if.end66.i.vpif_calculate_offsets.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_calculate_offsets.exit

if.else78.i:                                      ; preds = %if.end66.i
  %53 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %16, label %if.else78.i.vpif_calculate_offsets.exit_crit_edge [
    i32 4, label %if.else78.i.if.then84.i_crit_edge
    i32 0, label %if.else78.i.if.then84.i_crit_edge24
  ]

if.else78.i.if.then84.i_crit_edge24:              ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i

if.else78.i.if.then84.i_crit_edge:                ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i

if.else78.i.vpif_calculate_offsets.exit_crit_edge: ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_calculate_offsets.exit

if.then84.i:                                      ; preds = %if.else78.i.if.then84.i_crit_edge, %if.else78.i.if.then84.i_crit_edge24
  %mul.i = shl i32 %49, 1
  br label %vpif_calculate_offsets.exit

vpif_calculate_offsets.exit:                      ; preds = %if.then84.i, %if.else78.i.vpif_calculate_offsets.exit_crit_edge, %if.end66.i.vpif_calculate_offsets.exit_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %if.then84.i ], [ %49, %if.end66.i.vpif_calculate_offsets.exit_crit_edge ], [ %49, %if.else78.i.vpif_calculate_offsets.exit_crit_edge ]
  %hpitch89.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1, i32 1
  %54 = ptrtoint ptr %hpitch89.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.sink.i, ptr %hpitch89.i, align 4
  %stdid.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 17
  %55 = ptrtoint ptr %stdid.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %stdid.i, align 8
  %stdid102.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1, i32 2
  %57 = ptrtoint ptr %stdid102.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %stdid102.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %vpif_calculate_offsets.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vpif_calculate_offsets.exit ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_buffer_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  %sizeimage = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp1.i = icmp ult i32 %9, %7
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.vb2_set_plane_payload.exit_crit_edge

if.then.i.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !167

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %11, %if.then38.i ], [ %7, %if.then.i.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i47 = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i47, label %vb2_set_plane_payload.exit.if.end_crit_edge, label %vb2_plane_size.exit

vb2_set_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

vb2_plane_size.exit:                              ; preds = %vb2_set_plane_payload.exit
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesused.i, align 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %vb2_plane_size.exit.cleanup29_crit_edge, label %vb2_plane_size.exit.if.end_crit_edge

vb2_plane_size.exit.if.end_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

vb2_plane_size.exit.cleanup29_crit_edge:          ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end:                                           ; preds = %vb2_plane_size.exit.if.end_crit_edge, %vb2_set_plane_payload.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %field = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field7 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %20 = ptrtoint ptr %field7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field7, align 4
  %21 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vb, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp9.not = icmp eq i32 %24, 7
  br i1 %cmp9.not, label %if.end.cleanup29_crit_edge, label %if.then10

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.then10:                                        ; preds = %if.end
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #12
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i, align 4
  %ytop_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 7
  %27 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ytop_off, align 4
  %add = add i32 %28, %26
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %lor.lhs.false, label %if.then10.do.end_crit_edge

if.then10.do.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then10
  %ybtm_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 8
  %29 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ybtm_off, align 4
  %add13 = add i32 %30, %26
  %and14 = and i32 %add13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %lor.lhs.false16, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %ctop_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 9
  %31 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctop_off, align 4
  %add17 = add i32 %32, %26
  %and18 = and i32 %add17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %lor.lhs.false20, label %lor.lhs.false16.do.end_crit_edge

lor.lhs.false16.do.end_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %cbtm_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 10
  %33 = ptrtoint ptr %cbtm_off to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cbtm_off, align 4
  %add21 = add i32 %34, %26
  %and22 = and i32 %add21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %lor.lhs.false20.cleanup29_crit_edge, label %lor.lhs.false20.do.end_crit_edge

lor.lhs.false20.do.end_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false20.cleanup29_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

do.end:                                           ; preds = %lor.lhs.false20.do.end_crit_edge, %lor.lhs.false16.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then10.do.end_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup29

cleanup29:                                        ; preds = %do.end, %lor.lhs.false20.cleanup29_crit_edge, %if.end.cleanup29_crit_edge, %vb2_plane_size.exit.cleanup29_crit_edge
  %retval.1 = phi i32 [ -22, %vb2_plane_size.exit.cleanup29_crit_edge ], [ -22, %do.end ], [ 0, %lor.lhs.false20.cleanup29_crit_edge ], [ 0, %if.end.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %common1 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7
  %vpifparams = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %field_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field_id, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %entry
  %ycmux_mode = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 4
  %8 = ptrtoint ptr %ycmux_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ycmux_mode, align 1
  %conv10 = zext i8 %9 to i32
  %hd_sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 16
  %10 = ptrtoint ptr %hd_sd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hd_sd, align 8
  %conv13 = zext i8 %11 to i32
  %call14 = tail call i32 %7(i32 noundef %conv10, i32 noundef %conv13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %err

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_id, align 8
  %14 = trunc i32 %13 to i8
  %conv24 = add i8 %14, 2
  %call25 = tail call i32 @vpif_set_video_params(ptr noundef %vpifparams, i8 noundef zeroext %conv24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.err_crit_edge, label %if.end29

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end29:                                         ; preds = %if.end23
  store i32 %call25, ptr @ycmux_mode, align 4
  %15 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %set_addr.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 11
  %17 = ptrtoint ptr %set_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ch3_set_videobuf_addr, ptr %set_addr.i, align 4
  br label %vpif_config_addr.exit

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call25)
  %cmp2.i = icmp eq i32 %call25, 2
  %set_addr4.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 11
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %set_addr4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ch2_set_videobuf_addr_yc_nmux, ptr %set_addr4.i, align 4
  br label %vpif_config_addr.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %set_addr4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ch2_set_videobuf_addr, ptr %set_addr4.i, align 4
  br label %vpif_config_addr.exit

vpif_config_addr.exit:                            ; preds = %if.else5.i, %if.then3.i, %if.then.i
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 4
  %20 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 -736
  %22 = ptrtoint ptr %common1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %common1, align 4
  %next_frm = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #12
  br i1 %call.i.i, label %if.end.i.i, label %vpif_config_addr.exit.list_del.exit_crit_edge

vpif_config_addr.exit.list_del.exit_crit_edge:    ; preds = %vpif_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %vpif_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %vpif_config_addr.exit.list_del.exit_crit_edge
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #12
  %32 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common1, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %33, i32 noundef 0) #12
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i, align 4
  %set_addr = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 11
  %36 = ptrtoint ptr %set_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_addr, align 4
  %ytop_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 7
  %38 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ytop_off, align 4
  %add35 = add i32 %39, %35
  %ybtm_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 8
  %40 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ybtm_off, align 4
  %add36 = add i32 %41, %35
  %ctop_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 9
  %42 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctop_off, align 4
  %add37 = add i32 %43, %35
  %cbtm_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 10
  %44 = ptrtoint ptr %cbtm_off to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cbtm_off, align 4
  %add38 = add i32 %45, %35
  tail call void %37(i32 noundef %add35, i32 noundef %add36, i32 noundef %add37, i32 noundef %add38) #12
  %46 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel_id, align 8
  %arrayidx40 = getelementptr [2 x i8], ptr @channel_first_int, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp42 = icmp eq i32 %47, 0
  br i1 %cmp42, label %do.body45, label %list_del.exit.if.end57_crit_edge

list_del.exit.if.end57_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.body45:                                        ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %49 = load ptr, ptr @vpif_base, align 4
  %add.ptr48 = getelementptr i8, ptr %49, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !169
  %51 = or i32 %50, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %52 = load ptr, ptr @vpif_base, align 4
  %add.ptr52 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %51) #12, !srcloc !166
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %53 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %53, i32 32
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %55 = or i32 %54, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %56 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %55) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %57 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 36
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !171
  %59 = or i32 %58, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %60 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %59) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %61 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %61, i32 32
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !173
  %63 = or i32 %62, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %64 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %63) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %65 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i = getelementptr i8, ptr %65, i32 36
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  %67 = or i32 %66, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %68 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %68, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %67) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %69 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i152 = getelementptr i8, ptr %69, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i152) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %71 = or i32 %70, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %72 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %71) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %73 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %73, i32 12
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  %75 = or i32 %74, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %76 = load ptr, ptr @vpif_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %75) #12, !srcloc !166
  %clip_en = getelementptr inbounds %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 0, i32 2
  %77 = ptrtoint ptr %clip_en to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %clip_en, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool54.not = icmp eq i8 %78, 0
  br i1 %tobool54.not, label %do.body45.if.end57thread-pre-split_crit_edge, label %if.then55

do.body45.if.end57thread-pre-split_crit_edge:     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57thread-pre-split

if.then55:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %79 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  %81 = or i32 %80, 4194304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %82 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %82, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %81) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %83 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %83, i32 12
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  %85 = or i32 %84, 2097152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %86 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %86, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i, i32 %85) #12, !srcloc !166
  br label %if.end57thread-pre-split

if.end57thread-pre-split:                         ; preds = %if.then55, %do.body45.if.end57thread-pre-split_crit_edge
  %87 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %list_del.exit.if.end57_crit_edge
  %88 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %47, %list_del.exit.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp59 = icmp eq i32 %88, 1
  br i1 %cmp59, label %if.end57.do.body64_crit_edge, label %lor.lhs.false

if.end57.do.body64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

lor.lhs.false:                                    ; preds = %if.end57
  %89 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp61 = icmp eq i32 %89, 2
  br i1 %cmp61, label %lor.lhs.false.do.body64_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

do.body64:                                        ; preds = %lor.lhs.false.do.body64_crit_edge, %if.end57.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %90 = load ptr, ptr @vpif_base, align 4
  %add.ptr69 = getelementptr i8, ptr %90, i32 16
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  %92 = or i32 %91, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %93 = load ptr, ptr @vpif_base, align 4
  %add.ptr74 = getelementptr i8, ptr %93, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %92) #12, !srcloc !166
  %call2.i153 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %94 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i154 = getelementptr i8, ptr %94, i32 32
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i154) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %96 = or i32 %95, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %97 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i155 = getelementptr i8, ptr %97, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i155, i32 %96) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %98 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i156 = getelementptr i8, ptr %98, i32 36
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i156) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !184
  %100 = or i32 %99, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %101 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i157 = getelementptr i8, ptr %101, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i157, i32 %100) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %102 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i158 = getelementptr i8, ptr %102, i32 32
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i158) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !186
  %104 = or i32 %103, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %105 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i159 = getelementptr i8, ptr %105, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i159, i32 %104) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %106 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i160 = getelementptr i8, ptr %106, i32 36
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i160) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !188
  %108 = or i32 %107, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %109 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i161 = getelementptr i8, ptr %109, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i161, i32 %108) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i153) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %110 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i162 = getelementptr i8, ptr %110, i32 16
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i162) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %112 = or i32 %111, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %113 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i163 = getelementptr i8, ptr %113, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i163, i32 %112) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %114 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i164 = getelementptr i8, ptr %114, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i164) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !190
  %116 = or i32 %115, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %117 = load ptr, ptr @vpif_base, align 4
  %add.ptr12.i165 = getelementptr i8, ptr %117, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i165, i32 %116) #12, !srcloc !166
  %clip_en77 = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 1, i32 2
  %118 = ptrtoint ptr %clip_en77 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %clip_en77, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool78.not = icmp eq i8 %119, 0
  br i1 %tobool78.not, label %do.body64.cleanup_crit_edge, label %if.then79

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then79:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %120 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %120, i32 16
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i166) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  %122 = or i32 %121, 4194304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %123 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i.i167 = getelementptr i8, ptr %123, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i167, i32 %122) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %124 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i1.i168 = getelementptr i8, ptr %124, i32 16
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i168) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  %126 = or i32 %125, 2097152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %127 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i3.i169 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i169, i32 %126) #12, !srcloc !166
  br label %cleanup

err:                                              ; preds = %if.end23.err_crit_edge, %do.end20
  %ret.0 = phi i32 [ %call14, %do.end20 ], [ %call25, %if.end23.err_crit_edge ]
  %dma_queue83 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 4
  %128 = ptrtoint ptr %dma_queue83 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_queue83, align 4
  %cmp94.not176 = icmp eq ptr %129, %dma_queue83
  br i1 %cmp94.not176, label %err.for.end_crit_edge, label %err.for.body_crit_edge

err.for.body_crit_edge:                           ; preds = %err
  br label %for.body

err.for.end_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit175.for.body_crit_edge, %err.for.body_crit_edge
  %.pn.in177 = phi ptr [ %.pn, %list_del.exit175.for.body_crit_edge ], [ %129, %err.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in177, i32 -736
  %130 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn = load ptr, ptr %.pn.in177, align 8
  %call.i.i170 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in177) #12
  br i1 %call.i.i170, label %if.end.i.i173, label %for.body.list_del.exit175_crit_edge

for.body.list_del.exit175_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit175

if.end.i.i173:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i171 = getelementptr inbounds %struct.list_head, ptr %.pn.in177, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i.i171 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i.i171, align 4
  %133 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %.pn.in177, align 4
  %prev1.i.i.i172 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev1.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %132, ptr %prev1.i.i.i172, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %134, ptr %132, align 4
  br label %list_del.exit175

list_del.exit175:                                 ; preds = %if.end.i.i173, %for.body.list_del.exit175_crit_edge
  %137 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in177, align 4
  %prev.i174 = getelementptr inbounds %struct.list_head, ptr %.pn.in177, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i174, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #12
  %cmp94.not = icmp eq ptr %.pn, %dma_queue83
  br i1 %cmp94.not, label %list_del.exit175.for.end_crit_edge, label %list_del.exit175.for.body_crit_edge

list_del.exit175.for.body_crit_edge:              ; preds = %list_del.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit175.for.end_crit_edge:               ; preds = %list_del.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit175.for.end_crit_edge, %err.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then79, %do.body64.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %do.body64.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpif_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %common1 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %4 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %6 = and i32 %5, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr21.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %6) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %8 = load ptr, ptr @vpif_base, align 4
  %add.ptr26.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  %10 = and i32 %9, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %11 = load ptr, ptr @vpif_base, align 4
  %add.ptr31.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %10) #12, !srcloc !166
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %12 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %14 = and i32 %13, -67108865
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %15 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %14) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %16 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %18 = or i32 %17, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %19 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %18) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %20 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %21 = phi i32 [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp3 = icmp eq i32 %21, 1
  br i1 %cmp3, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %22 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp4 = icmp eq i32 %22, 2
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.do.body7_crit_edge

lor.lhs.false.do.body7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %23 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i57 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %25 = and i32 %24, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %26 = load ptr, ptr @vpif_base, align 4
  %add.ptr21.i58 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i58, i32 %25) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %27 = load ptr, ptr @vpif_base, align 4
  %add.ptr26.i59 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i59) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  %29 = and i32 %28, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %30 = load ptr, ptr @vpif_base, align 4
  %add.ptr31.i60 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i60, i32 %29) #12, !srcloc !166
  %call2.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %31 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i62 = getelementptr i8, ptr %31, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i62) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %33 = and i32 %32, -134217729
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %34 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i63 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i63, i32 %33) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %35 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i64 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i64) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  %37 = or i32 %36, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %38 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i65 = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i65, i32 %37) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i61) #12
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %lor.lhs.false.do.body7_crit_edge
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 5
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %39 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %common1, align 4
  %next_frm = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 1
  %41 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next_frm, align 4
  %cmp13 = icmp eq ptr %40, %42
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef %40, i32 noundef 6) #12
  br label %if.end30

if.else:                                          ; preds = %do.body7
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %if.else.if.end22_crit_edge, label %if.then18

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %40, i32 noundef 6) #12
  %43 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr66 = load ptr, ptr %next_frm, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else.if.end22_crit_edge
  %44 = phi ptr [ %.pr66, %if.then18 ], [ %42, %if.else.if.end22_crit_edge ]
  %tobool24.not = icmp eq ptr %44, null
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %44, i32 noundef 6) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22.if.end30_crit_edge, %if.then15
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 4
  %45 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not67 = icmp eq ptr %46, %dma_queue
  br i1 %cmp.i.not67, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end30.while.body_crit_edge
  %47 = phi ptr [ %60, %list_del.exit.while.body_crit_edge ], [ %46, %if.end30.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %47, i32 -736
  %48 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %57 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next_frm, align 4
  tail call void @vb2_buffer_done(ptr noundef %58, i32 noundef 6) #12
  %59 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %60, %dma_queue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end30.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call10) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpif_buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 5
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %list = getelementptr inbounds %struct.vpif_disp_buffer, ptr %vb, i32 0, i32 1
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %dma_queue) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vpif_disp_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpif_set_video_params(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch3_set_videobuf_addr(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !166
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch2_set_videobuf_addr_yc_nmux(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !166
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch2_set_videobuf_addr(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !166
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #12
  %3 = load ptr, ptr @vpif_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i)
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %card_name = getelementptr inbounds %struct.vpif_display_config, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_name, align 4
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpif_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1345466932, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fmt3 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt3, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @vpif_update_resolution(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = call ptr @memcpy(ptr %fmt, ptr %fmt3, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 3, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1345466932
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat6.i = getelementptr inbounds %struct.channel_obj, ptr %5, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat6.i, align 4
  %10 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call8.i = tail call fastcc i32 @vpif_update_resolution(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end7, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %fmt12.i = getelementptr inbounds %struct.channel_obj, ptr %5, i32 0, i32 7, i32 0, i32 2, i32 1
  %colorspace.i = getelementptr inbounds %struct.channel_obj, ptr %5, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace.i, align 4
  %colorspace13.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %colorspace13.i, align 4
  %field.i = getelementptr inbounds %struct.channel_obj, ptr %5, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field.i, align 4
  %field16.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %field16.i, align 4
  %17 = ptrtoint ptr %fmt12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt12.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bytesperline.i, align 4
  %20 = load i32, ptr %fmt12.i, align 4
  %21 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fmt3, align 4
  %height.i = getelementptr inbounds %struct.channel_obj, ptr %5, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %height25.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %height25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height25.i, align 4
  %mul.i = shl i32 %18, 1
  %mul28.i = mul i32 %mul.i, %23
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul28.i, ptr %sizeimage.i, align 4
  %fmt8 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2
  %fmt9 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1
  %26 = call ptr @memcpy(ptr %fmt9, ptr %fmt3, i32 48)
  %27 = call ptr @memcpy(ptr %fmt8, ptr %fmt, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_try_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %3)
  %cmp.not = icmp eq i32 %3, 1345466932
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat6 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat6, align 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call fastcc i32 @vpif_update_resolution(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fmt12 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1
  %colorspace = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %colorspace, align 4
  %colorspace13 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %colorspace13, align 4
  %field = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field, align 4
  %field16 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %field16, align 4
  %13 = ptrtoint ptr %fmt12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt12, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bytesperline, align 4
  %16 = load i32, ptr %fmt12, align 4
  %17 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fmt3, align 4
  %height = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %height25 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height25, align 4
  %mul = shl i32 %14, 1
  %mul28 = mul i32 %mul, %19
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul28, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %arrayidx = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_idx, align 8
  %output.sroa.4.0.output7.sroa_idx = getelementptr %struct.vpif_output, ptr %8, i32 %10, i32 0, i32 6
  %11 = ptrtoint ptr %output.sroa.4.0.output7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %output.sroa.4.0.copyload = load i32, ptr %output.sroa.4.0.output7.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %output.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %output.sroa.4.0.copyload, 4
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %stdid, align 8
  %14 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %arrayidx3 = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_idx, align 8
  %output.sroa.4.0.output9.sroa_idx = getelementptr %struct.vpif_output, ptr %8, i32 %10, i32 0, i32 6
  %11 = ptrtoint ptr %output.sroa.4.0.output9.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %output.sroa.4.0.copyload = load i32, ptr %output.sroa.4.0.output9.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %output.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %output.sroa.4.0.copyload, 4
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %12 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 0
  br i1 %cmp.i.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %and = and i64 %std_id, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %stdid to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %std_id, ptr %stdid, align 8
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3
  %15 = call ptr @memset(ptr %dv_timings, i32 0, i32 132)
  %call19 = tail call fastcc i32 @vpif_update_resolution(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %fmt23 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %fmt23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt23, align 4
  %bytesperline = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bytesperline, align 4
  %.pn156 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2), align 4
  %cmp27.not158 = icmp eq ptr %.pn156, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp27.not158, label %if.end22.cleanup_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %.pn160 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn156, %if.end22.for.body_crit_edge ]
  %__err.0159 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %__sd.0161 = getelementptr i8, ptr %.pn160, i32 -80
  %grp_id = getelementptr i8, ptr %.pn160, i32 68
  %19 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp28 = icmp eq i32 %20, 1
  br i1 %cmp28, label %land.lhs.true, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn160, i32 24
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %video29 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %video29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %video29, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true31

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true31:                                  ; preds = %land.lhs.true
  %s_std_output = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %s_std_output to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_std_output, align 4
  %tobool34.not = icmp eq ptr %26, null
  br i1 %tobool34.not, label %land.lhs.true31.if.end40_crit_edge, label %if.then35

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call i32 %26(ptr noundef %__sd.0161, i64 noundef %std_id) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true31.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %__err.1 = phi i32 [ %call39, %if.then35 ], [ %__err.0159, %land.lhs.true31.if.end40_crit_edge ], [ %__err.0159, %land.lhs.true.if.end40_crit_edge ], [ %__err.0159, %for.body.if.end40_crit_edge ]
  %27 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %__err.1, label %if.end40.for.end_crit_edge [
    i32 0, label %if.end40.for.inc_crit_edge
    i32 -515, label %if.end40.for.inc_crit_edge191
  ]

if.end40.for.inc_crit_edge191:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end40.for.inc_crit_edge, %if.end40.for.inc_crit_edge191
  %28 = ptrtoint ptr %.pn160 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn160, align 4
  %cmp27.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end40.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp51 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp52155 = icmp slt i32 %__err.1, 0
  %cmp52 = and i1 %cmp51, %cmp52155
  br i1 %cmp52, label %for.end.cleanup.sink.split_crit_edge, label %for.cond63.preheader

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond63.preheader:                             ; preds = %for.end
  %.pn153163.pr = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2), align 4
  %cmp65.not165 = icmp eq ptr %.pn153163.pr, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp65.not165, label %for.cond63.preheader.cleanup_crit_edge, label %for.cond63.preheader.for.body67_crit_edge

for.cond63.preheader.for.body67_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body67

for.cond63.preheader.cleanup_crit_edge:           ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body67:                                       ; preds = %for.inc89.for.body67_crit_edge, %for.cond63.preheader.for.body67_crit_edge
  %.pn153167 = phi ptr [ %.pn153, %for.inc89.for.body67_crit_edge ], [ %.pn153163.pr, %for.cond63.preheader.for.body67_crit_edge ]
  %__err59.0166 = phi i32 [ %__err59.1, %for.inc89.for.body67_crit_edge ], [ 0, %for.cond63.preheader.for.body67_crit_edge ]
  %__sd57.0168 = getelementptr i8, ptr %.pn153167, i32 -80
  %grp_id68 = getelementptr i8, ptr %.pn153167, i32 68
  %29 = ptrtoint ptr %grp_id68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %grp_id68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp69 = icmp eq i32 %30, 1
  br i1 %cmp69, label %land.lhs.true70, label %for.body67.if.end83_crit_edge

for.body67.if.end83_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

land.lhs.true70:                                  ; preds = %for.body67
  %ops71 = getelementptr i8, ptr %.pn153167, i32 24
  %31 = ptrtoint ptr %ops71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops71, align 4
  %video72 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video72, align 4
  %tobool73.not = icmp eq ptr %34, null
  br i1 %tobool73.not, label %land.lhs.true70.if.end83_crit_edge, label %land.lhs.true74

land.lhs.true70.if.end83_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_std, align 4
  %tobool77.not = icmp eq ptr %36, null
  br i1 %tobool77.not, label %land.lhs.true74.if.end83_crit_edge, label %if.then78

land.lhs.true74.if.end83_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then78:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = tail call i32 %36(ptr noundef %__sd57.0168, i64 noundef %std_id) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %land.lhs.true74.if.end83_crit_edge, %land.lhs.true70.if.end83_crit_edge, %for.body67.if.end83_crit_edge
  %__err59.1 = phi i32 [ %call82, %if.then78 ], [ %__err59.0166, %land.lhs.true74.if.end83_crit_edge ], [ %__err59.0166, %land.lhs.true70.if.end83_crit_edge ], [ %__err59.0166, %for.body67.if.end83_crit_edge ]
  %37 = zext i32 %__err59.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %__err59.1, label %if.end83.for.end95.thread_crit_edge [
    i32 0, label %if.end83.for.inc89_crit_edge
    i32 -515, label %if.end83.for.inc89_crit_edge192
  ]

if.end83.for.inc89_crit_edge192:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89

if.end83.for.inc89_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89

if.end83.for.end95.thread_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95.thread

for.inc89:                                        ; preds = %if.end83.for.inc89_crit_edge, %if.end83.for.inc89_crit_edge192
  %38 = ptrtoint ptr %.pn153167 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn153 = load ptr, ptr %.pn153167, align 4
  %cmp65.not = icmp eq ptr %.pn153, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp65.not, label %for.end95, label %for.inc89.for.body67_crit_edge

for.inc89.for.body67_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body67

for.end95:                                        ; preds = %for.inc89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err59.1)
  %cmp97 = icmp eq i32 %__err59.1, -515
  br i1 %cmp97, label %for.end95.cleanup_crit_edge, label %for.end95.for.end95.thread_crit_edge

for.end95.for.end95.thread_crit_edge:             ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95.thread

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end95.thread:                                 ; preds = %for.end95.for.end95.thread_crit_edge, %if.end83.for.end95.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err59.1)
  %cmp102 = icmp slt i32 %__err59.1, 0
  br i1 %cmp102, label %for.end95.thread.cleanup.sink.split_crit_edge, label %for.end95.thread.cleanup_crit_edge

for.end95.thread.cleanup_crit_edge:               ; preds = %for.end95.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end95.thread.cleanup.sink.split_crit_edge:    ; preds = %for.end95.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end95.thread.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %for.end.cleanup.sink.split_crit_edge ], [ @.str.48, %for.end95.thread.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %__err.1, %for.end.cleanup.sink.split_crit_edge ], [ %__err59.1, %for.end95.thread.cleanup.sink.split_crit_edge ]
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end95.thread.cleanup_crit_edge, %for.end95.cleanup_crit_edge, %for.cond63.preheader.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -16, %if.end11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ %__err59.1, %for.end95.thread.cleanup_crit_edge ], [ 0, %for.end95.cleanup_crit_edge ], [ 0, %for.cond63.preheader.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_enum_output(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output, align 8
  %output_count = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6, i32 1
  %9 = ptrtoint ptr %output_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2 = icmp sgt i32 %11, 0
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.vpif_output, ptr %13, i32 %8
  %14 = call ptr @memcpy(ptr %output, ptr %arrayidx10, i32 72)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_output(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_idx, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_output(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_id, align 8
  %output_count = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %8, i32 1
  %9 = ptrtoint ptr %output_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i)
  %cmp.not = icmp ugt i32 %10, %i
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call fastcc i32 @vpif_set_output(ptr noundef %2, ptr noundef %4, i32 noundef %i)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_log_status(ptr nocapture noundef readnone %filep, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn20 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2), align 4
  %cmp.not22 = icmp eq ptr %.pn20, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp.not22, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %__sd.024 = getelementptr i8, ptr %.pn23, i32 -80
  %ops = getelementptr i8, ptr %.pn23, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %__sd.024) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 2)
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %std_info4 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3
  %5 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 8
  %arrayidx5 = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output_idx, align 8
  %output.sroa.4.0.output11.sroa_idx = getelementptr %struct.vpif_output, ptr %9, i32 %11, i32 0, i32 6
  %12 = ptrtoint ptr %output.sroa.4.0.output11.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %output.sroa.4.0.copyload = load i32, ptr %output.sroa.4.0.output11.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %output.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %13 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %timings to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %timings, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17.not = icmp eq i32 %16, 0
  br i1 %cmp17.not, label %if.end26, label %do.body

do.body:                                          ; preds = %if.end16
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp19 = icmp sgt i32 %17, 1
  br i1 %cmp19, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.end26.if.end69_crit_edge, label %if.else

if.end26.if.end69_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.else:                                          ; preds = %if.end26
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %video29 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %video29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video29, align 4
  %tobool30.not = icmp eq ptr %23, null
  br i1 %tobool30.not, label %if.else.if.end69_crit_edge, label %land.lhs.true

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

land.lhs.true:                                    ; preds = %if.else
  %s_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_dv_timings, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %land.lhs.true.if.end69_crit_edge, label %if.else35

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.else35:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %if.else35.if.else43_crit_edge, label %land.lhs.true37

if.else35.if.else43_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else35
  %s_dv_timings38 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %s_dv_timings38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_dv_timings38, align 4
  %tobool39.not = icmp eq ptr %28, null
  br i1 %tobool39.not, label %land.lhs.true37.if.else43_crit_edge, label %land.lhs.true37.if.end50_crit_edge

land.lhs.true37.if.end50_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else35.if.else43_crit_edge
  br label %if.end50

if.end50:                                         ; preds = %if.else43, %land.lhs.true37.if.end50_crit_edge
  %.sink = phi ptr [ %25, %if.else43 ], [ %28, %land.lhs.true37.if.end50_crit_edge ]
  %call47 = tail call i32 %.sink(ptr noundef nonnull %19, ptr noundef %timings) #12
  %29 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call47, label %if.end55 [
    i32 -515, label %if.end50.if.end69_crit_edge
    i32 -19, label %if.end50.if.end69_crit_edge288
  ]

if.end50.if.end69_crit_edge288:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end50.if.end69_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp56 = icmp slt i32 %call47, 0
  br i1 %cmp56, label %do.body58, label %if.end55.if.end69_crit_edge

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

do.body58:                                        ; preds = %if.end55
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp59 = icmp sgt i32 %30, 1
  br i1 %cmp59, label %do.end63, label %do.body58.cleanup_crit_edge

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end69:                                         ; preds = %if.end55.if.end69_crit_edge, %if.end50.if.end69_crit_edge, %if.end50.if.end69_crit_edge288, %land.lhs.true.if.end69_crit_edge, %if.else.if.end69_crit_edge, %if.end26.if.end69_crit_edge
  %31 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool70.not = icmp eq i32 %33, 0
  br i1 %tobool70.not, label %if.end69.do.body86_crit_edge, label %land.lhs.true71

if.end69.do.body86_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body86

land.lhs.true71:                                  ; preds = %if.end69
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %height, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool72.not = icmp eq i32 %35, 0
  br i1 %tobool72.not, label %land.lhs.true71.do.body86_crit_edge, label %land.lhs.true73

land.lhs.true71.do.body86_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body86

land.lhs.true73:                                  ; preds = %land.lhs.true71
  %hbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %36 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %hbackporch, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool74.not = icmp eq i32 %37, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %land.lhs.true73.land.lhs.true79_crit_edge

land.lhs.true73.land.lhs.true79_crit_edge:        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true79

lor.lhs.false75:                                  ; preds = %land.lhs.true73
  %hfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %38 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %hfrontporch, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool76.not = icmp eq i32 %39, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %lor.lhs.false75.land.lhs.true79_crit_edge

lor.lhs.false75.land.lhs.true79_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true79

lor.lhs.false77:                                  ; preds = %lor.lhs.false75
  %hsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %40 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %hsync, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool78.not = icmp eq i32 %41, 0
  br i1 %tobool78.not, label %lor.lhs.false77.do.body86_crit_edge, label %lor.lhs.false77.land.lhs.true79_crit_edge

lor.lhs.false77.land.lhs.true79_crit_edge:        ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true79

lor.lhs.false77.do.body86_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body86

land.lhs.true79:                                  ; preds = %lor.lhs.false77.land.lhs.true79_crit_edge, %lor.lhs.false75.land.lhs.true79_crit_edge, %land.lhs.true73.land.lhs.true79_crit_edge
  %vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %42 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %vfrontporch, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool80.not = icmp eq i32 %43, 0
  br i1 %tobool80.not, label %land.lhs.true79.do.body86_crit_edge, label %land.lhs.true81

land.lhs.true79.do.body86_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body86

land.lhs.true81:                                  ; preds = %land.lhs.true79
  %vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %44 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %vbackporch, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool82.not = icmp eq i32 %45, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %land.lhs.true81.if.end97_crit_edge

land.lhs.true81.if.end97_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

lor.lhs.false83:                                  ; preds = %land.lhs.true81
  %vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %46 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %vsync, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool84.not = icmp eq i32 %47, 0
  br i1 %tobool84.not, label %lor.lhs.false83.do.body86_crit_edge, label %lor.lhs.false83.if.end97_crit_edge

lor.lhs.false83.if.end97_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

lor.lhs.false83.do.body86_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body86

do.body86:                                        ; preds = %lor.lhs.false83.do.body86_crit_edge, %land.lhs.true79.do.body86_crit_edge, %lor.lhs.false77.do.body86_crit_edge, %land.lhs.true71.do.body86_crit_edge, %if.end69.do.body86_crit_edge
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp87 = icmp sgt i32 %48, 1
  br i1 %cmp87, label %do.end91, label %do.body86.cleanup_crit_edge

do.body86.cleanup_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end97:                                         ; preds = %lor.lhs.false83.if.end97_crit_edge, %land.lhs.true81.if.end97_crit_edge
  %49 = call ptr @memcpy(ptr %dv_timings, ptr %timings, i32 132)
  %hfrontporch99 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 6
  %50 = ptrtoint ptr %hfrontporch99 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %hfrontporch99, align 1
  %hsync100 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 7
  %52 = ptrtoint ptr %hsync100 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %hsync100, align 1
  %add = add i32 %53, %51
  %hbackporch101 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 8
  %54 = ptrtoint ptr %hbackporch101 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %hbackporch101, align 1
  %add102 = add i32 %add, %55
  %56 = trunc i32 %add102 to i16
  %conv = add i16 %56, -8
  %eav2sav = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 5
  %57 = ptrtoint ptr %eav2sav to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv, ptr %eav2sav, align 4
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %5, align 1
  %conv104 = trunc i32 %59 to i16
  %sav2eav = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 6
  %60 = ptrtoint ptr %sav2eav to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv104, ptr %sav2eav, align 2
  %l1 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 7
  %61 = ptrtoint ptr %l1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %l1, align 8
  %vsync105 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 10
  %62 = ptrtoint ptr %vsync105 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %vsync105, align 1
  %vbackporch106 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 11
  %64 = ptrtoint ptr %vbackporch106 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %vbackporch106, align 1
  %add107 = add i32 %65, %63
  %66 = trunc i32 %add107 to i16
  %conv109 = add i16 %66, 1
  %l3 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 8
  %67 = ptrtoint ptr %l3 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv109, ptr %l3, align 2
  %height110 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %height110 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %height110, align 1
  %vfrontporch111 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 9
  %70 = ptrtoint ptr %vfrontporch111 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %vfrontporch111, align 1
  %il_vfrontporch = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 12
  %72 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 13
  %74 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 14
  %76 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %il_vbackporch, align 1
  %add115 = add i32 %add107, %69
  %add116 = add i32 %add115, %71
  %add117 = add i32 %add116, %73
  %add118 = add i32 %add117, %75
  %add119 = add i32 %add118, %77
  %conv120 = trunc i32 %add119 to i16
  %vsize = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 13
  %78 = ptrtoint ptr %vsize to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv120, ptr %vsize, align 4
  %interlaced = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3, i32 1, i32 0, i32 2
  %79 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool121.not = icmp eq i32 %80, 0
  br i1 %tobool121.not, label %if.else171, label %if.then122

if.then122:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool124.not = icmp eq i32 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool127.not = icmp eq i32 %73, 0
  %or.cond = select i1 %tobool124.not, i1 %tobool127.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool130.not = icmp eq i32 %75, 0
  %or.cond283 = select i1 %or.cond, i1 %tobool130.not, i1 false
  br i1 %or.cond283, label %do.body158, label %if.then131

if.then131:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %81 = lshr i16 %conv120, 1
  %82 = trunc i32 %71 to i16
  %.neg284 = sub i16 1, %82
  %conv137 = add i16 %.neg284, %81
  %l5 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 9
  %83 = ptrtoint ptr %l5 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv137, ptr %l5, align 4
  %narrow = add nuw i16 %81, 1
  %l7 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 10
  %84 = ptrtoint ptr %l7 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %narrow, ptr %l7, align 2
  %add146 = add i32 %77, %75
  %85 = trunc i32 %add146 to i16
  %86 = add i16 %narrow, %85
  %conv150 = add i16 %86, 1
  %l9 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 11
  %87 = ptrtoint ptr %l9 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv150, ptr %l9, align 8
  %88 = trunc i32 %73 to i16
  %.neg286 = sub i16 1, %88
  %conv156 = add i16 %.neg286, %conv120
  %l11 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 12
  %89 = ptrtoint ptr %l11 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv156, ptr %l11, align 2
  br label %if.end179

do.body158:                                       ; preds = %if.then122
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp159 = icmp sgt i32 %90, 1
  br i1 %cmp159, label %do.end164, label %do.body158.cleanup_crit_edge

do.body158.cleanup_crit_edge:                     ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.else171:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %sub175.neg = sub i32 1, %71
  %sub176 = add i32 %sub175.neg, %add119
  %conv177 = trunc i32 %sub176 to i16
  %l5178 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 9
  %91 = ptrtoint ptr %l5178 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv177, ptr %l5178, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else171, %if.then131
  %call180 = tail call i32 @strscpy(ptr noundef %std_info4, ptr noundef nonnull @.str.63, i32 noundef 30) #12
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %5, align 1
  %conv182 = trunc i32 %93 to i16
  %width183 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 1
  %94 = ptrtoint ptr %width183 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv182, ptr %width183, align 2
  %95 = ptrtoint ptr %height110 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %height110, align 1
  %conv185 = trunc i32 %96 to i16
  %height186 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 2
  %97 = ptrtoint ptr %height186 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv185, ptr %height186, align 8
  %98 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool188.not = icmp eq i32 %99, 0
  %conv189 = zext i1 %tobool188.not to i8
  %frm_fmt = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 3
  %100 = ptrtoint ptr %frm_fmt to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv189, ptr %frm_fmt, align 2
  %ycmux_mode = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 4
  %101 = ptrtoint ptr %ycmux_mode to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %ycmux_mode, align 1
  %capture_format = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 14
  %102 = ptrtoint ptr %capture_format to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %capture_format, align 2
  %vbi_supported = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 15
  %103 = ptrtoint ptr %vbi_supported to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %vbi_supported, align 1
  %hd_sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 16
  %104 = ptrtoint ptr %hd_sd to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %hd_sd, align 8
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 17
  %105 = ptrtoint ptr %stdid to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %stdid, align 8
  %stdid190 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %106 = ptrtoint ptr %stdid190 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 0, ptr %stdid190, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %do.end164, %do.body158.cleanup_crit_edge, %do.end91, %do.body86.cleanup_crit_edge, %do.end63, %do.body58.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end179 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -16, %if.end13.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call47, %do.end63 ], [ %call47, %do.body58.cleanup_crit_edge ], [ -22, %do.end91 ], [ -22, %do.body86.cleanup_crit_edge ], [ -22, %do.end164 ], [ -22, %do.body158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %arrayidx = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_idx, align 8
  %output.sroa.4.0.output7.sroa_idx = getelementptr %struct.vpif_output, ptr %8, i32 %10, i32 0, i32 6
  %11 = ptrtoint ptr %output.sroa.4.0.output7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %output.sroa.4.0.copyload = load i32, ptr %output.sroa.4.0.output7.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %output.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 3
  %12 = call ptr @memcpy(ptr %timings, ptr %dv_timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -61, %if.end.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vpif_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %arrayidx = getelementptr %struct.vpif_display_config, ptr %2, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %output_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_idx, align 8
  %output.sroa.4.0.output7.sroa_idx = getelementptr %struct.vpif_output, ptr %8, i32 %10, i32 0, i32 6
  %11 = ptrtoint ptr %output.sroa.4.0.output7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %output.sroa.4.0.copyload = load i32, ptr %output.sroa.4.0.output7.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %output.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %12 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pad, align 4
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.else

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %pad12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pad12, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_dv_timings = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %enum_dv_timings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enum_dv_timings, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.else18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.else18.if.else26_crit_edge, label %land.lhs.true20

if.else18.if.else26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

land.lhs.true20:                                  ; preds = %if.else18
  %enum_dv_timings21 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %enum_dv_timings21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_dv_timings21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %land.lhs.true20.if.else26_crit_edge, label %land.lhs.true20.if.end33_crit_edge

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true20.if.else26_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

if.else26:                                        ; preds = %land.lhs.true20.if.else26_crit_edge, %if.else18.if.else26_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.else26, %land.lhs.true20.if.end33_crit_edge
  %.sink = phi ptr [ %20, %if.else26 ], [ %23, %land.lhs.true20.if.end33_crit_edge ]
  %call30 = tail call i32 %.sink(ptr noundef nonnull %14, ptr noundef %timings) #12
  %24 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call30, label %if.end37 [
    i32 -515, label %if.end33.cleanup_crit_edge
    i32 -19, label %if.end33.cleanup_crit_edge61
  ]

if.end33.cleanup_crit_edge61:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end33.cleanup_crit_edge61, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end37 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge61 ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %i.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %6 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %8 = and i32 %7, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %9 = load ptr, ptr @vpif_base, align 4
  %add.ptr21.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %8) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %10 = load ptr, ptr @vpif_base, align 4
  %add.ptr26.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  %12 = and i32 %11, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %13 = load ptr, ptr @vpif_base, align 4
  %add.ptr31.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %12) #12, !srcloc !166
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %14 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %16 = and i32 %15, -67108865
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %17 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %16) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %18 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  %20 = or i32 %19, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %21 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %20) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %22 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %23 = phi i32 [ %.pr, %if.then4 ], [ %5, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp7 = icmp eq i32 %23, 1
  br i1 %cmp7, label %if.end5.if.then9_crit_edge, label %lor.lhs.false

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %24 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp8 = icmp eq i32 %24, 2
  br i1 %cmp8, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %25 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i18 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %27 = and i32 %26, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %28 = load ptr, ptr @vpif_base, align 4
  %add.ptr21.i19 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i19, i32 %27) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %29 = load ptr, ptr @vpif_base, align 4
  %add.ptr26.i20 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i20) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  %31 = and i32 %30, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %32 = load ptr, ptr @vpif_base, align 4
  %add.ptr31.i21 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i21, i32 %31) #12, !srcloc !166
  %call2.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %33 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i23 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %35 = and i32 %34, -134217729
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %36 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i24 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i24, i32 %35) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %37 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i25 = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i25) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  %39 = or i32 %38, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %40 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i26 = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i26, i32 %39) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i22) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %i.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %6 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %8 = or i32 %7, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %9 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %10 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  %12 = or i32 %11, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %13 = load ptr, ptr @vpif_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %12) #12, !srcloc !166
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %14 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %16 = or i32 %15, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %17 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %16) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %18 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i18 = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i18) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !171
  %20 = or i32 %19, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %21 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %20) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %22 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %22, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !173
  %24 = or i32 %23, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %25 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %24) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %26 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i = getelementptr i8, ptr %26, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  %28 = or i32 %27, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %29 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %28) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %30 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %31 = phi i32 [ %.pr, %if.then4 ], [ %5, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp7 = icmp eq i32 %31, 1
  br i1 %cmp7, label %if.end5.if.then9_crit_edge, label %lor.lhs.false

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %32 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp8 = icmp eq i32 %32, 2
  br i1 %cmp8, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %33 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i19 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %35 = or i32 %34, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %36 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i20 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i20, i32 %35) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %37 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i21 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i21) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !190
  %39 = or i32 %38, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %40 = load ptr, ptr @vpif_base, align 4
  %add.ptr12.i22 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i22, i32 %39) #12, !srcloc !166
  %call2.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %41 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i24 = getelementptr i8, ptr %41, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %43 = or i32 %42, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %44 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i25 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i25, i32 %43) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %45 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i26 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i26) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !184
  %47 = or i32 %46, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %48 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i27 = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i27, i32 %47) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %49 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i28 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i28) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !186
  %51 = or i32 %50, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %52 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i29 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i29, i32 %51) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %53 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i30 = getelementptr i8, ptr %53, i32 36
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i30) #12, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !188
  %55 = or i32 %54, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %56 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i31 = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i31, i32 %55) #12, !srcloc !166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i23) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_file299, !3, !"__UNIQUE_ID_file299", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_license300, !3, !"__UNIQUE_ID_license300", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version301, !6, !"__UNIQUE_ID_version301", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 30, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 40, i32 1}
!13 = !{ptr @__UNIQUE_ID_debugtype302, !12, !"__UNIQUE_ID_debugtype302", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_debug303, !15, !"__UNIQUE_ID_debug303", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 42, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias304, !17, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 45, i32 1}
!18 = !{ptr @__initcall__kmod_vpif_display__305_1402_vpif_driver_init6, !19, !"__initcall__kmod_vpif_display__305_1402_vpif_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1402, i32 1}
!20 = !{ptr @__exitcall_vpif_driver_exit, !19, !"__exitcall_vpif_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @debug, !23, !"debug", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 38, i32 12}
!24 = !{ptr @vpif_driver, !25, !"vpif_driver", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1393, i32 41}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1230, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vpif_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @vpif_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1238, i32 3}
!36 = !{ptr @vpif_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vpif_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1244, i32 3}
!40 = !{ptr @vpif_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vpif_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1255, i32 4}
!44 = !{ptr @vpif_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vpif_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1278, i32 4}
!48 = !{ptr @vpif_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vpif_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @vpif_dev, !51, !"vpif_dev", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 53, i32 23}
!52 = !{ptr @vpif_obj, !53, !"vpif_obj", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 52, i32 27}
!54 = !{ptr @channel_first_int, !55, !"channel_first_int", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 50, i32 11}
!56 = !{ptr @vpif_probe_complete.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1133, i32 4}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vpif_probe_complete.__key.21, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1134, i32 4}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1178, i32 4}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vpif_probe_complete._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @vpif_probe_complete._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1185, i32 3}
!69 = !{ptr @vpif_probe_complete._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vpif_probe_complete._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 825, i32 4}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vpif_set_output._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @vpif_set_output._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 780, i32 2}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vpif_output_to_subdev._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vpif_output_to_subdev._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 475, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @vpif_update_resolution._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @vpif_update_resolution._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 441, i32 4}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vpif_update_std_info._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @vpif_update_std_info._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 450, i32 3}
!93 = !{ptr @vpif_update_std_info._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @vpif_update_std_info._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @video_qops, !96, !"video_qops", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 293, i32 29}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 92, i32 4}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vpif_buffer_prepare._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @vpif_buffer_prepare._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 185, i32 4}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vpif_start_streaming._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @vpif_start_streaming._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ycmux_mode, !111, !"ycmux_mode", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 48, i32 12}
!112 = !{ptr @vpif_fops, !113, !"vpif_fops", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1077, i32 42}
!114 = !{ptr @vpif_ioctl_ops, !115, !"vpif_ioctl_ops", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1047, i32 36}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 588, i32 49}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 712, i32 3}
!120 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @vpif_s_std._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @vpif_s_std._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 719, i32 3}
!125 = !{ptr @vpif_s_std._entry.47, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vpif_s_std._entry_ptr.49, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 754, i32 3}
!129 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @vpif_enum_output._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @vpif_enum_output._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 933, i32 3}
!134 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @vpif_s_dv_timings._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @vpif_s_dv_timings._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 942, i32 3}
!139 = !{ptr @vpif_s_dv_timings._entry.54, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @vpif_s_dv_timings._entry_ptr.56, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 953, i32 3}
!143 = !{ptr @vpif_s_dv_timings._entry.57, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @vpif_s_dv_timings._entry_ptr.59, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 978, i32 4}
!147 = !{ptr @vpif_s_dv_timings._entry.60, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @vpif_s_dv_timings._entry_ptr.62, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 984, i32 26}
!151 = !{ptr @vpif_pm_ops, !152, !"vpif_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/davinci/vpif_display.c", i32 1391, i32 8}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 4234741}
!164 = !{i64 2155951761}
!165 = !{i64 2155952042}
!166 = !{i64 4234323}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 2156527306}
!169 = !{i64 2156528280}
!170 = !{i64 2155916041}
!171 = !{i64 2155916985}
!172 = !{i64 2155918390}
!173 = !{i64 2155919352}
!174 = !{i64 2155920766}
!175 = !{i64 2155921728}
!176 = !{i64 2155896313}
!177 = !{i64 2155897281}
!178 = !{i8 0, i8 2}
!179 = !{i64 2155838128}
!180 = !{i64 2155839072}
!181 = !{i64 2156529801}
!182 = !{i64 2156530775}
!183 = !{i64 2155930722}
!184 = !{i64 2155931666}
!185 = !{i64 2155933071}
!186 = !{i64 2155934033}
!187 = !{i64 2155935447}
!188 = !{i64 2155936409}
!189 = !{i64 2155906056}
!190 = !{i64 2155907024}
!191 = !{i64 2155901102}
!192 = !{i64 2155902072}
!193 = !{i64 2155925538}
!194 = !{i64 2155926500}
!195 = !{i64 2155910845}
!196 = !{i64 2155911815}
!197 = !{i64 2155940219}
!198 = !{i64 2155941181}
!199 = !{i64 2155946924}
!200 = !{i64 2155947430}
!201 = !{i64 2155947940}
!202 = !{i64 2155948456}
!203 = !{i64 2155942498}
!204 = !{i64 2155943004}
!205 = !{i64 2155943514}
!206 = !{i64 2155944030}
!207 = !{i64 2155944711}
!208 = !{i64 2155945217}
!209 = !{i64 2155945727}
!210 = !{i64 2155946243}
