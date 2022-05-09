; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpif_capture.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpif_capture.c"
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
%struct.vpif_device = type { %struct.v4l2_device, [2 x ptr], ptr, %struct.v4l2_async_notifier, ptr }
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
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpif_channel_config_params = type { [30 x i8], i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i64, %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32, %union.anon.116 }
%union.anon.116 = type { [32 x i32] }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.channel_obj = type { %struct.video_device, i32, i8, i32, i32, ptr, %struct.vpif_params, [1 x %struct.common_obj], %struct.video_obj }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.88], %struct.media_entity_enum, i32 }
%struct.anon.88 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vpif_params = type { %struct.vpif_interface, %struct.vpif_video_params, %struct.vpif_channel_config_params, %union.param }
%struct.vpif_interface = type { i32, i8 }
%struct.vpif_video_params = type { i8, i32, i64 }
%union.param = type { %struct.vpif_vbi_params }
%struct.vpif_vbi_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.common_obj = type { ptr, ptr, %struct.v4l2_format, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_obj = type { i32, i64, %struct.v4l2_dv_timings }
%struct.vpif_capture_config = type { ptr, ptr, [2 x %struct.vpif_capture_chan_config], ptr, i32, i32, ptr, [2 x ptr], [2 x i32] }
%struct.vpif_capture_chan_config = type { %struct.vpif_interface, ptr, i32 }
%struct.vpif_subdev_info = type { ptr, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.119, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.119 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.vpif_input = type { %struct.v4l2_input, ptr, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpif_cap_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.118, i16, i16, i16, [10 x i16] }
%union.anon.118 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_async_subdev = type { i32, %union.anon.86, %struct.list_head, %struct.list_head }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { i32, i16 }

@__UNIQUE_ID_description298 = internal constant [56 x i8] c"vpif_capture.description=TI DaVinci VPIF Capture driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [62 x i8] c"vpif_capture.file=drivers/media/platform/davinci/vpif_capture\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [25 x i8] c"vpif_capture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [27 x i8] c"vpif_capture.version=0.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpif_capture\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [19 x i8] c"vpif_capture.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype302 = internal constant [32 x i8] c"vpif_capture.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug303 = internal constant [40 x i8] c"vpif_capture.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [41 x i8] c"vpif_capture.alias=platform:vpif_capture\00", section ".modinfo", align 1
@__initcall__kmod_vpif_capture__310_1818_vpif_driver_init6 = internal global ptr @vpif_driver_init, section ".initcall6.init", align 4
@vpif_driver = internal global %struct.platform_driver { ptr @vpif_probe, ptr @vpif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@__exitcall_vpif_driver_exit = internal global ptr @vpif_driver_exit, section ".exitcall.exit", align 4
@vpif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vpif_suspend, ptr @vpif_resume, ptr @vpif_suspend, ptr @vpif_resume, ptr @vpif_suspend, ptr @vpif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vpif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1617, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing platform data.  Giving up.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpif_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/davinci/vpif_capture.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr = internal global ptr @vpif_probe._entry, section ".printk_index", align 4
@vpif_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vpif_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Error initializing vpif\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.10 = internal global ptr @vpif_probe._entry.8, section ".printk_index", align 4
@vpif_obj = internal global { %struct.vpif_device, [32 x i8] } zeroinitializer, align 32
@vpif_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error registering v4l2 device\0A\00", [59 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.13 = internal global ptr @vpif_probe._entry.11, section ".printk_index", align 4
@vpif_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error registering v4l2 subdevice\0A\00", [56 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.16 = internal global ptr @vpif_probe._entry.14, section ".printk_index", align 4
@vpif_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: registered sub device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.19 = internal global ptr @vpif_probe._entry.17, section ".printk_index", align 4
@vpif_async_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @vpif_async_bound, ptr @vpif_async_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@vpif_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error registering async notifier\0A\00", [56 x i8] zeroinitializer }, align 32
@vpif_probe._entry_ptr.22 = internal global ptr @vpif_probe._entry.20, section ".printk_index", align 4
@vpif_capture_get_pdata.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpif_capture_get_pdata\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Remote device at %pOF not found\0A\00", [63 x i8] zeroinitializer }, align 32
@vpif_capture_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 1554, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not parse the endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vpif_capture_get_pdata._entry_ptr = internal global ptr @vpif_capture_get_pdata._entry, section ".printk_index", align 4
@vpif_capture_get_pdata.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.27, i8 1, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Endpoint %pOF, bus_width = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_capture_get_pdata.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.28, i8 1, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Remote device %pOF found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DA850/OMAP-L138 Video Capture\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@channel_first_int = internal global { [1 x [2 x i8]], [30 x i8] } { [1 x [2 x i8]] [[2 x i8] c"\01\01"], [30 x i8] zeroinitializer }, align 32
@vpif_base = external dso_local local_unnamed_addr global ptr, align 4
@vpif_probe_complete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&common->irqlock\00", [47 x i8] zeroinitializer }, align 32
@vpif_probe_complete.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&common->lock\00", [18 x i8] zeroinitializer }, align 32
@video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vpif_buffer_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vpif_buffer_prepare, ptr null, ptr null, ptr @vpif_start_streaming, ptr @vpif_stop_streaming, ptr @vpif_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vpif_probe_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: vpif_capture: vb2_queue_init() failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpif_probe_complete\00", [44 x i8] zeroinitializer }, align 32
@vpif_probe_complete._entry_ptr = internal global ptr @vpif_probe_complete._entry, section ".printk_index", align 4
@vpif_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@vpif_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpif_querycap, ptr @vpif_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vpif_g_std, ptr @vpif_s_std, ptr @vpif_querystd, ptr @vpif_enum_input, ptr @vpif_g_input, ptr @vpif_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpif_s_dv_timings, ptr @vpif_g_dv_timings, ptr @vpif_query_dv_timings, ptr @vpif_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@vpif_probe_complete._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: VPIF capture driver initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@vpif_probe_complete._entry_ptr.37 = internal global ptr @vpif_probe_complete._entry.35, section ".printk_index", align 4
@vpif_set_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017%s: couldn't setup input path for the sub device %s, for input index %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpif_set_input\00", [17 x i8] zeroinitializer }, align 32
@vpif_set_input._entry_ptr = internal global ptr @vpif_set_input._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vpif_set_input._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Failed to set input\0A\00", [37 x i8] zeroinitializer }, align 32
@vpif_set_input._entry_ptr.42 = internal global ptr @vpif_set_input._entry.40, section ".printk_index", align 4
@vpif_input_to_subdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: vpif_input_to_subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_input_to_subdev\00", [43 x i8] zeroinitializer }, align 32
@vpif_input_to_subdev._entry_ptr = internal global ptr @vpif_input_to_subdev._entry, section ".printk_index", align 4
@vpif_update_std_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: vpif_update_std_info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_update_std_info\00", [43 x i8] zeroinitializer }, align 32
@vpif_update_std_info._entry_ptr = internal global ptr @vpif_update_std_info._entry, section ".printk_index", align 4
@vpif_ch_params_count = external dso_local local_unnamed_addr constant i32, align 4
@vpif_ch_params = external dso_local constant [0 x %struct.vpif_channel_config_params], align 8
@vpif_update_std_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: SD format\0A\00", [47 x i8] zeroinitializer }, align 32
@vpif_update_std_info._entry_ptr.49 = internal global ptr @vpif_update_std_info._entry.47, section ".printk_index", align 4
@vpif_update_std_info._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: HD format\0A\00", [47 x i8] zeroinitializer }, align 32
@vpif_update_std_info._entry_ptr.52 = internal global ptr @vpif_update_std_info._entry.50, section ".printk_index", align 4
@vpif_buffer_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpif_buffer_setup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vpif_buffer_queue_setup\00", [40 x i8] zeroinitializer }, align 32
@vpif_buffer_queue_setup._entry_ptr = internal global ptr @vpif_buffer_queue_setup._entry, section ".printk_index", align 4
@vpif_calculate_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vpif_calculate_offsets\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpif_calculate_offsets\00", [41 x i8] zeroinitializer }, align 32
@vpif_calculate_offsets._entry_ptr = internal global ptr @vpif_calculate_offsets._entry, section ".printk_index", align 4
@vpif_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: vpif_buffer_prepare\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpif_buffer_prepare\00", [44 x i8] zeroinitializer }, align 32
@vpif_buffer_prepare._entry_ptr = internal global ptr @vpif_buffer_prepare._entry, section ".printk_index", align 4
@vpif_buffer_prepare._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: offset is not aligned\0A\00", [35 x i8] zeroinitializer }, align 32
@vpif_buffer_prepare._entry_ptr.61 = internal global ptr @vpif_buffer_prepare._entry.59, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: can't set vpif channel mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry_ptr = internal global ptr @vpif_start_streaming._entry, section ".printk_index", align 4
@vpif_start_streaming._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: stream on failed in subdev\0A\00", [62 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry_ptr.67 = internal global ptr @vpif_start_streaming._entry.65, section ".printk_index", align 4
@vpif_start_streaming._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.5, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: can't set video params\0A\00", [34 x i8] zeroinitializer }, align 32
@vpif_start_streaming._entry_ptr.70 = internal global ptr @vpif_start_streaming._entry.68, section ".printk_index", align 4
@ycmux_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vpif_config_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vpif_config_addr\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpif_config_addr\00", [47 x i8] zeroinitializer }, align 32
@vpif_config_addr._entry_ptr = internal global ptr @vpif_config_addr._entry, section ".printk_index", align 4
@vpif_lock = external dso_local global %struct.spinlock, align 4
@vpif_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: stream off failed in subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpif_stop_streaming\00", [44 x i8] zeroinitializer }, align 32
@vpif_stop_streaming._entry_ptr = internal global ptr @vpif_stop_streaming._entry, section ".printk_index", align 4
@vpif_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpif_buffer_queue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpif_buffer_queue\00", [46 x i8] zeroinitializer }, align 32
@vpif_buffer_queue._entry_ptr = internal global ptr @vpif_buffer_queue._entry, section ".printk_index", align 4
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vpif_enum_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Invalid format index\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpif_enum_fmt_vid_cap\00", [42 x i8] zeroinitializer }, align 32
@vpif_enum_fmt_vid_cap._entry_ptr = internal global ptr @vpif_enum_fmt_vid_cap._entry, section ".printk_index", align 4
@vpif_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 1015, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unhandled media-bus format 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpif_g_fmt_vid_cap\00", [45 x i8] zeroinitializer }, align 32
@vpif_g_fmt_vid_cap._entry_ptr = internal global ptr @vpif_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vpif_g_fmt_vid_cap.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: %d x %d; pitch=%d, pixelformat=0x%08x, code=0x%x, field=%d, size=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@vpif_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpif_s_fmt_vid_cap\00", [45 x i8] zeroinitializer }, align 32
@vpif_s_fmt_vid_cap._entry_ptr = internal global ptr @vpif_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vpif_try_fmt_vid_cap.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.5, ptr @.str.86, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpif_try_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: %d x %d; pitch=%d pixelformat=0x%08x, field=%d, size=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@vpif_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: vpif_g_std\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpif_g_std\00", [21 x i8] zeroinitializer }, align 32
@vpif_g_std._entry_ptr = internal global ptr @vpif_g_std._entry, section ".printk_index", align 4
@vpif_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: vpif_s_std\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpif_s_std\00", [21 x i8] zeroinitializer }, align 32
@vpif_s_std._entry_ptr = internal global ptr @vpif_s_std._entry, section ".printk_index", align 4
@vpif_s_std._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.5, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error getting the standard info\0A\00", [57 x i8] zeroinitializer }, align 32
@vpif_s_std._entry_ptr.93 = internal global ptr @vpif_s_std._entry.91, section ".printk_index", align 4
@vpif_s_std._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.5, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Failed to set standard for sub devices\0A\00", [50 x i8] zeroinitializer }, align 32
@vpif_s_std._entry_ptr.96 = internal global ptr @vpif_s_std._entry.94, section ".printk_index", align 4
@vpif_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: vpif_querystd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpif_querystd\00", [18 x i8] zeroinitializer }, align 32
@vpif_querystd._entry_ptr = internal global ptr @vpif_querystd._entry, section ".printk_index", align 4
@vpif_querystd._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.5, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: Failed to query standard for sub devices\0A\00", [48 x i8] zeroinitializer }, align 32
@vpif_querystd._entry_ptr.101 = internal global ptr @vpif_querystd._entry.99, section ".printk_index", align 4
@vpif_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Timing type not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpif_s_dv_timings\00", [46 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr = internal global ptr @vpif_s_dv_timings._entry, section ".printk_index", align 4
@vpif_s_dv_timings._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.5, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Error setting custom DV timings\0A\00", [57 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.106 = internal global ptr @vpif_s_dv_timings._entry.104, section ".printk_index", align 4
@vpif_s_dv_timings._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.5, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [173 x i8], [51 x i8] } { [173 x i8] c"\017%s: Timings for width, height, horizontal back porch, horizontal sync, horizontal front porch, vertical back porch, vertical sync and vertical back porch must be defined\0A\00", [51 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.109 = internal global ptr @vpif_s_dv_timings._entry.107, section ".printk_index", align 4
@vpif_s_dv_timings._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.5, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: Required timing values for interlaced BT format missing\0A\00", [33 x i8] zeroinitializer }, align 32
@vpif_s_dv_timings._entry_ptr.112 = internal global ptr @vpif_s_dv_timings._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Custom timings BT656/1120\00", [38 x i8] zeroinitializer }, align 32
@vpif_async_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: setting input %d subdev_name = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpif_async_bound\00", [47 x i8] zeroinitializer }, align 32
@vpif_async_bound._entry_ptr = internal global ptr @vpif_async_bound._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 808534338, i64 825770306]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 12298]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 28, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 34, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"vpif_pm_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1807, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1617, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [9 x i8] c"vpif_dev\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 45, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1625, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [9 x i8] c"vpif_obj\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 44, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1631, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1671, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1675, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"vpif_async_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1482, i32 52 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1687, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1532, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1554, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1559, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1570, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1587, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"channel_first_int\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 49, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1410, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1411, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"video_qops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 306, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1439, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [10 x i8] c"vpif_fops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1320, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"vpif_ioctl_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1287, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1463, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 715, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 728, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 661, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 469, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 502, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 508, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 117, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 565, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 76, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 91, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1163, i32 7 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 183, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 190, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 197, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [11 x i8] c"ycmux_mode\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 52, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 630, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 280, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 151, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1070, i32 49 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 925, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1014, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1018, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1044, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 965, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 785, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 815, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 834, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 841, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 756, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 764, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1173, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1185, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1196, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1221, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1227, i32 26 }
@___asan_gen_.509 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.516 = private constant [49 x i8] c"../drivers/media/platform/davinci/vpif_capture.c\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1380, i32 4 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_debug303, ptr @__UNIQUE_ID_debugtype302, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_version301, ptr @__exitcall_vpif_driver_exit, ptr @__initcall__kmod_vpif_capture__310_1818_vpif_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @vpif_async_bound._entry, ptr @vpif_async_bound._entry_ptr, ptr @vpif_buffer_prepare._entry, ptr @vpif_buffer_prepare._entry.59, ptr @vpif_buffer_prepare._entry_ptr, ptr @vpif_buffer_prepare._entry_ptr.61, ptr @vpif_buffer_queue._entry, ptr @vpif_buffer_queue._entry_ptr, ptr @vpif_buffer_queue_setup._entry, ptr @vpif_buffer_queue_setup._entry_ptr, ptr @vpif_calculate_offsets._entry, ptr @vpif_calculate_offsets._entry_ptr, ptr @vpif_capture_get_pdata._entry, ptr @vpif_capture_get_pdata._entry_ptr, ptr @vpif_config_addr._entry, ptr @vpif_config_addr._entry_ptr, ptr @vpif_driver_exit, ptr @vpif_enum_fmt_vid_cap._entry, ptr @vpif_enum_fmt_vid_cap._entry_ptr, ptr @vpif_g_fmt_vid_cap._entry, ptr @vpif_g_fmt_vid_cap._entry_ptr, ptr @vpif_g_std._entry, ptr @vpif_g_std._entry_ptr, ptr @vpif_input_to_subdev._entry, ptr @vpif_input_to_subdev._entry_ptr, ptr @vpif_probe._entry, ptr @vpif_probe._entry.11, ptr @vpif_probe._entry.14, ptr @vpif_probe._entry.17, ptr @vpif_probe._entry.20, ptr @vpif_probe._entry.8, ptr @vpif_probe._entry_ptr, ptr @vpif_probe._entry_ptr.10, ptr @vpif_probe._entry_ptr.13, ptr @vpif_probe._entry_ptr.16, ptr @vpif_probe._entry_ptr.19, ptr @vpif_probe._entry_ptr.22, ptr @vpif_probe_complete._entry, ptr @vpif_probe_complete._entry.35, ptr @vpif_probe_complete._entry_ptr, ptr @vpif_probe_complete._entry_ptr.37, ptr @vpif_querystd._entry, ptr @vpif_querystd._entry.99, ptr @vpif_querystd._entry_ptr, ptr @vpif_querystd._entry_ptr.101, ptr @vpif_s_dv_timings._entry, ptr @vpif_s_dv_timings._entry.104, ptr @vpif_s_dv_timings._entry.107, ptr @vpif_s_dv_timings._entry.110, ptr @vpif_s_dv_timings._entry_ptr, ptr @vpif_s_dv_timings._entry_ptr.106, ptr @vpif_s_dv_timings._entry_ptr.109, ptr @vpif_s_dv_timings._entry_ptr.112, ptr @vpif_s_fmt_vid_cap._entry, ptr @vpif_s_fmt_vid_cap._entry_ptr, ptr @vpif_s_std._entry, ptr @vpif_s_std._entry.91, ptr @vpif_s_std._entry.94, ptr @vpif_s_std._entry_ptr, ptr @vpif_s_std._entry_ptr.93, ptr @vpif_s_std._entry_ptr.96, ptr @vpif_set_input._entry, ptr @vpif_set_input._entry.40, ptr @vpif_set_input._entry_ptr, ptr @vpif_set_input._entry_ptr.42, ptr @vpif_start_streaming._entry, ptr @vpif_start_streaming._entry.65, ptr @vpif_start_streaming._entry.68, ptr @vpif_start_streaming._entry_ptr, ptr @vpif_start_streaming._entry_ptr.67, ptr @vpif_start_streaming._entry_ptr.70, ptr @vpif_stop_streaming._entry, ptr @vpif_stop_streaming._entry_ptr, ptr @vpif_update_std_info._entry, ptr @vpif_update_std_info._entry.47, ptr @vpif_update_std_info._entry.50, ptr @vpif_update_std_info._entry_ptr, ptr @vpif_update_std_info._entry_ptr.49, ptr @vpif_update_std_info._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @vpif_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vpif_dev, ptr @.str.9, ptr @vpif_obj, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @vpif_async_ops, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @channel_first_int, ptr @vpif_probe_complete.__key, ptr @.str.30, ptr @vpif_probe_complete.__key.31, ptr @.str.32, ptr @video_qops, ptr @.str.33, ptr @.str.34, ptr @vpif_fops, ptr @vpif_ioctl_ops, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @ycmux_mode, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_obj to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_async_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_capture_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_first_int to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_probe_complete._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_set_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_set_input._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_input_to_subdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_std_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_std_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_update_std_info._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_buffer_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_calculate_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_buffer_prepare._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_start_streaming._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_start_streaming._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ycmux_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_config_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_enum_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_std._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_std._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_querystd._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_s_dv_timings._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpif_async_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }]
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
  %call = tail call fastcc ptr @vpif_capture_get_pdata(ptr noundef %pdev)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #15
  br label %cleanup103

if.end:                                           ; preds = %entry
  store ptr %dev, ptr @vpif_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2688) #16
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end10_crit_edge, label %for.inc.i

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

for.inc.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2688) #16
  store ptr %call7.i.i.1.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %cleanup.loopexit.critedge.i, label %if.end12

