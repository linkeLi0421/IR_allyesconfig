; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap/omap_vout.c_pt.bc'
source_filename = "../drivers/media/platform/omap/omap_vout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.omap_vout_device = type { %struct.omapvideo_info, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_window, %struct.v4l2_framebuffer, %struct.mutex, i32, i8, i32, i32, i32, %struct.vid_vrfb_dma, [4 x i32], [4 x i32], [4 x %struct.vrfb], i8, i32, i8, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i32], i32, i32, ptr, %struct.vb2_queue }
%struct.omapvideo_info = type { i32, i32, [3 x ptr], i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.102 }
%struct.anon.102 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vid_vrfb_dma = type { ptr, ptr, i32, i32, %struct.wait_queue_head }
%struct.vrfb = type { i8, [4 x ptr], [4 x i32], i16, i16, i16, i16, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.omap_dss_device = type { %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8], i32, i32, %union.anon.120, %struct.anon.125, %struct.anon.126, ptr, ptr, ptr, ptr, %union.anon.127, i8, i32, ptr, i32, %struct.list_head, i32, i8, i32, i32, ptr, ptr }
%union.anon.120 = type { %struct.anon.124 }
%struct.anon.124 = type { i32, i8 }
%struct.anon.125 = type { %struct.omap_video_timings, i32, i32 }
%struct.omap_video_timings = type { i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i8, i32, i32, i32, i8 }
%struct.anon.126 = type { i8 }
%union.anon.127 = type { ptr }
%struct.omap_dss_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author298 = internal constant [35 x i8] c"omap_vout.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [60 x i8] c"omap_vout.description=OMAP Video for Linux Video out driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [53 x i8] c"omap_vout.file=drivers/media/platform/omap/omap-vout\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [22 x i8] c"omap_vout.license=GPL\00", section ".modinfo", align 1
@__param_str_vid1_static_vrfb_alloc = internal constant [33 x i8] c"omap_vout.vid1_static_vrfb_alloc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@vid1_static_vrfb_alloc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_vid1_static_vrfb_alloc = internal constant %struct.kernel_param { ptr @__param_str_vid1_static_vrfb_alloc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @vid1_static_vrfb_alloc } }, section "__param", align 4
@__UNIQUE_ID_vid1_static_vrfb_alloctype302 = internal constant [47 x i8] c"omap_vout.parmtype=vid1_static_vrfb_alloc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vid1_static_vrfb_alloc303 = internal constant [93 x i8] c"omap_vout.parm=vid1_static_vrfb_alloc:Static allocation of the VRFB buffer for video1 device\00", section ".modinfo", align 1
@__param_str_vid2_static_vrfb_alloc = internal constant [33 x i8] c"omap_vout.vid2_static_vrfb_alloc\00", align 1
@vid2_static_vrfb_alloc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_vid2_static_vrfb_alloc = internal constant %struct.kernel_param { ptr @__param_str_vid2_static_vrfb_alloc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @vid2_static_vrfb_alloc } }, section "__param", align 4
@__UNIQUE_ID_vid2_static_vrfb_alloctype304 = internal constant [47 x i8] c"omap_vout.parmtype=vid2_static_vrfb_alloc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vid2_static_vrfb_alloc305 = internal constant [93 x i8] c"omap_vout.parm=vid2_static_vrfb_alloc:Static allocation of the VRFB buffer for video2 device\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"omap_vout.debug\00", align 1
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype306 = internal constant [30 x i8] c"omap_vout.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug307 = internal constant [39 x i8] c"omap_vout.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_omap_vout__316_1741_omap_vout_init7 = internal global ptr @omap_vout_init, section ".initcall7.init", align 4
@__exitcall_omap_vout_cleanup = internal global ptr @omap_vout_cleanup, section ".exitcall.exit", align 4
@omap_vout_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @omap_vout_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap_vout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013omap_vout:Could not register Video driver\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_vout_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/platform/omap/omap_vout.c\00", [56 x i8] zeroinitializer }, align 32
@omap_vout_init._entry_ptr = internal global ptr @omap_vout_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_vout\00", [22 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1606, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to init dss\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_vout_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr = internal global ptr @omap_vout_probe._entry, section ".printk_index", align 4
@omap_vout_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1611, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"probed for an unknown device\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.10 = internal global ptr @omap_vout_probe._entry.8, section ".printk_index", align 4
@omap_vout_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 1628, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no driver for display: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.14 = internal global ptr @omap_vout_probe._entry.11, section ".printk_index", align 4
@omap_vout_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 1637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no displays\0A\00", [19 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.17 = internal global ptr @omap_vout_probe._entry.15, section ".printk_index", align 4
@omap_vout_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 1660, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot find display\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.20 = internal global ptr @omap_vout_probe._entry.18, section ".printk_index", align 4
@omap_vout_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 1674, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"'%s' Display already enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.23 = internal global ptr @omap_vout_probe._entry.21, section ".printk_index", align 4
@omap_vout_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.2, i32 1680, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"v4l2_device_register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_vout_probe._entry_ptr.26 = internal global ptr @omap_vout_probe._entry.24, section ".printk_index", align 4
@omap_vout_create_video_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1458, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c": could not allocate memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap_vout_create_video_devices\00", [33 x i8] zeroinitializer }, align 32
@omap_vout_create_video_devices._entry_ptr = internal global ptr @omap_vout_create_video_devices._entry, section ".printk_index", align 4
@omap_vout_create_video_devices._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 1507, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c": Could not register Video for Linux device\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_vout_create_video_devices._entry_ptr.32 = internal global ptr @omap_vout_create_video_devices._entry.30, section ".printk_index", align 4
@omap_vout_create_video_devices._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.2, i32 1516, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c": registered and initialized video device %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_vout_create_video_devices._entry_ptr.36 = internal global ptr @omap_vout_create_video_devices._entry.33, section ".printk_index", align 4
@omap_vout_setup_video_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013omap_vout: could not allocate video device struct\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_vout_setup_video_data\00", [37 x i8] zeroinitializer }, align 32
@omap_vout_setup_video_data._entry_ptr = internal global ptr @omap_vout_setup_video_data._entry, section ".printk_index", align 4
@omap_vout_vb2_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_vout_vb2_prepare\00", [42 x i8] zeroinitializer }, align 32
@omap_vout_vb2_prepare._entry_ptr = internal global ptr @omap_vout_vb2_prepare._entry, section ".printk_index", align 4
@omap_vout_vb2_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to set overlay info\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_vout_vb2_start_streaming\00", [34 x i8] zeroinitializer }, align 32
@omap_vout_vb2_start_streaming._entry_ptr = internal global ptr @omap_vout_vb2_start_streaming._entry, section ".printk_index", align 4
@omap_vout_vb2_start_streaming._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: failed to change mode\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_vout_vb2_start_streaming._entry_ptr.50 = internal global ptr @omap_vout_vb2_start_streaming._entry.48, section ".printk_index", align 4
@omap_vout_vb2_start_streaming._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to change mode in streamoff\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_vout_vb2_start_streaming._entry_ptr.53 = internal global ptr @omap_vout_vb2_start_streaming._entry.51, section ".printk_index", align 4
@omap_vout_calculate_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s Offset:%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_vout_calculate_offset\00", [37 x i8] zeroinitializer }, align 32
@omap_vout_calculate_offset._entry_ptr = internal global ptr @omap_vout_calculate_offset._entry, section ".printk_index", align 4
@omapvid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: apply_changes failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omapvid_init\00", [19 x i8] zeroinitializer }, align 32
@omapvid_init._entry_ptr = internal global ptr @omapvid_init._entry, section ".printk_index", align 4
@omapvid_setup_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [165 x i8], [59 x i8] } { [165 x i8] c"\017%s: %s enable=%d addr=%pad width=%d\0A height=%d color_mode=%d\0Arotation=%d mirror=%d posx=%d posy=%d out_width = %d \0Aout_height=%d rotation_type=%d screen_width=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omapvid_setup_overlay\00", [42 x i8] zeroinitializer }, align 32
@omapvid_setup_overlay._entry_ptr = internal global ptr @omapvid_setup_overlay._entry, section ".printk_index", align 4
@omapvid_setup_overlay._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: setup_overlay failed\0A\00", [36 x i8] zeroinitializer }, align 32
@omapvid_setup_overlay._entry_ptr.62 = internal global ptr @omapvid_setup_overlay._entry.60, section ".printk_index", align 4
@omap_vout_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013omap_voutfailed to set overlay info\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_vout_isr\00", [18 x i8] zeroinitializer }, align 32
@omap_vout_isr._entry_ptr = internal global ptr @omap_vout_isr._entry, section ".printk_index", align 4
@omap_vout_isr._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013omap_voutfailed to change mode\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_vout_isr._entry_ptr.67 = internal global ptr @omap_vout_isr._entry.65, section ".printk_index", align 4
@omap_vout_vb2_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.68, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_vout_vb2_stop_streaming\00", [35 x i8] zeroinitializer }, align 32
@omap_vout_vb2_stop_streaming._entry_ptr = internal global ptr @omap_vout_vb2_stop_streaming._entry, section ".printk_index", align 4
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"vid1_static_vrfb_alloc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 67, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"vid2_static_vrfb_alloc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 68, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 69, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"omap_vout_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1720, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1730, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1722, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1606, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1611, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1627, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1637, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1660, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1672, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1680, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1458, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1506, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1514, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1376, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 971, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1032, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1042, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1071, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 229, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 413, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 332, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 348, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 553, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 561, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [43 x i8] c"../drivers/media/platform/omap/omap_vout.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1105, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug307, ptr @__UNIQUE_ID_debugtype306, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_vid1_static_vrfb_alloc303, ptr @__UNIQUE_ID_vid1_static_vrfb_alloctype302, ptr @__UNIQUE_ID_vid2_static_vrfb_alloc305, ptr @__UNIQUE_ID_vid2_static_vrfb_alloctype304, ptr @__exitcall_omap_vout_cleanup, ptr @__initcall__kmod_omap_vout__316_1741_omap_vout_init7, ptr @__param_debug, ptr @__param_vid1_static_vrfb_alloc, ptr @__param_vid2_static_vrfb_alloc, ptr @omap_vout_calculate_offset._entry, ptr @omap_vout_calculate_offset._entry_ptr, ptr @omap_vout_create_video_devices._entry, ptr @omap_vout_create_video_devices._entry.30, ptr @omap_vout_create_video_devices._entry.33, ptr @omap_vout_create_video_devices._entry_ptr, ptr @omap_vout_create_video_devices._entry_ptr.32, ptr @omap_vout_create_video_devices._entry_ptr.36, ptr @omap_vout_init._entry, ptr @omap_vout_init._entry_ptr, ptr @omap_vout_isr._entry, ptr @omap_vout_isr._entry.65, ptr @omap_vout_isr._entry_ptr, ptr @omap_vout_isr._entry_ptr.67, ptr @omap_vout_probe._entry, ptr @omap_vout_probe._entry.11, ptr @omap_vout_probe._entry.15, ptr @omap_vout_probe._entry.18, ptr @omap_vout_probe._entry.21, ptr @omap_vout_probe._entry.24, ptr @omap_vout_probe._entry.8, ptr @omap_vout_probe._entry_ptr, ptr @omap_vout_probe._entry_ptr.10, ptr @omap_vout_probe._entry_ptr.14, ptr @omap_vout_probe._entry_ptr.17, ptr @omap_vout_probe._entry_ptr.20, ptr @omap_vout_probe._entry_ptr.23, ptr @omap_vout_probe._entry_ptr.26, ptr @omap_vout_setup_video_data._entry, ptr @omap_vout_setup_video_data._entry_ptr, ptr @omap_vout_vb2_prepare._entry, ptr @omap_vout_vb2_prepare._entry_ptr, ptr @omap_vout_vb2_start_streaming._entry, ptr @omap_vout_vb2_start_streaming._entry.48, ptr @omap_vout_vb2_start_streaming._entry.51, ptr @omap_vout_vb2_start_streaming._entry_ptr, ptr @omap_vout_vb2_start_streaming._entry_ptr.50, ptr @omap_vout_vb2_start_streaming._entry_ptr.53, ptr @omap_vout_vb2_stop_streaming._entry, ptr @omap_vout_vb2_stop_streaming._entry_ptr, ptr @omapvid_init._entry, ptr @omapvid_init._entry_ptr, ptr @omapvid_setup_overlay._entry, ptr @omapvid_setup_overlay._entry.60, ptr @omapvid_setup_overlay._entry_ptr, ptr @omapvid_setup_overlay._entry_ptr.62, ptr @vid1_static_vrfb_alloc, ptr @vid2_static_vrfb_alloc, ptr @debug, ptr @omap_vout_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid1_static_vrfb_alloc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid2_static_vrfb_alloc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_create_video_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_create_video_devices._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_create_video_devices._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_setup_video_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_vb2_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_vb2_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_vb2_start_streaming._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_vb2_start_streaming._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_calculate_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapvid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapvid_setup_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapvid_setup_overlay._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_isr._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vout_vb2_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_vout_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @omap_vout_driver, ptr noundef nonnull @omap_vout_probe, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_vout_cleanup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_vout_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_vout_probe(ptr nocapture noundef readnone %pdev) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -517
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_vout_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister(ptr noundef %1) #5
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31.not = icmp eq i32 %3, 0
  br i1 %cmp31.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %vouts = getelementptr i8, ptr %1, i32 128
  br label %for.body