cleanup.loopexit.critedge.i:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %3) #12
  br label %do.end10

do.end10:                                         ; preds = %cleanup.loopexit.critedge.i, %if.end.do.end10_crit_edge
  %4 = load ptr, ptr @vpif_dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %8) #15
  br label %cleanup102

if.end12:                                         ; preds = %for.inc.i
  %9 = load ptr, ptr @vpif_dev, align 4
  %call13 = tail call i32 @v4l2_device_register(ptr noundef %9, ptr noundef nonnull @vpif_obj) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %while.cond.preheader, label %do.end18

while.cond.preheader:                             ; preds = %if.end12
  %call24144 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool25.not145 = icmp eq ptr %call24144, null
  br i1 %tobool25.not145, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %10 = load ptr, ptr @vpif_dev, align 4
  %driver20 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %driver20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver20, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %14) #15
  br label %vpif_free

while.cond:                                       ; preds = %while.body
  %inc = add i32 %res_idx.0146, 1
  %call24 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %inc) #12
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call24147 = phi ptr [ %call24, %while.cond.while.body_crit_edge ], [ %call24144, %while.cond.preheader.while.body_crit_edge ]
  %res_idx.0146 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %15 = ptrtoint ptr %call24147 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call24147, align 4
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %res_idx.0146
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %18, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull @vpif_channel_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %channel_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %while.cond, label %while.body.vpif_unregister_crit_edge

while.body.vpif_unregister_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_unregister

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %19 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data, align 8
  store ptr %20, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %subdev_count33 = getelementptr inbounds %struct.vpif_capture_config, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %subdev_count33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subdev_count33, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #12
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !265

kcalloc.exit.thread:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  br label %vpif_unregister

if.end7.i.i:                                      ; preds = %while.end
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #17
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %tobool35.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool35.not, label %if.end7.i.i.vpif_unregister_crit_edge, label %if.end37

if.end7.i.i.vpif_unregister_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_unregister

if.end37:                                         ; preds = %if.end7.i.i
  %26 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %asd_sizes = getelementptr inbounds %struct.vpif_capture_config, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %asd_sizes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %asd_sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %i2c_adapter_id = getelementptr inbounds %struct.vpif_capture_config, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_adapter_id, align 4
  %call41 = tail call ptr @i2c_get_adapter(i32 noundef %30) #12
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.end55, label %if.then40.if.end61_crit_edge, !prof !265

if.then40.if.end61_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

do.end55:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1660, i32 noundef 9, ptr noundef null) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.then40.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp148.not = icmp eq i32 %22, 0
  br i1 %cmp148.not, label %if.end61.for.end_crit_edge, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  br label %for.body

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %do.end83.for.body_crit_edge, %if.end61.for.body_crit_edge
  %i.0149 = phi i32 [ %inc87, %do.end83.for.body_crit_edge ], [ 0, %if.end61.for.body_crit_edge ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %subdev_info = getelementptr inbounds %struct.vpif_capture_config, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %subdev_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdev_info, align 4
  %board_info = getelementptr %struct.vpif_subdev_info, ptr %33, i32 %i.0149, i32 1
  %call70 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef nonnull @vpif_obj, ptr noundef %call41, ptr noundef %board_info, ptr noundef null) #12
  %34 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx71 = getelementptr ptr, ptr %34, i32 %i.0149
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call70, ptr %arrayidx71, align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx72 = getelementptr ptr, ptr %36, i32 %i.0149
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %38, null
  br i1 %tobool73.not, label %for.body.probe_subdev_out.sink.split_crit_edge, label %do.end83

for.body.probe_subdev_out.sink.split_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_subdev_out.sink.split

do.end83:                                         ; preds = %for.body
  %arrayidx69 = getelementptr %struct.vpif_subdev_info, ptr %33, i32 %i.0149
  %39 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx69, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), ptr noundef %40) #15
  %inc87 = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc87, %22
  br i1 %exitcond.not, label %do.end83.for.end_crit_edge, label %do.end83.for.body_crit_edge

do.end83.for.body_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end83.for.end_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end83.for.end_crit_edge, %if.end61.for.end_crit_edge
  %call88 = tail call fastcc i32 @vpif_probe_complete()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %for.end.cleanup103_crit_edge, label %for.end.probe_subdev_out_crit_edge

for.end.probe_subdev_out_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_subdev_out

for.end.cleanup103_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.else:                                          ; preds = %if.end37
  store ptr @vpif_async_ops, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3), align 4
  %call92 = tail call i32 @v4l2_async_nf_register(ptr noundef nonnull @vpif_obj, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.else.cleanup103_crit_edge, label %if.else.probe_subdev_out.sink.split_crit_edge

if.else.probe_subdev_out.sink.split_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %probe_subdev_out.sink.split

if.else.cleanup103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

probe_subdev_out.sink.split:                      ; preds = %if.else.probe_subdev_out.sink.split_crit_edge, %for.body.probe_subdev_out.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.21, %if.else.probe_subdev_out.sink.split_crit_edge ], [ @.str.15, %for.body.probe_subdev_out.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ -22, %if.else.probe_subdev_out.sink.split_crit_edge ], [ -19, %for.body.probe_subdev_out.sink.split_crit_edge ]
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %probe_subdev_out

probe_subdev_out:                                 ; preds = %probe_subdev_out.sink.split, %for.end.probe_subdev_out_crit_edge
  %err.1 = phi i32 [ %call88, %for.end.probe_subdev_out_crit_edge ], [ %err.1.ph, %probe_subdev_out.sink.split ]
  %41 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %41) #12
  br label %vpif_unregister

vpif_unregister:                                  ; preds = %probe_subdev_out, %if.end7.i.i.vpif_unregister_crit_edge, %kcalloc.exit.thread, %while.body.vpif_unregister_crit_edge
  %err.2 = phi i32 [ %err.1, %probe_subdev_out ], [ -12, %if.end7.i.i.vpif_unregister_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -22, %while.body.vpif_unregister_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull @vpif_obj) #12
  br label %vpif_free

vpif_free:                                        ; preds = %vpif_unregister, %do.end18
  %err.3 = phi i32 [ %call13, %do.end18 ], [ %err.2, %vpif_unregister ]
  %42 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @kfree(ptr noundef %42) #12
  %43 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %43) #12
  br label %cleanup102

cleanup102:                                       ; preds = %vpif_free, %do.end10
  %err.4 = phi i32 [ -12, %do.end10 ], [ %err.3, %vpif_free ]
  tail call void @v4l2_async_nf_cleanup(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup102, %if.else.cleanup103_crit_edge, %for.end.cleanup103_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.4, %cleanup102 ], [ -22, %do.end ], [ 0, %if.else.cleanup103_crit_edge ], [ 0, %for.end.cleanup103_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_remove(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_async_nf_unregister(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  tail call void @v4l2_device_unregister(ptr noundef nonnull @vpif_obj) #12
  %0 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %0) #12
  %1 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @video_unregister_device(ptr noundef %1) #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  tail call void @kfree(ptr noundef %2) #12
  %3 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @video_unregister_device(ptr noundef %3) #12
  %4 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  tail call void @kfree(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vpif_capture_get_pdata(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_async_nf_init(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %of_node8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %of_node10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node10, align 8
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data, align 8
  br label %cleanup135

if.end14:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #12
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end14.cleanup135_crit_edge, label %if.end18

if.end14.cleanup135_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup135

if.end18:                                         ; preds = %if.end14
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #12
  %subdev_info = getelementptr inbounds %struct.vpif_capture_config, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %subdev_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %subdev_info, align 4
  %tobool22.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool22.not, label %if.end18.cleanup135_crit_edge, label %for.cond.preheader

if.end18.cleanup135_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup135

for.cond.preheader:                               ; preds = %if.end18
  %bus_width = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 0, i32 1
  %bus85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %endpoint.0235 = phi ptr [ null, %for.cond.preheader ], [ %call27, %for.inc.for.body_crit_edge ]
  %cmp = phi i1 [ true, %for.cond.preheader ], [ false, %for.inc.for.body_crit_edge ]
  %i.0234 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #12
  %10 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %11 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node10, align 8
  %call27 = call ptr @of_graph_get_next_endpoint(ptr noundef %12, ptr noundef %endpoint.0235) #12
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %for.body.cleanup.thread_crit_edge, label %if.end30

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end30:                                         ; preds = %for.body
  %call31 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call27) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body, label %if.end41

do.body:                                          ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpif_capture_get_pdata, %if.then38)) #12
          to label %cleanup [label %if.then38], !srcloc !266

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpif_capture_get_pdata.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull %call27) #12
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %subdev_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subdev_info, align 4
  %arrayidx = getelementptr %struct.vpif_subdev_info, ptr %14, i32 %i.0234
  %arrayidx43 = getelementptr %struct.vpif_capture_config, ptr %call.i, i32 0, i32 2, i32 %i.0234
  %call5.i.i204 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #12
  %inputs = getelementptr %struct.vpif_capture_config, ptr %call.i, i32 0, i32 2, i32 %i.0234, i32 1
  %15 = ptrtoint ptr %inputs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i204, ptr %inputs, align 4
  %tobool47.not = icmp eq ptr %call5.i.i204, null
  br i1 %tobool47.not, label %if.end41.err_cleanup_crit_edge, label %if.end49

if.end41.err_cleanup_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup

if.end49:                                         ; preds = %if.end41
  %input_count = getelementptr %struct.vpif_capture_config, ptr %call.i, i32 0, i32 2, i32 %i.0234, i32 2
  %16 = ptrtoint ptr %input_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %input_count, align 4
  %type = getelementptr %struct.vpif_input, ptr %call5.i.i204, i32 %i.0234, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type, align 4
  %std = getelementptr %struct.vpif_input, ptr %call5.i.i204, i32 %i.0234, i32 0, i32 5
  %19 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 16777215, ptr %std, align 8
  %capabilities = getelementptr %struct.vpif_input, ptr %call5.i.i204, i32 %i.0234, i32 0, i32 7
  %20 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %capabilities, align 4
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call27, i32 0, i32 3
  %call60 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %bus_cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body68, label %do.end65

do.end65:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #15
  call void @of_node_put(ptr noundef nonnull %call31) #12
  br label %cleanup.thread

do.body68:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpif_capture_get_pdata, %if.then80)) #12
          to label %do.end84 [label %if.then80], !srcloc !266

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bus_width, align 4
  %conv = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpif_capture_get_pdata.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull %call27, i32 noundef %conv) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %do.body68
  %23 = ptrtoint ptr %bus85 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus85, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  br i1 %tobool88.not, label %do.end84.if.end90_crit_edge, label %if.then89

do.end84.if.end90_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then89:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  %hd_pol = getelementptr inbounds %struct.vpif_interface, ptr %arrayidx43, i32 0, i32 1
  %25 = ptrtoint ptr %hd_pol to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %hd_pol, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hd_pol, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %do.end84.if.end90_crit_edge
  %and91 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.do.body99_crit_edge, label %if.then93

if.end90.do.body99_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %vd_pol = getelementptr inbounds %struct.vpif_interface, ptr %arrayidx43, i32 0, i32 1
  %26 = ptrtoint ptr %vd_pol to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load95 = load i8, ptr %vd_pol, align 4
  %bf.set97 = or i8 %bf.load95, 64
  store i8 %bf.set97, ptr %vd_pol, align 4
  br label %do.body99

do.body99:                                        ; preds = %if.then93, %if.end90.do.body99_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpif_capture_get_pdata, %if.then111)) #12
          to label %do.end115 [label %if.then111], !srcloc !266

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpif_capture_get_pdata.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %call31) #12
  br label %do.end115

do.end115:                                        ; preds = %if.then111, %do.body99
  %full_name = getelementptr inbounds %struct.device_node, ptr %call31, i32 0, i32 2
  %27 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %full_name, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx, align 4
  %fwnode120 = getelementptr inbounds %struct.device_node, ptr %call31, i32 0, i32 3
  %call124 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3), ptr noundef %fwnode120, i32 noundef 28) #12
  %arrayidx125 = getelementptr %struct.vpif_capture_config, ptr %call.i, i32 0, i32 7, i32 %i.0234
  %30 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call124, ptr %arrayidx125, align 4
  %cmp.i = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end115.err_cleanup_crit_edge, label %for.inc

do.end115.err_cleanup_crit_edge:                  ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup

cleanup.thread:                                   ; preds = %do.end65, %if.then38, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #12
  br label %done

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #12
  br label %done

for.inc:                                          ; preds = %do.end115
  call void @of_node_put(ptr noundef nonnull %call31) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

done:                                             ; preds = %for.inc.done_crit_edge, %cleanup, %cleanup.thread
  %i.0226 = phi i32 [ %i.0234, %cleanup ], [ %i.0234, %cleanup.thread ], [ 2, %for.inc.done_crit_edge ]
  call void @of_node_put(ptr noundef %call27) #12
  %asd_sizes = getelementptr inbounds %struct.vpif_capture_config, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %asd_sizes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.0226, ptr %asd_sizes, align 4
  %subdev_count = getelementptr inbounds %struct.vpif_capture_config, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %subdev_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0226, ptr %subdev_count, align 4
  %card_name = getelementptr inbounds %struct.vpif_capture_config, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.29, ptr %card_name, align 4
  br label %cleanup135

err_cleanup:                                      ; preds = %do.end115.err_cleanup_crit_edge, %if.end41.err_cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #12
  call void @of_node_put(ptr noundef nonnull %call31) #12
  call void @of_node_put(ptr noundef nonnull %call27) #12
  call void @v4l2_async_nf_cleanup(ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 3)) #12
  br label %cleanup135

cleanup135:                                       ; preds = %err_cleanup, %done, %if.end18.cleanup135_crit_edge, %if.end14.cleanup135_crit_edge, %if.then12
  %retval.0 = phi ptr [ null, %err_cleanup ], [ %call.i, %done ], [ %8, %if.then12 ], [ null, %if.end14.cleanup135_crit_edge ], [ null, %if.end18.cleanup135_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ugt i32 %1, 3
  br i1 %2, label %entry.cleanup_crit_edge, label %vpif_intr_status.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vpif_intr_status.exit:                            ; preds = %entry
  %shl.i = shl nuw nsw i32 1, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !267
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  %and.i = and i32 %5, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #12, !srcloc !270
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
  %channel_id35 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 3
  %irqlock60 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 5
  %dma_queue61 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 4
  %next_frm66 = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %frm_fmt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frm_fmt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp4 = icmp eq i8 %11, 1
  br i1 %cmp4, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %field = getelementptr inbounds %struct.channel_obj, ptr %9, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7 = icmp eq i32 %13, 1
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %if.else

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %irqlock60) #12
  %14 = ptrtoint ptr %dma_queue61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dma_queue61, align 4
  %cmp.i.not = icmp eq ptr %15, %dma_queue61
  tail call void @_raw_spin_unlock(ptr noundef %irqlock60) #12
  br i1 %cmp.i.not, label %if.then9.cleanup_crit_edge, label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i64 @ktime_get() #12
  %18 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common2, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %21 = load ptr, ptr %common2, align 4
  tail call void @vb2_buffer_done(ptr noundef %21, i32 noundef 5) #12
  %22 = ptrtoint ptr %next_frm66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_frm66, align 4
  %24 = ptrtoint ptr %common2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %common2, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx26, align 1
  tail call fastcc void @vpif_schedule_next_buffer(ptr noundef %common2)
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx26, align 1
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool27.not = icmp eq i8 %28, 0
  br i1 %tobool27.not, label %if.then34, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx26, align 1
  br label %cleanup

if.then34:                                        ; preds = %if.else
  %30 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %field_id, align 8
  %xor = xor i32 %31, 1
  store i32 %xor, ptr %field_id, align 8
  %32 = ptrtoint ptr %channel_id35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_id35, align 8
  %conv36 = trunc i32 %33 to i8
  %call37 = tail call i32 @vpif_channel_getfid(i8 noundef zeroext %conv36) #12
  %34 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %field_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %35)
  %cmp39.not = icmp eq i32 %call37, %35
  br i1 %cmp39.not, label %if.end48, label %if.then41

if.then41:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp42 = icmp eq i32 %call37, 0
  br i1 %cmp42, label %if.then44, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %field_id, align 8
  br label %cleanup

if.end48:                                         ; preds = %if.then34
  %37 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call37, label %if.end48.cleanup_crit_edge [
    i32 0, label %if.then51
    i32 1, label %if.then59
  ]

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  %38 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %common2, align 4
  %40 = ptrtoint ptr %next_frm66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next_frm66, align 4
  %cmp52 = icmp eq ptr %39, %41
  br i1 %cmp52, label %if.then51.cleanup_crit_edge, label %if.end55

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i120 = tail call i64 @ktime_get() #12
  %42 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %common2, align 4
  %timestamp.i121 = getelementptr inbounds %struct.vb2_buffer, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %timestamp.i121 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i.i120, ptr %timestamp.i121, align 8
  %45 = load ptr, ptr %common2, align 4
  tail call void @vb2_buffer_done(ptr noundef %45, i32 noundef 5) #12
  %46 = ptrtoint ptr %next_frm66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next_frm66, align 4
  %48 = ptrtoint ptr %common2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %common2, align 4
  br label %cleanup

if.then59:                                        ; preds = %if.end48
  tail call void @_raw_spin_lock(ptr noundef %irqlock60) #12
  %49 = ptrtoint ptr %dma_queue61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %dma_queue61, align 4
  %cmp.i123.not = icmp eq ptr %50, %dma_queue61
  br i1 %cmp.i123.not, label %if.then59.if.then69_crit_edge, label %lor.lhs.false64

if.then59.if.then69_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

lor.lhs.false64:                                  ; preds = %if.then59
  %51 = ptrtoint ptr %common2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %common2, align 4
  %53 = ptrtoint ptr %next_frm66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next_frm66, align 4
  %cmp67.not = icmp eq ptr %52, %54
  br i1 %cmp67.not, label %if.end71, label %lor.lhs.false64.if.then69_crit_edge