for.cond1.preheader:                              ; preds = %omap_vout_cleanup_device.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %num_displays = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %num_displays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_displays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp233 = icmp sgt i32 %5, 0
  br i1 %cmp233, label %for.body3.lr.ph, label %for.cond1.preheader.for.end14_crit_edge

for.cond1.preheader.for.end14_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end14

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %displays = getelementptr i8, ptr %1, i32 140
  br label %for.body3

for.body:                                         ; preds = %omap_vout_cleanup_device.exit.for.body_crit_edge, %for.body.lr.ph
  %k.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %omap_vout_cleanup_device.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %vouts, i32 0, i32 %k.032
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.omap_vout_cleanup_device.exit_crit_edge, label %if.end.i

for.body.omap_vout_cleanup_device.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_vout_cleanup_device.exit

if.end.i:                                         ; preds = %for.body
  %vfd1.i = getelementptr inbounds %struct.omap_vout_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vfd1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfd1.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.video_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @video_device_release(ptr noundef nonnull %9) #5
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @video_unregister_device(ptr noundef nonnull %9) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %ctrl_handler.i = getelementptr inbounds %struct.omap_vout_device, ptr %7, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #5
  %rotation_type.i = getelementptr inbounds %struct.omapvideo_info, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %rotation_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rotation_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then8.i, label %if.end7.i.if.end12.i_crit_edge

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end7.i
  tail call void @omap_vout_release_vrfb(ptr noundef nonnull %7) #5
  %vrfb_static_allocation.i = getelementptr inbounds %struct.omap_vout_device, ptr %7, i32 0, i32 22
  %14 = ptrtoint ptr %vrfb_static_allocation.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vrfb_static_allocation.i, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not.i = icmp eq i8 %15, 0
  br i1 %tobool9.not.i, label %if.then8.i.if.end12.i_crit_edge, label %if.then10.i

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omap_vout_free_vrfb_buffers(ptr noundef nonnull %7) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then8.i.if.end12.i_crit_edge, %if.end7.i.if.end12.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %omap_vout_cleanup_device.exit