lor.lhs.false64.if.then69_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false64.if.then69_crit_edge, %if.then59.if.then69_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irqlock60) #12
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %irqlock60) #12
  tail call fastcc void @vpif_schedule_next_buffer(ptr noundef %common2)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then69, %if.end55, %if.then51.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then44, %if.then41.cleanup_crit_edge, %if.then28, %if.end20, %if.then9.cleanup_crit_edge, %vpif_intr_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vpif_intr_status.exit.cleanup_crit_edge ], [ 1, %if.then44 ], [ 1, %if.then41.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %if.then69 ], [ 1, %if.then51.cleanup_crit_edge ], [ 1, %if.end55 ], [ 1, %if.end71 ], [ 1, %if.end20 ], [ 1, %if.end48.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpif_probe_complete() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 0), align 4
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %channel_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %channel_id, align 8
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.30, ptr noundef nonnull @vpif_probe_complete.__key, i16 noundef signext 3) #12
  %lock = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @vpif_probe_complete.__key.31) #12
  %2 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %call6 = tail call fastcc i32 @vpif_set_input(ptr noundef %2, ptr noundef %0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %stdid to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 63744, ptr %stdid, align 8
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 8, i32 2
  %4 = call ptr @memset(ptr %dv_timings, i32 0, i32 132)
  %fmt = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %fmt, align 4
  %call8 = tail call fastcc i32 @vpif_update_std_info(ptr noundef %0)
  %buffer_queue = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3
  %6 = ptrtoint ptr %buffer_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %buffer_queue, align 4
  %io_modes = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 10
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %min_buffers_needed, align 4
  %lock11 = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock11, align 4
  %15 = load ptr, ptr @vpif_dev, align 4
  %dev = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev, align 4
  %call12 = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %probe_out.thread114

probe_out.thread114:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call18117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 4
  %17 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.channel_obj, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dma_queue, ptr %prev.i, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 12
  %call20 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %release = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 23
  %19 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @video_device_release_empty, ptr %release, align 8
  %fops = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 3
  %20 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vpif_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 24
  %21 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vpif_ioctl_ops, ptr %ioctl_ops, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 7
  %22 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vpif_obj, ptr %v4l2_dev, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 14
  %23 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %vfl_dir, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 10
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer_queue, ptr %queue, align 8
  %lock22 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 26
  %25 = ptrtoint ptr %lock22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock, ptr %lock22, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 4
  %26 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 67108865, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %0, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %for.inc, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end19
  %28 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 1), align 4
  %channel_id.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %channel_id.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %channel_id.1, align 8
  %irqlock.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock.1, ptr noundef nonnull @.str.30, ptr noundef nonnull @vpif_probe_complete.__key, i16 noundef signext 3) #12
  %lock.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock.1, ptr noundef nonnull @.str.32, ptr noundef nonnull @vpif_probe_complete.__key.31) #12
  %30 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %call6.1 = tail call fastcc i32 @vpif_set_input(ptr noundef %30, ptr noundef %28, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.body36_crit_edge

for.inc.for.body36_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

if.end.1:                                         ; preds = %for.inc
  %stdid.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %stdid.1 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 63744, ptr %stdid.1, align 8
  %dv_timings.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 8, i32 2
  %32 = call ptr @memset(ptr %dv_timings.1, i32 0, i32 132)
  %fmt.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 2
  %33 = ptrtoint ptr %fmt.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %fmt.1, align 4
  %call8.1 = tail call fastcc i32 @vpif_update_std_info(ptr noundef %28)
  %buffer_queue.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3
  %34 = ptrtoint ptr %buffer_queue.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %buffer_queue.1, align 4
  %io_modes.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %io_modes.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 19, ptr %io_modes.1, align 4
  %drv_priv.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 10
  %36 = ptrtoint ptr %drv_priv.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %drv_priv.1, align 4
  %ops.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 7
  %37 = ptrtoint ptr %ops.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @video_qops, ptr %ops.1, align 4
  %mem_ops.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %mem_ops.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.1, align 4
  %buf_struct_size.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 12
  %39 = ptrtoint ptr %buf_struct_size.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 744, ptr %buf_struct_size.1, align 4
  %timestamp_flags.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %timestamp_flags.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8192, ptr %timestamp_flags.1, align 4
  %min_buffers_needed.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 15
  %41 = ptrtoint ptr %min_buffers_needed.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %min_buffers_needed.1, align 4
  %lock11.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %lock11.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %lock.1, ptr %lock11.1, align 4
  %43 = load ptr, ptr @vpif_dev, align 4
  %dev.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %dev.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %dev.1, align 4
  %call12.1 = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %if.end19.1, label %probe_out

if.end19.1:                                       ; preds = %if.end.1
  %dma_queue.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 4
  %45 = ptrtoint ptr %dma_queue.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %dma_queue.1, ptr %dma_queue.1, align 4
  %prev.i.1 = getelementptr inbounds %struct.channel_obj, ptr %28, i32 0, i32 7, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dma_queue.1, ptr %prev.i.1, align 4
  %name.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 12
  %call20.1 = tail call i32 @strscpy(ptr noundef %name.1, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %release.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 23
  %47 = ptrtoint ptr %release.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @video_device_release_empty, ptr %release.1, align 8
  %fops.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 3
  %48 = ptrtoint ptr %fops.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @vpif_fops, ptr %fops.1, align 4
  %ioctl_ops.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 24
  %49 = ptrtoint ptr %ioctl_ops.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @vpif_ioctl_ops, ptr %ioctl_ops.1, align 4
  %v4l2_dev.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 7
  %50 = ptrtoint ptr %v4l2_dev.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vpif_obj, ptr %v4l2_dev.1, align 4
  %vfl_dir.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 14
  %51 = ptrtoint ptr %vfl_dir.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %vfl_dir.1, align 4
  %queue.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 10
  %52 = ptrtoint ptr %queue.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buffer_queue.1, ptr %queue.1, align 8
  %lock22.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 26
  %53 = ptrtoint ptr %lock22.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %lock.1, ptr %lock22.1, align 8
  %device_caps.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 4
  %54 = ptrtoint ptr %device_caps.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108865, ptr %device_caps.1, align 8
  %driver_data.i.i.1 = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 5, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %28, ptr %driver_data.i.i.1, align 4
  %call.i.1 = tail call i32 @__video_register_device(ptr noundef %28, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool26.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool26.not.1, label %for.inc.1, label %if.end19.1.for.body36_crit_edge

if.end19.1.for.body36_crit_edge:                  ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

for.inc.1:                                        ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

probe_out:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %for.body36

for.body36:                                       ; preds = %probe_out, %if.end19.1.for.body36_crit_edge, %for.inc.for.body36_crit_edge
  %err.0113 = phi i32 [ %call12.1, %probe_out ], [ %call.i.1, %if.end19.1.for.body36_crit_edge ], [ %call6.1, %for.inc.for.body36_crit_edge ]
  %56 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 1), align 4
  tail call void @video_unregister_device(ptr noundef %56) #12
  br label %cleanup

cleanup:                                          ; preds = %for.body36, %for.inc.1, %if.end19.cleanup_crit_edge, %probe_out.thread114, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.1 ], [ %call12, %probe_out.thread114 ], [ %call.i, %if.end19.cleanup_crit_edge ], [ %call6, %entry.cleanup_crit_edge ], [ %err.0113, %for.body36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpif_schedule_next_buffer(ptr noundef %common) unnamed_addr #2 align 64 {
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
  %set_addr = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 7
  %15 = ptrtoint ptr %set_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_addr, align 4
  %ytop_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 8
  %17 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ytop_off, align 4
  %add = add i32 %18, %14
  %ybtm_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 9
  %19 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ybtm_off, align 4
  %add4 = add i32 %20, %14
  %ctop_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 10
  %21 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctop_off, align 4
  %add5 = add i32 %22, %14
  %cbtm_off = getelementptr inbounds %struct.common_obj, ptr %common, i32 0, i32 11
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
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpif_set_input(ptr noundef readonly %vpif_cfg, ptr nocapture noundef %ch, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 3
  %0 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_id, align 8
  %arrayidx = getelementptr %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 2, i32 %1
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp sgt i32 %2, 1
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %do.end3.i.cleanup_crit_edge, label %if.end5.i

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %do.end3.i
  %input_count.i = getelementptr %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 2, i32 %1, i32 2
  %3 = ptrtoint ptr %input_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %index)
  %cmp6.not.i = icmp sgt i32 %4, %index
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  %inputs.i = getelementptr %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 2, i32 %1, i32 1
  %5 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inputs.i, align 4
  %subdev_name9.i = getelementptr %struct.vpif_input, ptr %6, i32 %index, i32 1
  %7 = ptrtoint ptr %subdev_name9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdev_name9.i, align 8
  %tobool10.not.i = icmp eq ptr %8, null
  br i1 %tobool10.not.i, label %if.end8.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end8.i
  %subdev_count.i = getelementptr inbounds %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %subdev_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %subdev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1332.i = icmp sgt i32 %10, 0
  br i1 %cmp1332.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %subdev_info14.i = getelementptr inbounds %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 3
  %11 = ptrtoint ptr %subdev_info14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdev_info14.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.vpif_subdev_info, ptr %12, i32 %i.033.i
  %tobool16.not.i = icmp eq ptr %arrayidx15.i, null
  br i1 %tobool16.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15.i, align 4
  %call17.i = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.i
  %15 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx1 = getelementptr ptr, ptr %15, i32 %i.033.i
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then.if.end68_crit_edge, label %land.lhs.true

if.then.if.end68_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true:                                    ; preds = %if.then
  %setup_input_path = getelementptr inbounds %struct.vpif_capture_config, ptr %vpif_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %setup_input_path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup_input_path, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %land.lhs.true.if.then22_crit_edge, label %if.then5

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then5:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_id, align 8
  %call8 = tail call i32 %19(i32 noundef %21, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body, label %if.then5.if.then22_crit_edge

if.then5.if.then22_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

do.body:                                          ; preds = %if.then5
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp11 = icmp sgt i32 %22, 0
  br i1 %cmp11, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx15.i, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), ptr noundef %24, i32 noundef %index) #15
  br label %cleanup

if.then22:                                        ; preds = %if.then5.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %25 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inputs.i, align 4
  %input_route = getelementptr %struct.vpif_input, ptr %26, i32 %index, i32 2
  %27 = ptrtoint ptr %input_route to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %input_route, align 4
  %output_route = getelementptr %struct.vpif_input, ptr %26, i32 %index, i32 3
  %29 = ptrtoint ptr %output_route to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %output_route, align 8
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video, align 4
  %tobool29.not = icmp eq ptr %34, null
  br i1 %tobool29.not, label %if.then22.if.end68_crit_edge, label %land.lhs.true30

if.then22.if.end68_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true30:                                  ; preds = %if.then22
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool33.not = icmp eq ptr %36, null
  br i1 %tobool33.not, label %land.lhs.true30.if.end68_crit_edge, label %if.else35

land.lhs.true30.if.end68_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.else35:                                        ; preds = %land.lhs.true30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool36.not = icmp eq ptr %37, null
  br i1 %tobool36.not, label %if.else35.if.else43_crit_edge, label %land.lhs.true37

if.else35.if.else43_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else35
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool39.not = icmp eq ptr %39, null
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
  %.sink = phi ptr [ %36, %if.else43 ], [ %39, %land.lhs.true37.if.end50_crit_edge ]
  %call47 = tail call i32 %.sink(ptr noundef nonnull %17, i32 noundef %28, i32 noundef %30, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp52 = icmp sgt i32 %call47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call47)
  %cmp54.not = icmp eq i32 %call47, -515
  %or.cond = or i1 %cmp52, %cmp54.not
  br i1 %or.cond, label %if.end50.if.end68_crit_edge, label %do.body56

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.body56:                                        ; preds = %if.end50
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp57 = icmp sgt i32 %40, 0
  br i1 %cmp57, label %do.end61, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end68:                                         ; preds = %if.end50.if.end68_crit_edge, %land.lhs.true30.if.end68_crit_edge, %if.then22.if.end68_crit_edge, %if.then.if.end68_crit_edge
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 4
  %41 = ptrtoint ptr %input_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %index, ptr %input_idx, align 4
  %sd69 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 5
  %42 = ptrtoint ptr %sd69 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %17, ptr %sd69, align 8
  %vpifparams = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %vpifparams to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %vpifparams, align 8
  %46 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inputs.i, align 4
  %std = getelementptr %struct.vpif_input, ptr %47, i32 %index, i32 0, i32 5
  %48 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %std, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %ch, i32 0, i32 22
  %50 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %tvnorms, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end61, %do.body56.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %do.end3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68 ], [ %call8, %do.end ], [ %call8, %do.body.cleanup_crit_edge ], [ %call47, %do.end61 ], [ %call47, %do.body56.cleanup_crit_edge ], [ 0, %do.end3.i.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpif_update_std_info(ptr noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vpifparams2 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6
  %std_info3 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2
  %fmt = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2
  %fmt4 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %1 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end7.if.end34_crit_edge, label %land.lhs.true

do.end7.if.end34_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end7
  %height = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end34_crit_edge, label %if.then9

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then9:                                         ; preds = %land.lhs.true
  %field = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.then13, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9.if.end15_crit_edge
  %8 = ptrtoint ptr %vpifparams2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vpifparams2, align 8
  %pixelformat = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %10, label %if.end15.if.end34_crit_edge [
    i32 808534338, label %if.end15.if.then20_crit_edge
    i32 825770306, label %if.end15.if.then20_crit_edge227
  ]

if.end15.if.then20_crit_edge227:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then20:                                        ; preds = %if.end15.if.then20_crit_edge, %if.end15.if.then20_crit_edge227
  %12 = ptrtoint ptr %vpifparams2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %vpifparams2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 808534338, i32 %10)
  %cmp25 = icmp eq i32 %10, 808534338
  br i1 %cmp25, label %if.then26, label %if.then20.if.then31_crit_edge

if.then20.if.then31_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %params = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %params, align 8
  br label %if.then31

if.then31:                                        ; preds = %if.then26, %if.then20.if.then31_crit_edge
  %14 = call ptr @memset(ptr %std_info3, i32 0, i32 208)
  %capture_format = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 14
  %15 = ptrtoint ptr %capture_format to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %capture_format, align 2
  br label %cleanup

if.end34:                                         ; preds = %if.end15.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %do.end7.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_ch_params_count to i32))
  %16 = load i32, ptr @vpif_ch_params_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp35211.not = icmp eq i32 %16, 0
  br i1 %cmp35211.not, label %if.end34.for.end_crit_edge, label %for.body.lr.ph

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end34
  %dv_timings68 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 8, i32 2
  %stdid52 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %hd_sd = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %index.0212, i32 16
  %17 = ptrtoint ptr %hd_sd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hd_sd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp37 = icmp eq i8 %18, 0
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp41 = icmp sgt i32 %19, 1
  br i1 %cmp37, label %do.body40, label %do.body56

do.body40:                                        ; preds = %for.body
  br i1 %cmp41, label %do.end46, label %do.body40.do.end51_crit_edge

do.body40.do.end51_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end51

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end51

do.end51:                                         ; preds = %do.end46, %do.body40.do.end51_crit_edge
  %stdid = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %index.0212, i32 17
  %20 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stdid, align 8
  %22 = ptrtoint ptr %stdid52 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stdid52, align 8
  %and = and i64 %23, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool53.not = icmp eq i64 %and, 0
  br i1 %tobool53.not, label %do.end51.for.inc_crit_edge, label %do.end51.for.end.sink.split_crit_edge

do.end51.for.end.sink.split_crit_edge:            ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

do.end51.for.inc_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body56:                                        ; preds = %for.body
  br i1 %cmp41, label %do.end62, label %do.body56.do.end67_crit_edge

do.body56.do.end67_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %do.body56.do.end67_crit_edge
  %dv_timings = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %index.0212, i32 18
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(132) %dv_timings, ptr noundef dereferenceable(132) %dv_timings68, i32 132) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool70.not = icmp eq i32 %bcmp, 0
  br i1 %tobool70.not, label %do.end67.for.end.sink.split_crit_edge, label %do.end67.for.inc_crit_edge

do.end67.for.inc_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end67.for.end.sink.split_crit_edge:            ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

for.inc:                                          ; preds = %do.end67.for.inc_crit_edge, %do.end51.for.inc_crit_edge
  %inc = add nuw i32 %index.0212, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.sink.split:                               ; preds = %do.end67.for.end.sink.split_crit_edge, %do.end51.for.end.sink.split_crit_edge
  %arrayidx36.le209 = getelementptr [0 x %struct.vpif_channel_config_params], ptr @vpif_ch_params, i32 0, i32 %index.0212
  %24 = call ptr @memcpy(ptr %std_info3, ptr %arrayidx36.le209, i32 208)
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %if.end34.for.end_crit_edge
  %index.0206 = phi i32 [ 0, %if.end34.for.end_crit_edge ], [ %index.0212, %for.end.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0206, i32 %16)
  %cmp74 = icmp eq i32 %index.0206, %16
  br i1 %cmp74, label %for.end.cleanup_crit_edge, label %if.end77

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %width78 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 1
  %25 = ptrtoint ptr %width78 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %width78, align 2
  %conv79 = zext i16 %26 to i32
  %27 = ptrtoint ptr %fmt4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv79, ptr %fmt4, align 4
  %width85 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 12
  %28 = ptrtoint ptr %width85 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv79, ptr %width85, align 4
  %height86 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 2
  %29 = ptrtoint ptr %height86 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %height86, align 8
  %conv87 = zext i16 %30 to i32
  %height90 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %height90 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv87, ptr %height90, align 4
  %height93 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 13
  %32 = ptrtoint ptr %height93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv87, ptr %height93, align 4
  %mul = shl nuw nsw i32 %conv79, 1
  %mul96 = mul i32 %mul, %conv87
  %sizeimage = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul96, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv79, ptr %bytesperline, align 4
  %video_params = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 1
  %hpitch = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 1, i32 1
  %35 = ptrtoint ptr %hpitch to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv79, ptr %hpitch, align 4
  %frm_fmt = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 6, i32 2, i32 3
  %36 = ptrtoint ptr %frm_fmt to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %frm_fmt, align 2
  %38 = ptrtoint ptr %video_params to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %video_params, align 8
  %stdid106 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %stdid106 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %stdid106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool107.not = icmp eq i64 %40, 0
  %spec.select = select i1 %tobool107.not, i32 3, i32 1
  %41 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool119.not = icmp eq i8 %37, 0
  %.sink217 = select i1 %tobool119.not, i32 4, i32 1
  %43 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink217, ptr %43, align 4
  %45 = ptrtoint ptr %vpifparams2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vpifparams2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp132 = icmp eq i32 %46, 2
  %.sink218 = select i1 %cmp132, i32 825770306, i32 909203022
  %47 = getelementptr inbounds %struct.channel_obj, ptr %ch, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink218, ptr %47, align 4
  %49 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then31
  %retval.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.end77 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
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
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_buffer_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
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
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end6.if.end13_crit_edge, label %if.then7

do.end6.if.end13_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %do.end6
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp9 = icmp ult i32 %8, %3
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %do.end6.if.end13_crit_edge
  %size.0 = phi i32 [ %3, %do.end6.if.end13_crit_edge ], [ %8, %if.then7.if.end13_crit_edge ]
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %9 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers, align 4
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbuffers, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp14 = icmp ult i32 %add, 3
  br i1 %cmp14, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 3, %10
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  %15 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.0, ptr %sizes, align 4
  %video.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 8
  %field4.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field4.i, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp sgt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %if.end17.do.end7.i_crit_edge

if.end17.do.end7.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end17.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.i = icmp eq i32 %17, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end18.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %frm_fmt.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 3
  %19 = ptrtoint ptr %frm_fmt.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frm_fmt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %..i = select i1 %tobool.not.i, i32 4, i32 1
  %21 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %..i, ptr %video.i, align 8
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizeimage, align 4
  %bytesperline159.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline159.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytesperline159.i, align 4
  br label %if.then28.i

if.end18.i:                                       ; preds = %do.end7.i
  %26 = ptrtoint ptr %field4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field4.i, align 4
  %28 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %video.i, align 8
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sizeimage, align 4
  %bytesperline.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bytesperline.i, align 4
  %33 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %27, label %if.end18.i.if.end58.i_crit_edge [
    i32 1, label %if.end18.i.if.then28.i_crit_edge
    i32 4, label %if.end18.i.if.then28.i_crit_edge29
    i32 5, label %if.then33.i
    i32 6, label %if.then46.i
  ]

if.end18.i.if.then28.i_crit_edge29:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.end18.i.if.then28.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.end18.i.if.end58.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

if.then28.i:                                      ; preds = %if.end18.i.if.then28.i_crit_edge, %if.end18.i.if.then28.i_crit_edge29, %if.then9.i
  %34 = phi i32 [ %25, %if.then9.i ], [ %32, %if.end18.i.if.then28.i_crit_edge ], [ %32, %if.end18.i.if.then28.i_crit_edge29 ]
  %35 = phi i32 [ %23, %if.then9.i ], [ %30, %if.end18.i.if.then28.i_crit_edge ], [ %30, %if.end18.i.if.then28.i_crit_edge29 ]
  %36 = phi i32 [ %..i, %if.then9.i ], [ %27, %if.end18.i.if.then28.i_crit_edge ], [ %27, %if.end18.i.if.then28.i_crit_edge29 ]
  %ytop_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %37 = ptrtoint ptr %ytop_off.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ytop_off.i, align 4
  %ybtm_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %38 = ptrtoint ptr %ybtm_off.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %ybtm_off.i, align 4
  %div157.i = lshr i32 %35, 1
  %ctop_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %39 = ptrtoint ptr %ctop_off.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div157.i, ptr %ctop_off.i, align 4
  %add.i = add i32 %div157.i, %34
  %cbtm_off.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 11
  %40 = ptrtoint ptr %cbtm_off.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %cbtm_off.i, align 4
  br label %if.end58.i

if.then33.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %ytop_off34.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %41 = ptrtoint ptr %ytop_off34.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ytop_off34.i, align 4
  %div35155.i = lshr i32 %30, 2
  %ybtm_off36.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %42 = ptrtoint ptr %ybtm_off36.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div35155.i, ptr %ybtm_off36.i, align 4
  %div37156.i = lshr i32 %30, 1
  %ctop_off38.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %43 = ptrtoint ptr %ctop_off38.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div37156.i, ptr %ctop_off38.i, align 4
  %add41.i = add nuw i32 %div37156.i, %div35155.i
  %cbtm_off42.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 11
  %44 = ptrtoint ptr %cbtm_off42.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add41.i, ptr %cbtm_off42.i, align 4
  br label %if.else65.i

if.then46.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %ybtm_off47.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 9
  %45 = ptrtoint ptr %ybtm_off47.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ybtm_off47.i, align 4
  %div48153.i = lshr i32 %30, 2
  %ytop_off49.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 8
  %46 = ptrtoint ptr %ytop_off49.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div48153.i, ptr %ytop_off49.i, align 4
  %div50154.i = lshr i32 %30, 1
  %cbtm_off51.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 11
  %47 = ptrtoint ptr %cbtm_off51.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div50154.i, ptr %cbtm_off51.i, align 4
  %add54.i = add nuw i32 %div50154.i, %div48153.i
  %ctop_off55.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 10
  %48 = ptrtoint ptr %ctop_off55.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add54.i, ptr %ctop_off55.i, align 4
  br label %if.else65.i

if.end58.i:                                       ; preds = %if.then28.i, %if.end18.i.if.end58.i_crit_edge
  %49 = phi i32 [ %32, %if.end18.i.if.end58.i_crit_edge ], [ %34, %if.then28.i ]
  %50 = phi i32 [ %27, %if.end18.i.if.end58.i_crit_edge ], [ %36, %if.then28.i ]
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %50, label %if.end58.i.if.else65.i_crit_edge [
    i32 1, label %if.end58.i.if.end68.i_crit_edge
    i32 4, label %if.end58.i.if.end68.i_crit_edge30
  ]

if.end58.i.if.end68.i_crit_edge30:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.end58.i.if.else65.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65.i

if.else65.i:                                      ; preds = %if.end58.i.if.else65.i_crit_edge, %if.then46.i, %if.then33.i
  %52 = phi i32 [ %49, %if.end58.i.if.else65.i_crit_edge ], [ %32, %if.then33.i ], [ %32, %if.then46.i ]
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else65.i, %if.end58.i.if.end68.i_crit_edge, %if.end58.i.if.end68.i_crit_edge30
  %.sink.i = phi i8 [ 0, %if.else65.i ], [ 1, %if.end58.i.if.end68.i_crit_edge ], [ 1, %if.end58.i.if.end68.i_crit_edge30 ]
  %53 = phi i32 [ %52, %if.else65.i ], [ %49, %if.end58.i.if.end68.i_crit_edge ], [ %49, %if.end58.i.if.end68.i_crit_edge30 ]
  %video_params66.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %video_params66.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink.i, ptr %video_params66.i, align 8
  %frm_fmt70.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 3
  %55 = ptrtoint ptr %frm_fmt70.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %frm_fmt70.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp71.i = icmp eq i8 %56, 1
  br i1 %cmp71.i, label %if.end68.i.vpif_calculate_offsets.exit_crit_edge, label %if.else79.i

if.end68.i.vpif_calculate_offsets.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_calculate_offsets.exit

if.else79.i:                                      ; preds = %if.end68.i
  %57 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %17, label %if.else79.i.vpif_calculate_offsets.exit_crit_edge [
    i32 4, label %if.else79.i.if.then85.i_crit_edge
    i32 0, label %if.else79.i.if.then85.i_crit_edge31
  ]

if.else79.i.if.then85.i_crit_edge31:              ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85.i

if.else79.i.if.then85.i_crit_edge:                ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85.i

if.else79.i.vpif_calculate_offsets.exit_crit_edge: ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vpif_calculate_offsets.exit

if.then85.i:                                      ; preds = %if.else79.i.if.then85.i_crit_edge, %if.else79.i.if.then85.i_crit_edge31
  %mul.i = shl i32 %53, 1
  br label %vpif_calculate_offsets.exit

vpif_calculate_offsets.exit:                      ; preds = %if.then85.i, %if.else79.i.vpif_calculate_offsets.exit_crit_edge, %if.end68.i.vpif_calculate_offsets.exit_crit_edge
  %mul.sink.i = phi i32 [ %mul.i, %if.then85.i ], [ %53, %if.end68.i.vpif_calculate_offsets.exit_crit_edge ], [ %53, %if.else79.i.vpif_calculate_offsets.exit_crit_edge ]
  %hpitch90.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1, i32 1
  %58 = ptrtoint ptr %hpitch90.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.sink.i, ptr %hpitch90.i, align 4
  %stdid.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 2, i32 17
  %59 = ptrtoint ptr %stdid.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %stdid.i, align 8
  %stdid102.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 6, i32 1, i32 2
  %61 = ptrtoint ptr %stdid102.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %stdid102.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %vpif_calculate_offsets.exit, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vpif_calculate_offsets.exit ], [ -22, %if.then7.cleanup_crit_edge ]
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
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %5 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %do.end5.if.end12_crit_edge, label %if.then.i

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then.i:                                        ; preds = %do.end5
  %sizeimage = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp1.i = icmp ult i32 %10, %8
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.vb2_set_plane_payload.exit_crit_edge

if.then.i.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !271

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %12, %if.then38.i ], [ %8, %if.then.i.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i60 = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i60, label %vb2_set_plane_payload.exit.if.end12_crit_edge, label %vb2_plane_size.exit

vb2_set_plane_payload.exit.if.end12_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

vb2_plane_size.exit:                              ; preds = %vb2_set_plane_payload.exit
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytesused.i, align 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp10 = icmp ugt i32 %16, %18
  br i1 %cmp10, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.if.end12_crit_edge

vb2_plane_size.exit.if.end12_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %vb2_plane_size.exit.if.end12_crit_edge, %vb2_set_plane_payload.exit.if.end12_crit_edge, %do.end5.if.end12_crit_edge
  %field = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field, align 4
  %field15 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %21 = ptrtoint ptr %field15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %field15, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #12
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  %ytop_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 8
  %24 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ytop_off, align 4
  %add = add i32 %25, %23
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %lor.lhs.false, label %if.end12.do.body30_crit_edge

if.end12.do.body30_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

lor.lhs.false:                                    ; preds = %if.end12
  %ybtm_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 9
  %26 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ybtm_off, align 4
  %add18 = add i32 %27, %23
  %and19 = and i32 %add18, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %lor.lhs.false21, label %lor.lhs.false.do.body30_crit_edge

lor.lhs.false.do.body30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %ctop_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 10
  %28 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctop_off, align 4
  %add22 = add i32 %29, %23
  %and23 = and i32 %add22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %lor.lhs.false25, label %lor.lhs.false21.do.body30_crit_edge

lor.lhs.false21.do.body30_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %cbtm_off = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 11
  %30 = ptrtoint ptr %cbtm_off to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cbtm_off, align 4
  %add26 = add i32 %31, %23
  %and27 = and i32 %add26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %lor.lhs.false25.cleanup_crit_edge, label %lor.lhs.false25.do.body30_crit_edge

lor.lhs.false25.do.body30_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body30:                                        ; preds = %lor.lhs.false25.do.body30_crit_edge, %lor.lhs.false21.do.body30_crit_edge, %lor.lhs.false.do.body30_crit_edge, %if.end12.do.body30_crit_edge
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp31 = icmp sgt i32 %32, 0
  br i1 %cmp31, label %do.end35, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.body30.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %do.end35 ], [ -22, %do.body30.cleanup_crit_edge ], [ 0, %lor.lhs.false25.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %field_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field_id, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %ycmux_mode = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2, i32 4
  %8 = ptrtoint ptr %ycmux_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ycmux_mode, align 1
  %conv = zext i8 %9 to i32
  %call3 = tail call i32 %7(i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %if.then
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %do.body.do.body132.sink.split_crit_edge, label %do.body.do.body132_crit_edge

do.body.do.body132_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.body.do.body132.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132.sink.split

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd, align 8
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.end15.if.end60_crit_edge, label %if.else

if.end15.if.end60_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.else:                                          ; preds = %if.end15
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.else.if.end60_crit_edge, label %land.lhs.true

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %land.lhs.true.if.end60_crit_edge, label %if.else23

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %s_stream26 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_stream26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_stream26, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %land.lhs.true25.if.end38_crit_edge
  %.sink = phi ptr [ %18, %if.else31 ], [ %21, %land.lhs.true25.if.end38_crit_edge ]
  %call35 = tail call i32 %.sink(ptr noundef nonnull %12, i32 noundef 1) #12
  %22 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call35, label %do.body48 [
    i32 0, label %if.end38.if.end60_crit_edge
    i32 -515, label %if.end38.if.end60_crit_edge248
    i32 -19, label %if.end38.if.end60_crit_edge249
  ]

if.end38.if.end60_crit_edge249:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end38.if.end60_crit_edge248:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end38.if.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

do.body48:                                        ; preds = %if.end38
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp49 = icmp sgt i32 %23, 0
  br i1 %cmp49, label %do.body48.do.body132.sink.split_crit_edge, label %do.body48.do.body132_crit_edge

do.body48.do.body132_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.body48.do.body132.sink.split_crit_edge:        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132.sink.split

if.end60:                                         ; preds = %if.end38.if.end60_crit_edge, %if.end38.if.end60_crit_edge248, %if.end38.if.end60_crit_edge249, %land.lhs.true.if.end60_crit_edge, %if.else.if.end60_crit_edge, %if.end15.if.end60_crit_edge
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %24 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_id, align 8
  %conv61 = trunc i32 %25 to i8
  %call62 = tail call i32 @vpif_set_video_params(ptr noundef %vpifparams, i8 noundef zeroext %conv61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.body66, label %if.end78

do.body66:                                        ; preds = %if.end60
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp67 = icmp sgt i32 %26, 0
  br i1 %cmp67, label %do.body66.do.body132.sink.split_crit_edge, label %do.body66.do.body132_crit_edge

do.body66.do.body132_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.body66.do.body132.sink.split_crit_edge:        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132.sink.split

if.end78:                                         ; preds = %if.end60
  store i32 %call62, ptr @ycmux_mode, align 4
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp sgt i32 %27, 1
  br i1 %cmp.i, label %do.end.i, label %if.end78.do.end3.i_crit_edge

if.end78.do.end3.i_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end78.do.end3.i_crit_edge
  %28 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp5.i = icmp eq i32 %29, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %set_addr.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 7
  %30 = ptrtoint ptr %set_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ch1_set_videobuf_addr, ptr %set_addr.i, align 4
  br label %vpif_config_addr.exit

if.else.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call62)
  %cmp7.i = icmp eq i32 %call62, 2
  %set_addr9.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 7
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %set_addr9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ch0_set_videobuf_addr_yc_nmux, ptr %set_addr9.i, align 4
  br label %vpif_config_addr.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %set_addr9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ch0_set_videobuf_addr, ptr %set_addr9.i, align 4
  br label %vpif_config_addr.exit

vpif_config_addr.exit:                            ; preds = %if.else10.i, %if.then8.i, %if.then6.i
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 5
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 4
  %33 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 -736
  %next_frm = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 1
  %35 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %next_frm, align 4
  %36 = ptrtoint ptr %common1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %common1, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #12
  br i1 %call.i.i, label %if.end.i.i, label %vpif_config_addr.exit.list_del.exit_crit_edge

vpif_config_addr.exit.list_del.exit_crit_edge:    ; preds = %vpif_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %vpif_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %vpif_config_addr.exit.list_del.exit_crit_edge
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call85) #12
  %45 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %common1, align 4
  %call.i226 = tail call ptr @vb2_plane_cookie(ptr noundef %46, i32 noundef 0) #12
  %47 = ptrtoint ptr %call.i226 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i226, align 4
  %set_addr = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 7
  %49 = ptrtoint ptr %set_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_addr, align 4
  %ytop_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 8
  %51 = ptrtoint ptr %ytop_off to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ytop_off, align 4
  %add = add i32 %52, %48
  %ybtm_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 9
  %53 = ptrtoint ptr %ybtm_off to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ybtm_off, align 4
  %add95 = add i32 %54, %48
  %ctop_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 10
  %55 = ptrtoint ptr %ctop_off to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctop_off, align 4
  %add96 = add i32 %56, %48
  %cbtm_off = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 11
  %57 = ptrtoint ptr %cbtm_off to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cbtm_off, align 4
  %add97 = add i32 %58, %48
  tail call void %50(i32 noundef %add, i32 noundef %add95, i32 noundef %add96, i32 noundef %add97) #12
  %59 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel_id, align 8
  %arrayidx99 = getelementptr [2 x i8], ptr @channel_first_int, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp101 = icmp eq i32 %60, 0
  br i1 %cmp101, label %do.body104, label %list_del.exit.if.end112_crit_edge

list_del.exit.if.end112_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

do.body104:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %62 = load ptr, ptr @vpif_base, align 4
  %add.ptr107 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %64 = or i32 %63, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %65 = load ptr, ptr @vpif_base, align 4
  %add.ptr111 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %64) #12, !srcloc !270
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %66 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %66, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %68 = or i32 %67, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %69 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %68) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %70 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %70, i32 36
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  %72 = or i32 %71, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %73 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %73, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %72) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %74 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %74, i32 32
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  %76 = or i32 %75, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %77 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i = getelementptr i8, ptr %77, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %76) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %78 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i = getelementptr i8, ptr %78, i32 36
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !279
  %80 = or i32 %79, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %81 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %81, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %80) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %82 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %84 = or i32 %83, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %85 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %84) #12, !srcloc !270
  %86 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end112