omap_vout_cleanup_device.exit:                    ; preds = %if.end12.i, %for.body.omap_vout_cleanup_device.exit_crit_edge
  %inc = add nuw i32 %k.032, 1
  %16 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_resources, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %omap_vout_cleanup_device.exit.for.body_crit_edge, label %omap_vout_cleanup_device.exit.for.cond1.preheader_crit_edge

omap_vout_cleanup_device.exit.for.cond1.preheader_crit_edge: ; preds = %omap_vout_cleanup_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

omap_vout_cleanup_device.exit.for.body_crit_edge: ; preds = %omap_vout_cleanup_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.body3.lr.ph
  %k.134 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc13, %if.end.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [10 x ptr], ptr %displays, i32 0, i32 %k.134
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  %state = getelementptr inbounds %struct.omap_dss_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5.not = icmp eq i32 %21, 0
  br i1 %cmp5.not, label %for.body3.if.end_crit_edge, label %if.then

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.omap_dss_device, ptr %19, i32 0, i32 13
  %22 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver, align 4
  %disable = getelementptr inbounds %struct.omap_dss_driver, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disable, align 4
  tail call void %25(ptr noundef %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3.if.end_crit_edge
  %inc13 = add nuw nsw i32 %k.134, 1
  %26 = ptrtoint ptr %num_displays to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_displays, align 4
  %cmp2 = icmp slt i32 %inc13, %27
  br i1 %cmp2, label %if.end.for.body3_crit_edge, label %if.end.for.end14_crit_edge

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end14

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.end14:                                        ; preds = %if.end.for.end14_crit_edge, %for.cond1.preheader.for.end14_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -96
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vout_release_vrfb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vout_free_vrfb_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__UNIQUE_ID_author298, !1, !"__UNIQUE_ID_author298", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_description299, !3, !"__UNIQUE_ID_description299", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_file300, !5, !"__UNIQUE_ID_file300", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 56, i32 1}
!6 = !{ptr @__UNIQUE_ID_license301, !5, !"__UNIQUE_ID_license301", i1 false, i1 false}
!7 = !{ptr @__param_vid1_static_vrfb_alloc, !8, !"__param_vid1_static_vrfb_alloc", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 72, i32 1}
!9 = !{ptr @__UNIQUE_ID_vid1_static_vrfb_alloctype302, !8, !"__UNIQUE_ID_vid1_static_vrfb_alloctype302", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_vid1_static_vrfb_alloc303, !11, !"__UNIQUE_ID_vid1_static_vrfb_alloc303", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 73, i32 1}
!12 = !{ptr @__param_vid2_static_vrfb_alloc, !13, !"__param_vid2_static_vrfb_alloc", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 76, i32 1}
!14 = !{ptr @__UNIQUE_ID_vid2_static_vrfb_alloctype304, !13, !"__UNIQUE_ID_vid2_static_vrfb_alloctype304", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_vid2_static_vrfb_alloc305, !16, !"__UNIQUE_ID_vid2_static_vrfb_alloc305", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 77, i32 1}
!17 = !{ptr @__param_debug, !18, !"__param_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 80, i32 1}
!19 = !{ptr @__UNIQUE_ID_debugtype306, !18, !"__UNIQUE_ID_debugtype306", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_debug307, !21, !"__UNIQUE_ID_debug307", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 81, i32 1}
!22 = !{ptr @__initcall__kmod_omap_vout__316_1741_omap_vout_init7, !23, !"__initcall__kmod_omap_vout__316_1741_omap_vout_init7", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1741, i32 1}
!24 = !{ptr @__exitcall_omap_vout_cleanup, !25, !"__exitcall_omap_vout_cleanup", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1742, i32 1}
!26 = !{ptr @vid1_static_vrfb_alloc, !27, !"vid1_static_vrfb_alloc", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 67, i32 13}
!28 = !{ptr @vid2_static_vrfb_alloc, !29, !"vid2_static_vrfb_alloc", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 68, i32 13}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 69, i32 13}
!32 = !{ptr @__param_str_vid1_static_vrfb_alloc, !8, !"__param_str_vid1_static_vrfb_alloc", i1 false, i1 false}
!33 = !{ptr @__param_str_vid2_static_vrfb_alloc, !13, !"__param_str_vid2_static_vrfb_alloc", i1 false, i1 false}
!34 = !{ptr @__param_str_debug, !18, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1730, i32 3}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap_vout_init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_vout_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1722, i32 11}
!43 = !{ptr @omap_vout_driver, !44, !"omap_vout_driver", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1720, i32 31}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1606, i32 3}
!47 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @omap_vout_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap_vout_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1611, i32 3}
!54 = !{ptr @omap_vout_probe._entry.8, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @omap_vout_probe._entry_ptr.10, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1627, i32 4}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @omap_vout_probe._entry.11, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @omap_vout_probe._entry_ptr.14, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1637, i32 3}
!63 = !{ptr @omap_vout_probe._entry.15, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_vout_probe._entry_ptr.17, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1660, i32 4}
!67 = !{ptr @omap_vout_probe._entry.18, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap_vout_probe._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1672, i32 5}
!71 = !{ptr @omap_vout_probe._entry.21, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_vout_probe._entry_ptr.23, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1680, i32 3}
!75 = !{ptr @omap_vout_probe._entry.24, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @omap_vout_probe._entry_ptr.26, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1458, i32 4}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @omap_vout_create_video_devices._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @omap_vout_create_video_devices._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1473, i32 3}
!84 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1506, i32 4}
!87 = !{ptr @omap_vout_create_video_devices._entry.30, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @omap_vout_create_video_devices._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1514, i32 3}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @omap_vout_create_video_devices._entry.33, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_vout_create_video_devices._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"_key", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1354, i32 2}
!96 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1376, i32 3}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @omap_vout_setup_video_data._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @omap_vout_setup_video_data._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1393, i32 2}
!104 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"omap_vout_ctrl_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 937, i32 35}
!107 = distinct !{null, !108, !"vout_ioctl_ops", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1259, i32 36}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 579, i32 4}
!111 = distinct !{null, !112, !"omap_formats", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 84, i32 34}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1243, i32 41}
!115 = distinct !{null, !116, !"omap_vout_fops", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1287, i32 42}
!117 = distinct !{null, !118, !"omap_vout_vb2_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1296, i32 29}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 971, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @omap_vout_vb2_prepare._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @omap_vout_vb2_prepare._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!126 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1032, i32 3}
!129 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @omap_vout_vb2_start_streaming._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @omap_vout_vb2_start_streaming._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1042, i32 3}
!134 = !{ptr @omap_vout_vb2_start_streaming._entry.48, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @omap_vout_vb2_start_streaming._entry_ptr.50, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1071, i32 3}
!138 = !{ptr @omap_vout_vb2_start_streaming._entry.51, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @omap_vout_vb2_start_streaming._entry_ptr.53, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 229, i32 2}
!142 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @omap_vout_calculate_offset._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @omap_vout_calculate_offset._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 413, i32 2}
!147 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @omapvid_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @omapvid_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 332, i32 2}
!152 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @omapvid_setup_overlay._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @omapvid_setup_overlay._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 348, i32 2}
!157 = !{ptr @omapvid_setup_overlay._entry.60, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @omapvid_setup_overlay._entry_ptr.62, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 553, i32 3}
!161 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @omap_vout_isr._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @omap_vout_isr._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 561, i32 3}
!166 = !{ptr @omap_vout_isr._entry.65, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @omap_vout_isr._entry_ptr.67, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/omap/omap_vout.c", i32 1105, i32 3}
!170 = !{ptr @omap_vout_vb2_stop_streaming._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @omap_vout_vb2_stop_streaming._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i8 0, i8 2}