if.end112:                                        ; preds = %do.body104, %list_del.exit.if.end112_crit_edge
  %87 = phi i32 [ %.pr, %do.body104 ], [ %60, %list_del.exit.if.end112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp114 = icmp eq i32 %87, 1
  br i1 %cmp114, label %if.end112.do.body119_crit_edge, label %lor.lhs.false

if.end112.do.body119_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119

lor.lhs.false:                                    ; preds = %if.end112
  %88 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp116 = icmp eq i32 %88, 2
  br i1 %cmp116, label %lor.lhs.false.do.body119_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body119_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119

do.body119:                                       ; preds = %lor.lhs.false.do.body119_crit_edge, %if.end112.do.body119_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !280
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %89 = load ptr, ptr @vpif_base, align 4
  %add.ptr124 = getelementptr i8, ptr %89, i32 8
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !281
  %91 = or i32 %90, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %92 = load ptr, ptr @vpif_base, align 4
  %add.ptr129 = getelementptr i8, ptr %92, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %91) #12, !srcloc !270
  %call2.i227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %93 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i228 = getelementptr i8, ptr %93, i32 32
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i228) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %95 = or i32 %94, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %96 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i229 = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i229, i32 %95) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %97 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i230 = getelementptr i8, ptr %97, i32 36
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i230) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  %99 = or i32 %98, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %100 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i231 = getelementptr i8, ptr %100, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i231, i32 %99) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %101 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i232 = getelementptr i8, ptr %101, i32 32
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i232) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !285
  %103 = or i32 %102, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %104 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i233 = getelementptr i8, ptr %104, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i233, i32 %103) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !286
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %105 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i234 = getelementptr i8, ptr %105, i32 36
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i234) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !287
  %107 = or i32 %106, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %108 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i235 = getelementptr i8, ptr %108, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i235, i32 %107) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i227) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %109 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i236 = getelementptr i8, ptr %109, i32 8
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i236) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %111 = or i32 %110, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %112 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i237 = getelementptr i8, ptr %112, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i237, i32 %111) #12, !srcloc !270
  br label %cleanup

do.body132.sink.split:                            ; preds = %do.body66.do.body132.sink.split_crit_edge, %do.body48.do.body132.sink.split_crit_edge, %do.body.do.body132.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.63, %do.body.do.body132.sink.split_crit_edge ], [ @.str.66, %do.body48.do.body132.sink.split_crit_edge ], [ @.str.69, %do.body66.do.body132.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call3, %do.body.do.body132.sink.split_crit_edge ], [ %call35, %do.body48.do.body132.sink.split_crit_edge ], [ %call62, %do.body66.do.body132.sink.split_crit_edge ]
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.69.sink, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.body132

do.body132:                                       ; preds = %do.body132.sink.split, %do.body66.do.body132_crit_edge, %do.body48.do.body132_crit_edge, %do.body.do.body132_crit_edge
  %ret.0 = phi i32 [ %call3, %do.body.do.body132_crit_edge ], [ %call35, %do.body48.do.body132_crit_edge ], [ %call62, %do.body66.do.body132_crit_edge ], [ %ret.0.ph, %do.body132.sink.split ]
  %irqlock138 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 5
  %call140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock138) #12
  %dma_queue146 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 4
  %113 = ptrtoint ptr %dma_queue146 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_queue146, align 4
  %cmp157.not245 = icmp eq ptr %114, %dma_queue146
  br i1 %cmp157.not245, label %do.body132.for.end_crit_edge, label %do.body132.for.body_crit_edge

do.body132.for.body_crit_edge:                    ; preds = %do.body132
  br label %for.body

do.body132.for.end_crit_edge:                     ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit243.for.body_crit_edge, %do.body132.for.body_crit_edge
  %.pn.in246 = phi ptr [ %.pn, %list_del.exit243.for.body_crit_edge ], [ %114, %do.body132.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in246, i32 -736
  %115 = ptrtoint ptr %.pn.in246 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn = load ptr, ptr %.pn.in246, align 8
  %call.i.i238 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in246) #12
  br i1 %call.i.i238, label %if.end.i.i241, label %for.body.list_del.exit243_crit_edge

for.body.list_del.exit243_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit243

if.end.i.i241:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i239 = getelementptr inbounds %struct.list_head, ptr %.pn.in246, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i239 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i239, align 4
  %118 = ptrtoint ptr %.pn.in246 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %.pn.in246, align 4
  %prev1.i.i.i240 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i240 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i240, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit243

list_del.exit243:                                 ; preds = %if.end.i.i241, %for.body.list_del.exit243_crit_edge
  %122 = ptrtoint ptr %.pn.in246 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in246, align 4
  %prev.i242 = getelementptr inbounds %struct.list_head, ptr %.pn.in246, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i242, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #12
  %cmp157.not = icmp eq ptr %.pn, %dma_queue146
  br i1 %cmp157.not, label %list_del.exit243.for.end_crit_edge, label %list_del.exit243.for.body_crit_edge

list_del.exit243.for.body_crit_edge:              ; preds = %list_del.exit243
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit243.for.end_crit_edge:               ; preds = %list_del.exit243
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit243.for.end_crit_edge, %do.body132.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock138, i32 noundef %call140) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body119, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %do.body119 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 3
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
  %add.ptr7.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %6 = and i32 %5, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %6) #12, !srcloc !270
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %8 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %10 = and i32 %9, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %11 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %10) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %12 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  %14 = or i32 %13, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %15 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %14) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %16 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = phi i32 [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp3 = icmp eq i32 %17, 1
  br i1 %cmp3, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp4 = icmp eq i32 %18, 2
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %19 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i111 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i111) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %21 = and i32 %20, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %22 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i112 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i112, i32 %21) #12, !srcloc !270
  %call2.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %23 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i114 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i114) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %25 = and i32 %24, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %26 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i115 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i115, i32 %25) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %27 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i116 = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i116) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  %29 = or i32 %28, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %30 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i117 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i117, i32 %29) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i113) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge
  store i32 0, ptr @ycmux_mode, align 4
  %sd = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %if.end6.if.end43_crit_edge, label %if.else

if.end6.if.end43_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else:                                          ; preds = %if.end6
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %video, align 4
  %tobool8.not = icmp eq ptr %36, null
  br i1 %tobool8.not, label %if.else.if.end43_crit_edge, label %land.lhs.true

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_stream, align 4
  %tobool11.not = icmp eq ptr %38, null
  br i1 %tobool11.not, label %land.lhs.true.if.end43_crit_edge, label %if.else13

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool14.not = icmp eq ptr %39, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %s_stream16 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %s_stream16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_stream16, align 4
  %tobool17.not = icmp eq ptr %41, null
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
  %.sink = phi ptr [ %38, %if.else21 ], [ %41, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = tail call i32 %.sink(ptr noundef nonnull %32, i32 noundef 0) #12
  %42 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %call25, label %do.body [
    i32 0, label %if.end28.if.end43_crit_edge
    i32 -515, label %if.end28.if.end43_crit_edge121
    i32 -19, label %if.end28.if.end43_crit_edge122
  ]

if.end28.if.end43_crit_edge122:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end28.if.end43_crit_edge121:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.body:                                          ; preds = %if.end28
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp35 = icmp sgt i32 %43, 0
  br i1 %cmp35, label %do.end, label %do.body.if.end43_crit_edge

do.body.if.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %if.end43

if.end43:                                         ; preds = %do.end, %do.body.if.end43_crit_edge, %if.end28.if.end43_crit_edge, %if.end28.if.end43_crit_edge121, %if.end28.if.end43_crit_edge122, %land.lhs.true.if.end43_crit_edge, %if.else.if.end43_crit_edge, %if.end6.if.end43_crit_edge
  %44 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %common1, align 4
  %next_frm = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 1
  %46 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next_frm, align 4
  %cmp44 = icmp eq ptr %45, %47
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef %45, i32 noundef 6) #12
  br label %do.body64

if.else47:                                        ; preds = %if.end43
  %tobool49.not = icmp eq ptr %45, null
  br i1 %tobool49.not, label %if.else47.if.end54_crit_edge, label %if.then50

if.else47.if.end54_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %45, i32 noundef 6) #12
  %48 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr119 = load ptr, ptr %next_frm, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else47.if.end54_crit_edge
  %49 = phi ptr [ %.pr119, %if.then50 ], [ %47, %if.else47.if.end54_crit_edge ]
  %tobool56.not = icmp eq ptr %49, null
  br i1 %tobool56.not, label %if.end54.do.body64_crit_edge, label %if.then57

if.end54.do.body64_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %49, i32 noundef 6) #12
  br label %do.body64

do.body64:                                        ; preds = %if.then57, %if.end54.do.body64_crit_edge, %if.then45
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 5
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 4
  %50 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not120 = icmp eq ptr %51, %dma_queue
  br i1 %cmp.i.not120, label %do.body64.while.end_crit_edge, label %do.body64.while.body_crit_edge

do.body64.while.body_crit_edge:                   ; preds = %do.body64
  br label %while.body

do.body64.while.end_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body64.while.body_crit_edge
  %52 = phi ptr [ %65, %list_del.exit.while.body_crit_edge ], [ %51, %do.body64.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %52, i32 -736
  %53 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %52) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %52, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %62 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %next_frm, align 4
  tail call void @vb2_buffer_done(ptr noundef %63, i32 noundef 6) #12
  %64 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %65, %dma_queue
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body64.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call68) #12
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
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.body9

do.body9:                                         ; preds = %do.end, %entry.do.body9_crit_edge
  %irqlock = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  %list = getelementptr inbounds %struct.vpif_cap_buffer, ptr %vb, i32 0, i32 1
  %dma_queue = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.channel_obj, ptr %3, i32 0, i32 7, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %dma_queue) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail.exit_crit_edge

do.body9.list_add_tail.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dma_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vpif_cap_buffer, ptr %vb, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body9.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpif_set_video_params(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch1_set_videobuf_addr(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !292
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !270
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch0_set_videobuf_addr_yc_nmux(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !299
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !270
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch0_set_videobuf_addr(i32 noundef %top_strt_luma, i32 noundef %btm_strt_luma, i32 noundef %top_strt_chroma, i32 noundef %btm_strt_chroma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %top_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %1 = load ptr, ptr @vpif_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_luma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %3 = load ptr, ptr @vpif_base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %top_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %5 = load ptr, ptr @vpif_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %btm_strt_chroma)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %7 = load ptr, ptr @vpif_base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #12, !srcloc !270
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
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.77, ptr noundef %retval.0.i)
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %card_name = getelementptr inbounds %struct.vpif_capture_config, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_name, align 4
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %vpifparams = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %vpifparams to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vpifparams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp9 = icmp eq i32 %6, 2
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 825770306, ptr %pixelformat, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 909203022, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #12
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt5 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt5, align 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = call ptr @memcpy(ptr %fmt, ptr %fmt5, i32 204)
  %sd = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pad, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fmt, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %get_fmt17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %get_fmt17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_fmt17, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29_crit_edge

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true16.if.end29_crit_edge
  %.sink = phi ptr [ %17, %if.else22 ], [ %20, %land.lhs.true16.if.end29_crit_edge ]
  %call26 = call i32 %.sink(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %format) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end29
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool32.not = icmp eq i32 %22, 0
  br i1 %tobool32.not, label %land.lhs.true31.cleanup_crit_edge, label %if.then33

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true31
  %23 = ptrtoint ptr %format4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format4, align 4
  %25 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fmt3, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %colorspace4.i, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %35, align 4
  %conv.i = zext i16 %37 to i32
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %38, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %40 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %41 to i32
  %quantization6.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %43 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %44 to i32
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %45 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %24, ptr %bytesperline, align 4
  %47 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %22, label %do.end [
    i32 12298, label %if.then36
    i32 8198, label %if.then42
  ]

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 808534338, ptr %pixelformat, align 4
  %mul = shl i32 %24, 1
  %49 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul, ptr %bytesperline, align 4
  br label %if.end50

if.then42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat43 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %pixelformat43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 909203022, ptr %pixelformat43, align 4
  %mul45 = shl i32 %24, 1
  %51 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul45, ptr %bytesperline, align 4
  br label %if.end50

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %52 = load ptr, ptr @vpif_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %22) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.then42, %if.then36
  %53 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesperline, align 4
  %55 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height2.i, align 4
  %mul52 = mul i32 %56, %54
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %57 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul52, ptr %sizeimage, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpif_g_fmt_vid_cap.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpif_g_fmt_vid_cap, %if.then59)) #12
          to label %do.end68 [label %if.then59], !srcloc !266

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %58 = load ptr, ptr @vpif_dev, align 4
  %59 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fmt3, align 4
  %61 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height2.i, align 4
  %63 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bytesperline, align 4
  %pixelformat63 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %pixelformat63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat63, align 4
  %67 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %code, align 4
  %69 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %field3.i, align 4
  %71 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sizeimage, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpif_g_fmt_vid_cap.__UNIQUE_ID_ddebug306, ptr noundef %58, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then59, %if.end50
  %73 = call ptr @memcpy(ptr %fmt5, ptr %fmt, i32 204)
  %call70 = call fastcc i32 @vpif_update_std_info(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %land.lhs.true31.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end68 ], [ 0, %land.lhs.true31.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), ptr noundef nonnull @.str.84) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 3, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end9, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 @vpif_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %fmt)
  %fmt13 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %fmt13, ptr %fmt, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %fmt4 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %fmt4, ptr %fmt, i32 204)
  %call5 = tail call fastcc i32 @vpif_update_std_info(ptr noundef %1)
  %fmt7 = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1
  %field = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field, align 4
  %field8 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %field8, align 4
  %colorspace = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %colorspace, align 4
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %colorspace11, align 4
  %9 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt7, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bytesperline, align 4
  %12 = load i32, ptr %fmt7, align 4
  %13 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height20 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height20, align 4
  %mul = shl i32 %10, 1
  %mul23 = mul i32 %mul, %15
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul23, ptr %sizeimage, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808534338, i32 %19)
  %cmp = icmp eq i32 %19, 808534338
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt7, align 4
  %mul27 = shl i32 %21, 1
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul27, ptr %bytesperline, align 4
  %mul31 = mul i32 %mul27, %15
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul31, ptr %sizeimage, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpif_try_fmt_vid_cap.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpif_try_fmt_vid_cap, %if.then36)) #12
          to label %do.end [label %if.then36], !srcloc !266

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %24 = load ptr, ptr @vpif_dev, align 4
  %25 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt2, align 4
  %27 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height20, align 4
  %29 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytesperline, align 4
  %31 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixelformat, align 4
  %33 = ptrtoint ptr %field8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field8, align 4
  %35 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sizeimage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpif_try_fmt_vid_cap.__UNIQUE_ID_ddebug305, ptr noundef %24, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #12
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  ret i32 0
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
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %7, i32 1
  %8 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input13.sroa_idx = getelementptr %struct.vpif_input, ptr %9, i32 %11, i32 0, i32 7
  %12 = ptrtoint ptr %input.sroa.4.0.input13.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input13.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %input.sroa.4.0.copyload)
  %cmp14.not = icmp eq i32 %input.sroa.4.0.copyload, 4
  br i1 %cmp14.not, label %if.end16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %stdid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stdid, align 8
  %15 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -61, %do.end5.cleanup_crit_edge ], [ -61, %if.end7.cleanup_crit_edge ]
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
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %7, i32 1
  %8 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input15.sroa_idx = getelementptr %struct.vpif_input, ptr %9, i32 %11, i32 0, i32 7
  %12 = ptrtoint ptr %input.sroa.4.0.input15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input15.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %input.sroa.4.0.copyload)
  %cmp16.not = icmp eq i32 %input.sroa.4.0.copyload, 4
  br i1 %cmp16.not, label %if.end18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %13 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %stdid = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %stdid to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %std_id, ptr %stdid, align 8
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %16 = call ptr @memset(ptr %dv_timings, i32 0, i32 132)
  %call23 = tail call fastcc i32 @vpif_update_std_info(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end21
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd, align 8
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.else

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %video34 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %video34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video34, align 4
  %tobool35.not = icmp eq ptr %22, null
  br i1 %tobool35.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_std, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %land.lhs.true.cleanup_crit_edge, label %if.else40

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else40:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %if.else40.if.else48_crit_edge, label %land.lhs.true42

if.else40.if.else48_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48

land.lhs.true42:                                  ; preds = %if.else40
  %s_std43 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %s_std43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_std43, align 4
  %tobool44.not = icmp eq ptr %27, null
  br i1 %tobool44.not, label %land.lhs.true42.if.else48_crit_edge, label %land.lhs.true42.if.end55_crit_edge

land.lhs.true42.if.end55_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true42.if.else48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else48

if.else48:                                        ; preds = %land.lhs.true42.if.else48_crit_edge, %if.else40.if.else48_crit_edge
  br label %if.end55

if.end55:                                         ; preds = %if.else48, %land.lhs.true42.if.end55_crit_edge
  %.sink = phi ptr [ %24, %if.else48 ], [ %27, %land.lhs.true42.if.end55_crit_edge ]
  %call52 = tail call i32 %.sink(ptr noundef nonnull %18, i64 noundef %std_id) #12
  %28 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call52, label %do.body63 [
    i32 0, label %if.end55.cleanup_crit_edge
    i32 -515, label %if.end55.cleanup_crit_edge104
    i32 -19, label %if.end55.cleanup_crit_edge105
  ]

if.end55.cleanup_crit_edge105:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55.cleanup_crit_edge104:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body63:                                        ; preds = %if.end55
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp64 = icmp sgt i32 %29, 0
  br i1 %cmp64, label %do.body63.cleanup.sink.split_crit_edge, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body63.cleanup.sink.split_crit_edge:           ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body63.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge
  %.str.95.sink = phi ptr [ @.str.92, %if.end21.cleanup.sink.split_crit_edge ], [ @.str.95, %do.body63.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.end21.cleanup.sink.split_crit_edge ], [ %call52, %do.body63.cleanup.sink.split_crit_edge ]
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.95.sink, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body63.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end55.cleanup_crit_edge104, %if.end55.cleanup_crit_edge105, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %do.end6.cleanup_crit_edge ], [ -61, %if.end9.cleanup_crit_edge ], [ -16, %if.end18.cleanup_crit_edge ], [ %call52, %do.body63.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge104 ], [ 0, %if.end55.cleanup_crit_edge105 ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %sd = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.else

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %do.end5
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %querystd, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %querystd15 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %querystd15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %querystd15, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %10, %if.else20 ], [ %13, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %4, ptr noundef %std_id) #12
  %14 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call24, label %do.body35 [
    i32 -515, label %if.end27.cleanup_crit_edge
    i32 -19, label %if.end27.cleanup_crit_edge62
    i32 0, label %if.end46
  ]

if.end27.cleanup_crit_edge62:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body35:                                        ; preds = %if.end27
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp sgt i32 %15, 0
  br i1 %cmp36, label %do.end40, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end40, %do.body35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end27.cleanup_crit_edge62, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -61, %if.end27.cleanup_crit_edge ], [ -61, %if.end27.cleanup_crit_edge62 ], [ %call24, %do.end40 ], [ %call24, %do.body35.cleanup_crit_edge ], [ -61, %do.end5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %input) #2 align 64 {
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 8
  %input_count = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 2
  %9 = ptrtoint ptr %input_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 1
  %11 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inputs, align 4
  %arrayidx3 = getelementptr %struct.vpif_input, ptr %12, i32 %8
  %13 = call ptr @memcpy(ptr %input, ptr %arrayidx3, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_idx, align 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %index, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #2 align 64 {
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %input_count = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 2
  %7 = ptrtoint ptr %input_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %index)
  %cmp.not = icmp ugt i32 %8, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call fastcc i32 @vpif_set_input(ptr noundef %2, ptr noundef %4, i32 noundef %index)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
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
  %std_info3 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 6, i32 2
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %5 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %7, i32 1
  %8 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input11.sroa_idx = getelementptr %struct.vpif_input, ptr %9, i32 %11, i32 0, i32 7
  %12 = ptrtoint ptr %input.sroa.4.0.input11.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input11.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %input.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %13 = ptrtoint ptr %timings to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %timings, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not = icmp eq i32 %14, 0
  br i1 %cmp14.not, label %if.end23, label %do.body

do.body:                                          ; preds = %if.end13
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp16 = icmp sgt i32 %15, 1
  br i1 %cmp16, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %num_buffers.i = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 7, i32 0, i32 3, i32 21
  %16 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 0
  br i1 %cmp.i.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 8
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
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.125)
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
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
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
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
  br label %cleanup

if.end97:                                         ; preds = %lor.lhs.false83.if.end97_crit_edge, %land.lhs.true81.if.end97_crit_edge
  %49 = call ptr @memcpy(ptr %dv_timings, ptr %timings, i32 132)
  %hfrontporch99 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 6
  %50 = ptrtoint ptr %hfrontporch99 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %hfrontporch99, align 1
  %hsync100 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 7
  %52 = ptrtoint ptr %hsync100 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %hsync100, align 1
  %add = add i32 %53, %51
  %hbackporch101 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 8
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
  %vsync105 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 10
  %62 = ptrtoint ptr %vsync105 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %vsync105, align 1
  %vbackporch106 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 11
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
  %height110 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %height110 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %height110, align 1
  %vfrontporch111 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 9
  %70 = ptrtoint ptr %vfrontporch111 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %vfrontporch111, align 1
  %il_vfrontporch = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 12
  %72 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 13
  %74 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 14
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
  %interlaced = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2, i32 1, i32 0, i32 2
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
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4)) #15
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
  %call180 = tail call i32 @strscpy(ptr noundef %std_info3, ptr noundef nonnull @.str.113, i32 noundef 30) #12
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
  %stdid190 = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 1
  %106 = ptrtoint ptr %stdid190 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 0, ptr %stdid190, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %do.end164, %do.body158.cleanup_crit_edge, %do.end91, %do.body86.cleanup_crit_edge, %do.end63, %do.body58.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end179 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %if.end23.cleanup_crit_edge ], [ %call47, %do.end63 ], [ %call47, %do.body58.cleanup_crit_edge ], [ -22, %do.end91 ], [ -22, %do.body86.cleanup_crit_edge ], [ -22, %do.end164 ], [ -22, %do.body158.cleanup_crit_edge ]
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input7.sroa_idx = getelementptr %struct.vpif_input, ptr %8, i32 %10, i32 0, i32 7
  %11 = ptrtoint ptr %input.sroa.4.0.input7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input7.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %input.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dv_timings = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 8, i32 2
  %12 = call ptr @memcpy(ptr %timings, ptr %dv_timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %timings) #2 align 64 {
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input7.sroa_idx = getelementptr %struct.vpif_input, ptr %8, i32 %10, i32 0, i32 7
  %11 = ptrtoint ptr %input.sroa.4.0.input7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input7.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %input.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.else

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %query_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %query_dv_timings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %query_dv_timings, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.else17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %query_dv_timings20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %query_dv_timings20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %query_dv_timings20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %land.lhs.true19.if.end32_crit_edge
  %.sink = phi ptr [ %19, %if.else25 ], [ %22, %land.lhs.true19.if.end32_crit_edge ]
  %call29 = tail call i32 %.sink(ptr noundef nonnull %13, ptr noundef %timings) #12
  %23 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call29, label %if.end36 [
    i32 -515, label %if.end32.cleanup_crit_edge
    i32 -19, label %if.end32.cleanup_crit_edge59
  ]

if.end32.cleanup_crit_edge59:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %if.end32.cleanup_crit_edge59, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end36 ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ -61, %if.end32.cleanup_crit_edge ], [ -61, %if.end32.cleanup_crit_edge59 ], [ -61, %if.end9.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.else.cleanup_crit_edge ]
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 8
  %inputs = getelementptr %struct.vpif_capture_config, ptr %2, i32 0, i32 2, i32 %6, i32 1
  %7 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inputs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_idx = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %input_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_idx, align 4
  %input.sroa.4.0.input7.sroa_idx = getelementptr %struct.vpif_input, ptr %8, i32 %10, i32 0, i32 7
  %11 = ptrtoint ptr %input.sroa.4.0.input7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %input.sroa.4.0.copyload = load i32, ptr %input.sroa.4.0.input7.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input.sroa.4.0.copyload)
  %cmp.not = icmp eq i32 %input.sroa.4.0.copyload, 2
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %12 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pad, align 4
  %sd = getelementptr inbounds %struct.channel_obj, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd, align 8
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
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.127)
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
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_async_bound(ptr nocapture noundef readnone %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %asd_sizes = getelementptr inbounds %struct.vpif_capture_config, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %asd_sizes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asd_sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp58 = icmp sgt i32 %2, 0
  br i1 %cmp58, label %for.body.lr.ph, label %entry.for.cond23.preheader_crit_edge

entry.for.cond23.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond23.preheader

for.body.lr.ph:                                   ; preds = %entry
  %fwnode3 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 15
  %3 = ptrtoint ptr %fwnode3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode3, align 4
  br label %for.body

for.cond23.preheader:                             ; preds = %for.inc.critedge.for.cond23.preheader_crit_edge, %entry.for.cond23.preheader_crit_edge
  %subdev_count = getelementptr inbounds %struct.vpif_capture_config, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %subdev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2460 = icmp sgt i32 %6, 0
  br i1 %cmp2460, label %for.body25.lr.ph, label %for.cond23.preheader.cleanup36_crit_edge

for.cond23.preheader.cleanup36_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %subdev_info = getelementptr inbounds %struct.vpif_capture_config, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %subdev_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdev_info, align 4
  %name27 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  br label %for.body25

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.vpif_capture_config, ptr %0, i32 0, i32 7, i32 %i.059
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %match, align 4
  %cmp4 = icmp eq ptr %12, %4
  br i1 %cmp4, label %if.then, label %for.inc.critedge

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx5 = getelementptr ptr, ptr %13, i32 %i.059
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %subdev, ptr %arrayidx5, align 4
  %15 = ptrtoint ptr %fwnode3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwnode3, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then.is_of_node.exit.thread_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %18, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %16, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then.is_of_node.exit.thread_crit_edge
  %19 = phi ptr [ null, %if.then.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %full_name = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %full_name, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %inputs = getelementptr inbounds %struct.vpif_capture_config, ptr %22, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inputs, align 4
  %subdev_name = getelementptr %struct.vpif_input, ptr %24, i32 %i.059, i32 1
  %25 = ptrtoint ptr %subdev_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %subdev_name, align 8
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp9 = icmp sgt i32 %26, 1
  br i1 %cmp9, label %do.end, label %is_of_node.exit.thread.cleanup36_crit_edge

is_of_node.exit.thread.cleanup36_crit_edge:       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

do.end:                                           ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %27 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 4), align 4
  %inputs15 = getelementptr inbounds %struct.vpif_capture_config, ptr %27, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %inputs15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inputs15, align 4
  %subdev_name17 = getelementptr %struct.vpif_input, ptr %29, i32 %i.059, i32 1
  %30 = ptrtoint ptr %subdev_name17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdev_name17, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 0, i32 4), ptr noundef nonnull @.str.115, i32 noundef %i.059, ptr noundef %31) #15
  br label %cleanup36

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.critedge.for.cond23.preheader_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.critedge.for.cond23.preheader_crit_edge:  ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond23.preheader

for.body25:                                       ; preds = %for.inc33.for.body25_crit_edge, %for.body25.lr.ph
  %i.161 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc34, %for.inc33.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.vpif_subdev_info, ptr %8, i32 %i.161
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx26, align 4
  %call29 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %name27) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then30, label %for.inc33

if.then30:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  %34 = load ptr, ptr getelementptr inbounds (%struct.vpif_device, ptr @vpif_obj, i32 0, i32 2), align 4
  %arrayidx31 = getelementptr ptr, ptr %34, i32 %i.161
  %35 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %subdev, ptr %arrayidx31, align 4
  br label %cleanup36

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nuw nsw i32 %i.161, 1
  %exitcond64.not = icmp eq i32 %inc34, %6
  br i1 %exitcond64.not, label %for.inc33.cleanup36_crit_edge, label %for.inc33.for.body25_crit_edge

for.inc33.for.body25_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25

for.inc33.cleanup36_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup36

cleanup36:                                        ; preds = %for.inc33.cleanup36_crit_edge, %if.then30, %do.end, %is_of_node.exit.thread.cleanup36_crit_edge, %for.cond23.preheader.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %if.then30 ], [ 0, %do.end ], [ 0, %is_of_node.exit.thread.cleanup36_crit_edge ], [ -22, %for.cond23.preheader.cleanup36_crit_edge ], [ -22, %for.inc33.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_async_complete(ptr nocapture noundef readnone %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vpif_probe_complete()
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpif_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %i.025
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 3
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
  %add.ptr7.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %8 = and i32 %7, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %9 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %8) #12, !srcloc !270
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %10 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %10, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %12 = and i32 %11, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %13 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %12) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %14 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  %16 = or i32 %15, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %17 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %16) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %18 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %19 = phi i32 [ %.pr, %if.then4 ], [ %5, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp7 = icmp eq i32 %19, 1
  br i1 %cmp7, label %if.end5.if.then9_crit_edge, label %lor.lhs.false

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %20 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp8 = icmp eq i32 %20, 2
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
  %21 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i18 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %23 = and i32 %22, -16777217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %24 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i19 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i19, i32 %23) #12, !srcloc !270
  %call2.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %25 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i21 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %27 = and i32 %26, -33554433
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %28 = load ptr, ptr @vpif_base, align 4
  %add.ptr54.i22 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i22, i32 %27) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %29 = load ptr, ptr @vpif_base, align 4
  %add.ptr60.i23 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i23) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  %31 = or i32 %30, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %32 = load ptr, ptr @vpif_base, align 4
  %add.ptr65.i24 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i24, i32 %31) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i20) #12
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
  %i.029 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vpif_device, ptr @vpif_obj, i32 0, i32 1, i32 %i.029
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
  %channel_id = getelementptr inbounds %struct.channel_obj, ptr %1, i32 0, i32 3
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
  %add.ptr7.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %8 = or i32 %7, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %9 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #12, !srcloc !270
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %10 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i = getelementptr i8, ptr %10, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %12 = or i32 %11, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %13 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %12) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %14 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  %16 = or i32 %15, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %17 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %16) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %18 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  %20 = or i32 %19, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %21 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %20) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %22 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i = getelementptr i8, ptr %22, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !279
  %24 = or i32 %23, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %25 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %24) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i) #12
  %26 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %channel_id, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %27 = phi i32 [ %.pr, %if.then4 ], [ %5, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp7 = icmp eq i32 %27, 1
  br i1 %cmp7, label %if.end5.if.then9_crit_edge, label %lor.lhs.false

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %28 = load i32, ptr @ycmux_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp8 = icmp eq i32 %28, 2
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
  %29 = load ptr, ptr @vpif_base, align 4
  %add.ptr7.i18 = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %31 = or i32 %30, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %32 = load ptr, ptr @vpif_base, align 4
  %add.ptr2.i19 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19, i32 %31) #12, !srcloc !270
  %call2.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @vpif_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %33 = load ptr, ptr @vpif_base, align 4
  %add.ptr50.i21 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %35 = or i32 %34, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %36 = load ptr, ptr @vpif_base, align 4
  %add.ptr11.i22 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i22, i32 %35) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %37 = load ptr, ptr @vpif_base, align 4
  %add.ptr17.i23 = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i23) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  %39 = or i32 %38, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %40 = load ptr, ptr @vpif_base, align 4
  %add.ptr22.i24 = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i24, i32 %39) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %41 = load ptr, ptr @vpif_base, align 4
  %add.ptr28.i25 = getelementptr i8, ptr %41, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i25) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !285
  %43 = or i32 %42, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %44 = load ptr, ptr @vpif_base, align 4
  %add.ptr33.i26 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i26, i32 %43) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !286
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %45 = load ptr, ptr @vpif_base, align 4
  %add.ptr39.i27 = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i27) #12, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !287
  %47 = or i32 %46, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vpif_base to i32))
  %48 = load ptr, ptr @vpif_base, align 4
  %add.ptr44.i28 = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i28, i32 %47) #12, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @vpif_lock, i32 noundef %call2.i20) #12
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !251, !252, !253, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_file299, !3, !"__UNIQUE_ID_file299", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_license300, !3, !"__UNIQUE_ID_license300", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version301, !6, !"__UNIQUE_ID_version301", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 28, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 36, i32 1}
!13 = !{ptr @__UNIQUE_ID_debugtype302, !12, !"__UNIQUE_ID_debugtype302", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_debug303, !15, !"__UNIQUE_ID_debug303", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 38, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias304, !17, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 41, i32 1}
!18 = !{ptr @__initcall__kmod_vpif_capture__310_1818_vpif_driver_init6, !19, !"__initcall__kmod_vpif_capture__310_1818_vpif_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1818, i32 1}
!20 = !{ptr @__exitcall_vpif_driver_exit, !19, !"__exitcall_vpif_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @debug, !23, !"debug", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 34, i32 12}
!24 = !{ptr @vpif_driver, !25, !"vpif_driver", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1809, i32 41}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1617, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vpif_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @vpif_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1625, i32 3}
!36 = !{ptr @vpif_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vpif_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1631, i32 3}
!40 = !{ptr @vpif_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vpif_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1671, i32 5}
!44 = !{ptr @vpif_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vpif_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1675, i32 4}
!48 = !{ptr @vpif_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vpif_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1687, i32 4}
!52 = !{ptr @vpif_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vpif_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1532, i32 4}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug307, !55, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1554, i32 4}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vpif_capture_get_pdata._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @vpif_capture_get_pdata._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1559, i32 3}
!65 = !{ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug308, !64, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1570, i32 3}
!68 = !{ptr @vpif_capture_get_pdata.__UNIQUE_ID_ddebug309, !67, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1587, i32 21}
!71 = !{ptr @vpif_dev, !72, !"vpif_dev", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 45, i32 23}
!73 = !{ptr @vpif_obj, !74, !"vpif_obj", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 44, i32 27}
!75 = !{ptr @channel_first_int, !76, !"channel_first_int", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 49, i32 11}
!77 = !{ptr @vpif_probe_complete.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1410, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vpif_probe_complete.__key.31, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1411, i32 3}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1439, i32 4}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @vpif_probe_complete._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @vpif_probe_complete._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1463, i32 2}
!90 = !{ptr @vpif_probe_complete._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vpif_probe_complete._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 715, i32 4}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vpif_set_input._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @vpif_set_input._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 728, i32 4}
!99 = !{ptr @vpif_set_input._entry.40, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @vpif_set_input._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 661, i32 2}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vpif_input_to_subdev._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @vpif_input_to_subdev._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 469, i32 2}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vpif_update_std_info._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vpif_update_std_info._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 502, i32 4}
!113 = !{ptr @vpif_update_std_info._entry.47, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @vpif_update_std_info._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 508, i32 4}
!117 = !{ptr @vpif_update_std_info._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @vpif_update_std_info._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @video_qops, !120, !"video_qops", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 306, i32 29}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 117, i32 2}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @vpif_buffer_queue_setup._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @vpif_buffer_queue_setup._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 565, i32 2}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @vpif_calculate_offsets._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @vpif_calculate_offsets._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 76, i32 2}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @vpif_buffer_prepare._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @vpif_buffer_prepare._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 91, i32 3}
!138 = !{ptr @vpif_buffer_prepare._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vpif_buffer_prepare._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 183, i32 4}
!145 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @vpif_start_streaming._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @vpif_start_streaming._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 190, i32 3}
!150 = !{ptr @vpif_start_streaming._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @vpif_start_streaming._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 197, i32 3}
!154 = !{ptr @vpif_start_streaming._entry.68, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @vpif_start_streaming._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @ycmux_mode, !157, !"ycmux_mode", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 52, i32 12}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 630, i32 2}
!160 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @vpif_config_addr._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @vpif_config_addr._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 280, i32 3}
!165 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @vpif_stop_streaming._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @vpif_stop_streaming._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 151, i32 2}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @vpif_buffer_queue._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @vpif_buffer_queue._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @vpif_fops, !174, !"vpif_fops", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1320, i32 42}
!175 = !{ptr @vpif_ioctl_ops, !176, !"vpif_ioctl_ops", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1287, i32 36}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1070, i32 49}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 925, i32 3}
!181 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @vpif_enum_fmt_vid_cap._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @vpif_enum_fmt_vid_cap._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1014, i32 4}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @vpif_g_fmt_vid_cap._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @vpif_g_fmt_vid_cap._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1018, i32 3}
!191 = !{ptr @vpif_g_fmt_vid_cap.__UNIQUE_ID_ddebug306, !190, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1044, i32 2}
!194 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @vpif_s_fmt_vid_cap._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @vpif_s_fmt_vid_cap._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 965, i32 2}
!199 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @vpif_try_fmt_vid_cap.__UNIQUE_ID_ddebug305, !198, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 785, i32 2}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vpif_g_std._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @vpif_g_std._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 815, i32 2}
!208 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @vpif_s_std._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @vpif_s_std._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 834, i32 3}
!213 = !{ptr @vpif_s_std._entry.91, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @vpif_s_std._entry_ptr.93, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 841, i32 3}
!217 = !{ptr @vpif_s_std._entry.94, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @vpif_s_std._entry_ptr.96, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 756, i32 2}
!221 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @vpif_querystd._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @vpif_querystd._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 764, i32 3}
!226 = !{ptr @vpif_querystd._entry.99, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @vpif_querystd._entry_ptr.101, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1173, i32 3}
!230 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @vpif_s_dv_timings._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @vpif_s_dv_timings._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1185, i32 3}
!235 = !{ptr @vpif_s_dv_timings._entry.104, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @vpif_s_dv_timings._entry_ptr.106, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1196, i32 3}
!239 = !{ptr @vpif_s_dv_timings._entry.107, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @vpif_s_dv_timings._entry_ptr.109, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1221, i32 4}
!243 = !{ptr @vpif_s_dv_timings._entry.110, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @vpif_s_dv_timings._entry_ptr.112, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.113, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1227, i32 26}
!247 = !{ptr @vpif_async_ops, !248, !"vpif_async_ops", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1482, i32 52}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1380, i32 4}
!251 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @vpif_async_bound._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @vpif_async_bound._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @vpif_pm_ops, !255, !"vpif_pm_ops", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/davinci/vpif_capture.c", i32 1807, i32 8}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{i64 2149000841, i64 2149000846, i64 2149000859, i64 2149000903, i64 2149000937, i64 2149000958}
!267 = !{i64 4663764}
!268 = !{i64 2156009657}
!269 = !{i64 2156009938}
!270 = !{i64 4663346}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i64 2156573857}
!273 = !{i64 2156574831}
!274 = !{i64 2155913576}
!275 = !{i64 2155914520}
!276 = !{i64 2155915925}
!277 = !{i64 2155916887}
!278 = !{i64 2155918301}
!279 = !{i64 2155919263}
!280 = !{i64 2156576352}
!281 = !{i64 2156577326}
!282 = !{i64 2155928257}
!283 = !{i64 2155929201}
!284 = !{i64 2155930606}
!285 = !{i64 2155931568}
!286 = !{i64 2155932982}
!287 = !{i64 2155933944}
!288 = !{i64 2155923073}
!289 = !{i64 2155924035}
!290 = !{i64 2155937754}
!291 = !{i64 2155938716}
!292 = !{i64 2155943635}
!293 = !{i64 2155944141}
!294 = !{i64 2155944651}
!295 = !{i64 2155945167}
!296 = !{i64 2155939209}
!297 = !{i64 2155939715}
!298 = !{i64 2155940225}
!299 = !{i64 2155940741}
!300 = !{i64 2155941422}
!301 = !{i64 2155941928}
!302 = !{i64 2155942438}
!303 = !{i64 2155942954}
