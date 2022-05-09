; ModuleID = '/llk/IR_all_yes/drivers/media/platform/am437x/am437x-vpfe.c_pt.bc'
source_filename = "../drivers/media/platform/am437x/am437x-vpfe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpfe_fmt = type { i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpfe_standard = type { i64, i32, i32, %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32, i32 }
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
%struct.vpfe_device = type { %struct.video_device, ptr, ptr, %struct.v4l2_device, ptr, %struct.v4l2_async_notifier, i32, i32, %struct.vpfe_hw_if_param, ptr, i32, %struct.vpfe_std_info, i32, i32, ptr, ptr, %struct.v4l2_format, ptr, [10 x ptr], i32, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, i32, %struct.vpfe_ccdc, i32, %struct.completion }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vpfe_hw_if_param = type { i32, i32, i32, i32 }
%struct.vpfe_std_info = type { i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vpfe_ccdc = type { %struct.ccdc_config, [73 x i32] }
%struct.ccdc_config = type { i32, %struct.ccdc_params_raw, %struct.ccdc_params_ycbcr, ptr }
%struct.ccdc_params_raw = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i32, i32, i8, %struct.vpfe_ccdc_config_params_raw }
%struct.vpfe_ccdc_config_params_raw = type { i32, %struct.vpfe_ccdc_a_law, %struct.vpfe_ccdc_black_clamp, %struct.vpfe_ccdc_black_compensation }
%struct.vpfe_ccdc_a_law = type { i8, i32 }
%struct.vpfe_ccdc_black_clamp = type { i8, i32, i32, i16, i16, i16 }
%struct.vpfe_ccdc_black_compensation = type { i8, i8, i8, i8 }
%struct.ccdc_params_ycbcr = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.121, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.121 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.vpfe_subdev_info = type { i32, [1 x %struct.v4l2_input], ptr, i32, %struct.vpfe_hw_if_param, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.vpfe_config = type { [1 x %struct.vpfe_subdev_info], [1 x ptr] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_async_subdev = type { i32, %union.anon.118, %struct.list_head, %struct.list_head }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpfe_route = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.117, i16, i16, i16, [10 x i16] }
%union.anon.117 = type { i16 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpfe_cap_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [18 x i8] c"am437x_vpfe.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype311 = internal constant [31 x i8] c"am437x_vpfe.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug312 = internal constant [39 x i8] c"am437x_vpfe.parm=debug:Debug level 0-8\00", section ".modinfo", align 1
@__initcall__kmod_am437x_vpfe__322_2636_vpfe_driver_init6 = internal global ptr @vpfe_driver_init, section ".initcall6.init", align 4
@vpfe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vpfe_probe, ptr @vpfe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vpfe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vpfe_driver_exit = internal global ptr @vpfe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [37 x i8] c"am437x_vpfe.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [46 x i8] c"am437x_vpfe.description=TI AM437x VPFE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [59 x i8] c"am437x_vpfe.file=drivers/media/platform/am437x/am437x-vpfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [24 x i8] c"am437x_vpfe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version327 = internal constant [26 x i8] c"am437x_vpfe.version=0.1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"am437x_vpfe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpfe\00", [27 x i8] zeroinitializer }, align 32
@vpfe_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437x-vpfe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vpfe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vpfe_suspend, ptr @vpfe_resume, ptr @vpfe_suspend, ptr @vpfe_resume, ptr @vpfe_suspend, ptr @vpfe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vpfe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2406, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/am437x/am437x-vpfe.c\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr = internal global ptr @vpfe_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_capture0\00", [18 x i8] zeroinitializer }, align 32
@vpfe_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 2429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.12 = internal global ptr @vpfe_probe._entry.10, section ".printk_index", align 4
@vpfe_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unable to register v4l2 device.\0A\00", [57 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.15 = internal global ptr @vpfe_probe._entry.13, section ".printk_index", align 4
@vpfe_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Unable to resume device.\0A\00", [32 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.18 = internal global ptr @vpfe_probe._entry.16, section ".printk_index", align 4
@vpfe_async_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @vpfe_async_bound, ptr @vpfe_async_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@vpfe_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 2469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error registering async notifier\0A\00", [56 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.21 = internal global ptr @vpfe_probe._entry.19, section ".printk_index", align 4
@vpfe_get_pdata.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 2, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpfe_get_pdata\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpfe_get_pdata\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,am437x-vpfe-interface\00", [39 x i8] zeroinitializer }, align 32
@vpfe_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.6, i32 2341, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not parse the endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@vpfe_get_pdata._entry_ptr = internal global ptr @vpfe_get_pdata._entry, section ".printk_index", align 4
@vpfe_get_pdata._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.6, i32 2349, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid bus width.\0A\00", [44 x i8] zeroinitializer }, align 32
@vpfe_get_pdata._entry_ptr.29 = internal global ptr @vpfe_get_pdata._entry.27, section ".printk_index", align 4
@vpfe_get_pdata._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.6, i32 2364, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Remote device at %pOF not found\0A\00", [63 x i8] zeroinitializer }, align 32
@vpfe_get_pdata._entry_ptr.32 = internal global ptr @vpfe_get_pdata._entry.30, section ".printk_index", align 4
@vpfe_async_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: sub device (%s) not matched\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpfe_async_bound\00", [47 x i8] zeroinitializer }, align 32
@vpfe_async_bound._entry_ptr = internal global ptr @vpfe_async_bound._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vpfe_async_bound._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.6, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: subdev %s: code: %04x idx: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@vpfe_async_bound._entry_ptr.37 = internal global ptr @vpfe_async_bound._entry.35, section ".printk_index", align 4
@formats = internal global { [10 x %struct.vpfe_fmt], [40 x i8] } { [10 x %struct.vpfe_fmt] [%struct.vpfe_fmt { i32 1448695129, i32 8200, i32 16 }, %struct.vpfe_fmt { i32 1498831189, i32 8198, i32 16 }, %struct.vpfe_fmt { i32 1431918169, i32 8201, i32 16 }, %struct.vpfe_fmt { i32 1498765654, i32 8199, i32 16 }, %struct.vpfe_fmt { i32 825770306, i32 12289, i32 8 }, %struct.vpfe_fmt { i32 1196573255, i32 12307, i32 8 }, %struct.vpfe_fmt { i32 1195528775, i32 12290, i32 8 }, %struct.vpfe_fmt { i32 1111967570, i32 12308, i32 8 }, %struct.vpfe_fmt { i32 1346520914, i32 4104, i32 16 }, %struct.vpfe_fmt { i32 1380075346, i32 4103, i32 16 }], [40 x i8] zeroinitializer }, align 32
@vpfe_async_bound._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.6, i32 2195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: matched fourcc: %s code: %04x idx: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@vpfe_async_bound._entry_ptr.40 = internal global ptr @vpfe_async_bound._entry.38, section ".printk_index", align 4
@vpfe_async_bound._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.6, i32 2202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: No suitable format reported by subdev %s\0A\00", [48 x i8] zeroinitializer }, align 32
@vpfe_async_bound._entry_ptr.43 = internal global ptr @vpfe_async_bound._entry.41, section ".printk_index", align 4
@print_fourcc.code = internal global { [5 x i8], [27 x i8] } zeroinitializer, align 32
@vpfe_probe_complete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vpfe->dma_queue_lock\00", [42 x i8] zeroinitializer }, align 32
@vpfe_probe_complete.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vpfe->lock\00", [20 x i8] zeroinitializer }, align 32
@vpfe_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vpfe_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vpfe_buffer_prepare, ptr null, ptr null, ptr @vpfe_start_streaming, ptr @vpfe_stop_streaming, ptr @vpfe_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vpfe_probe_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 2242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: vb2_queue_init() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpfe_probe_complete\00", [44 x i8] zeroinitializer }, align 32
@vpfe_probe_complete._entry_ptr = internal global ptr @vpfe_probe_complete._entry, section ".printk_index", align 4
@vpfe_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @vpfe_open, ptr @vpfe_release }, [60 x i8] zeroinitializer }, align 32
@vpfe_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpfe_querycap, ptr @vpfe_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vpfe_g_std, ptr @vpfe_s_std, ptr @vpfe_querystd, ptr @vpfe_enum_input, ptr @vpfe_g_input, ptr @vpfe_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_g_pixelaspect, ptr @vpfe_g_selection, ptr @vpfe_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_enum_size, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr @vpfe_ioctl_default }, [120 x i8] zeroinitializer }, align 32
@vpfe_probe_complete._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 2263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Unable to register video device.\0A\00", [56 x i8] zeroinitializer }, align 32
@vpfe_probe_complete._entry_ptr.51 = internal global ptr @vpfe_probe_complete._entry.49, section ".printk_index", align 4
@vpfe_set_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: %s device busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpfe_set_input\00", [17 x i8] zeroinitializer }, align 32
@vpfe_set_input._entry_ptr = internal global ptr @vpfe_set_input._entry, section ".printk_index", align 4
@vpfe_set_input._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.6, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid input index: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vpfe_set_input._entry_ptr.56 = internal global ptr @vpfe_set_input._entry.54, section ".printk_index", align 4
@vpfe_set_input._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.6, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: s_routing failed\0A\00", [40 x i8] zeroinitializer }, align 32
@vpfe_set_input._entry_ptr.59 = internal global ptr @vpfe_set_input._entry.57, section ".printk_index", align 4
@vpfe_standards = internal constant { [2 x %struct.vpfe_standard], [32 x i8] } { [2 x %struct.vpfe_standard] [%struct.vpfe_standard { i64 63744, i32 720, i32 480, %struct.v4l2_fract { i32 11, i32 10 }, i32 1 }, %struct.vpfe_standard { i64 16713471, i32 720, i32 576, %struct.v4l2_fract { i32 54, i32 59 }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@vpfe_ccdc_set_hw_if_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: params.bus_width: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpfe_ccdc_set_hw_if_params\00", [37 x i8] zeroinitializer }, align 32
@vpfe_ccdc_set_hw_if_params._entry_ptr = internal global ptr @vpfe_ccdc_set_hw_if_params._entry, section ".printk_index", align 4
@vpfe_ccdc_set_hw_if_params._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.6, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: config_params.data_sz: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@vpfe_ccdc_set_hw_if_params._entry_ptr.64 = internal global ptr @vpfe_ccdc_set_hw_if_params._entry.62, section ".printk_index", align 4
@vpfe_config_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: standard not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpfe_config_image_format\00", [39 x i8] zeroinitializer }, align 32
@vpfe_config_image_format._entry_ptr = internal global ptr @vpfe_config_image_format._entry, section ".printk_index", align 4
@vpfe_config_image_format._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.6, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: mbus code format (0x%08x) not found.\0A\00", [52 x i8] zeroinitializer }, align 32
@vpfe_config_image_format._entry_ptr.69 = internal global ptr @vpfe_config_image_format._entry.67, section ".printk_index", align 4
@__subdev_get_format._entry = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 1302, ptr null, ptr null }, align 1
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: %dx%d code:%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__subdev_get_format\00", [44 x i8] zeroinitializer }, align 32
@__subdev_get_format._entry_ptr = internal global ptr @__subdev_get_format._entry, section ".printk_index", align 4
@vpfe_calc_format_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.6, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: No vpfe_fmt provided!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpfe_calc_format_size\00", [42 x i8] zeroinitializer }, align 32
@vpfe_calc_format_size._entry_ptr = internal global ptr @vpfe_calc_format_size._entry, section ".printk_index", align 4
@vpfe_calc_format_size._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.6, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: %s: fourcc: %s size: %dx%d bpl:%d img_size:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@vpfe_calc_format_size._entry_ptr.76 = internal global ptr @vpfe_calc_format_size._entry.74, section ".printk_index", align 4
@vpfe_config_ccdc_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: pixelformat: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vpfe_config_ccdc_image_format\00", [34 x i8] zeroinitializer }, align 32
@vpfe_config_ccdc_image_format._entry_ptr = internal global ptr @vpfe_config_ccdc_image_format._entry, section ".printk_index", align 4
@vpfe_config_ccdc_image_format._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: couldn't set pix format in ccdc\0A\00", [57 x i8] zeroinitializer }, align 32
@vpfe_config_ccdc_image_format._entry_ptr.81 = internal global ptr @vpfe_config_ccdc_image_format._entry.79, section ".printk_index", align 4
@vpfe_ccdc_set_pixel_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.6, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: if_type: %d, pixfmt:%s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpfe_ccdc_set_pixel_format\00", [37 x i8] zeroinitializer }, align 32
@vpfe_ccdc_set_pixel_format._entry_ptr = internal global ptr @vpfe_ccdc_set_pixel_format._entry, section ".printk_index", align 4
@vpfe_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: nbuffers=%d, size=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpfe_queue_setup\00", [47 x i8] zeroinitializer }, align 32
@vpfe_queue_setup._entry_ptr = internal global ptr @vpfe_queue_setup._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vpfe_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.6, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Error in attaching interrupt handle\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpfe_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@vpfe_start_streaming._entry_ptr = internal global ptr @vpfe_start_streaming._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vpfe_ccdc_config_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: \0AWriting 0x%x to ALAW...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpfe_ccdc_config_raw\00", [43 x i8] zeroinitializer }, align 32
@vpfe_ccdc_config_raw._entry_ptr = internal global ptr @vpfe_ccdc_config_raw._entry, section ".printk_index", align 4
@vpfe_ccdc_config_raw._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.6, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Writing %d (%x) to HSIZE_OFF\0A\00", [60 x i8] zeroinitializer }, align 32
@vpfe_ccdc_config_raw._entry_ptr.94 = internal global ptr @vpfe_ccdc_config_raw._entry.92, section ".printk_index", align 4
@vpfe_reg_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.6, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: ALAW: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_reg_dump\00", [18 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr = internal global ptr @vpfe_reg_dump._entry, section ".printk_index", align 4
@vpfe_reg_dump._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.6, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: CLAMP: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.99 = internal global ptr @vpfe_reg_dump._entry.97, section ".printk_index", align 4
@vpfe_reg_dump._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.6, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: DCSUB: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.102 = internal global ptr @vpfe_reg_dump._entry.100, section ".printk_index", align 4
@vpfe_reg_dump._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.6, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: BLKCMP: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.105 = internal global ptr @vpfe_reg_dump._entry.103, section ".printk_index", align 4
@vpfe_reg_dump._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.6, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: COLPTN: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.108 = internal global ptr @vpfe_reg_dump._entry.106, section ".printk_index", align 4
@vpfe_reg_dump._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.96, ptr @.str.6, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: SDOFST: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.111 = internal global ptr @vpfe_reg_dump._entry.109, section ".printk_index", align 4
@vpfe_reg_dump._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.96, ptr @.str.6, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: SYN_MODE: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.114 = internal global ptr @vpfe_reg_dump._entry.112, section ".printk_index", align 4
@vpfe_reg_dump._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.96, ptr @.str.6, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: HSIZE_OFF: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.117 = internal global ptr @vpfe_reg_dump._entry.115, section ".printk_index", align 4
@vpfe_reg_dump._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.96, ptr @.str.6, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: HORZ_INFO: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.120 = internal global ptr @vpfe_reg_dump._entry.118, section ".printk_index", align 4
@vpfe_reg_dump._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.96, ptr @.str.6, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: VERT_START: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.123 = internal global ptr @vpfe_reg_dump._entry.121, section ".printk_index", align 4
@vpfe_reg_dump._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.96, ptr @.str.6, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: VERT_LINES: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@vpfe_reg_dump._entry_ptr.126 = internal global ptr @vpfe_reg_dump._entry.124, section ".printk_index", align 4
@vpfe_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.6, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: stream off failed in subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpfe_stop_streaming\00", [44 x i8] zeroinitializer }, align 32
@vpfe_stop_streaming._entry_ptr = internal global ptr @vpfe_stop_streaming._entry, section ".printk_index", align 4
@vpfe_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.6, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: v4l2_fh_open failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpfe_open\00", [22 x i8] zeroinitializer }, align 32
@vpfe_open._entry_ptr = internal global ptr @vpfe_open._entry, section ".printk_index", align 4
@vpfe_ccdc_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.6, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: VPFE_PCR is still set (%x)\00", [63 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpfe_ccdc_close\00", [16 x i8] zeroinitializer }, align 32
@vpfe_ccdc_close._entry_ptr = internal global ptr @vpfe_ccdc_close._entry, section ".printk_index", align 4
@vpfe_ccdc_close._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.6, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: VPFE_DMA_CNTL_OVERFLOW is still set (%x)\00", [49 x i8] zeroinitializer }, align 32
@vpfe_ccdc_close._entry_ptr.135 = internal global ptr @vpfe_ccdc_close._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TI AM437x VPFE\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vpfe_enum_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.6, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: %s: mbus index: %d code: %x pixelformat: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_enum_fmt\00", [18 x i8] zeroinitializer }, align 32
@vpfe_enum_fmt._entry_ptr = internal global ptr @vpfe_enum_fmt._entry, section ".printk_index", align 4
@vpfe_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.140, ptr @.str.6, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_s_fmt\00", [21 x i8] zeroinitializer }, align 32
@vpfe_s_fmt._entry_ptr = internal global ptr @vpfe_s_fmt._entry, section ".printk_index", align 4
@vpfe_s_fmt._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.6, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: %s subdev changed format on us, this should not happen\0A\00", [34 x i8] zeroinitializer }, align 32
@vpfe_s_fmt._entry_ptr.143 = internal global ptr @vpfe_s_fmt._entry.141, section ".printk_index", align 4
@__subdev_set_format._entry = internal constant %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.6, i32 1325, ptr null, ptr null }, align 1
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s %dx%d code:%04X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__subdev_set_format\00", [44 x i8] zeroinitializer }, align 32
@__subdev_set_format._entry_ptr = internal global ptr @__subdev_set_format._entry, section ".printk_index", align 4
@vpfe_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.6, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Invalid pixel code: %x, default used instead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe_try_fmt\00", [19 x i8] zeroinitializer }, align 32
@vpfe_try_fmt._entry_ptr = internal global ptr @vpfe_try_fmt._entry, section ".printk_index", align 4
@vpfe_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.148, ptr @.str.6, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_s_std\00", [21 x i8] zeroinitializer }, align 32
@vpfe_s_std._entry_ptr = internal global ptr @vpfe_s_std._entry, section ".printk_index", align 4
@vpfe_s_std._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.6, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Failed to set standard\0A\00", [34 x i8] zeroinitializer }, align 32
@vpfe_s_std._entry_ptr.151 = internal global ptr @vpfe_s_std._entry.149, section ".printk_index", align 4
@vpfe_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.6, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: input information not found for the subdev\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpfe_enum_input\00", [16 x i8] zeroinitializer }, align 32
@vpfe_enum_input._entry_ptr = internal global ptr @vpfe_enum_input._entry, section ".printk_index", align 4
@vpfe_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.154, ptr @.str.6, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpfe_s_selection\00", [47 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr = internal global ptr @vpfe_s_selection._entry, section ".printk_index", align 4
@vpfe_s_selection._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.6, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: cropped (%d,%d)/%dx%d of %dx%d\0A\00", [58 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr.157 = internal global ptr @vpfe_s_selection._entry.155, section ".printk_index", align 4
@vpfe_enum_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.6, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Invalid pixel code: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpfe_enum_size\00", [17 x i8] zeroinitializer }, align 32
@vpfe_enum_size._entry_ptr = internal global ptr @vpfe_enum_size._entry, section ".printk_index", align 4
@vpfe_enum_size._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.6, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s: index: %d code: %x W:[%d,%d] H:[%d,%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@vpfe_enum_size._entry_ptr.162 = internal global ptr @vpfe_enum_size._entry.160, section ".printk_index", align 4
@vpfe_enum_size._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.159, ptr @.str.6, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: %s: index: %d pixformat: %s size: %dx%d\0A\00", [49 x i8] zeroinitializer }, align 32
@vpfe_enum_size._entry_ptr.165 = internal global ptr @vpfe_enum_size._entry.163, section ".printk_index", align 4
@vpfe_ioctl_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.166, ptr @.str.6, i32 2047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpfe_ioctl_default\00", [45 x i8] zeroinitializer }, align 32
@vpfe_ioctl_default._entry_ptr = internal global ptr @vpfe_ioctl_default._entry, section ".printk_index", align 4
@vpfe_ioctl_default._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.166, ptr @.str.6, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_ioctl_default._entry_ptr.168 = internal global ptr @vpfe_ioctl_default._entry.167, section ".printk_index", align 4
@vpfe_ioctl_default._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.166, ptr @.str.6, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Error setting parameters in CCDC\0A\00", [56 x i8] zeroinitializer }, align 32
@vpfe_ioctl_default._entry_ptr.171 = internal global ptr @vpfe_ioctl_default._entry.169, section ".printk_index", align 4
@vpfe_ioctl_default._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.166, ptr @.str.6, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Invalid image format at CCDC\0A\00", [60 x i8] zeroinitializer }, align 32
@vpfe_ioctl_default._entry_ptr.174 = internal global ptr @vpfe_ioctl_default._entry.172, section ".printk_index", align 4
@vpfe_ccdc_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.6, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: error in copying ccdc params, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpfe_ccdc_set_params\00", [43 x i8] zeroinitializer }, align 32
@vpfe_ccdc_set_params._entry_ptr = internal global ptr @vpfe_ccdc_set_params._entry, section ".printk_index", align 4
@.str.179 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vpfe_ccdc_validate_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.6, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Invalid data line select\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpfe_ccdc_validate_param\00", [39 x i8] zeroinitializer }, align 32
@vpfe_ccdc_validate_param._entry_ptr = internal global ptr @vpfe_ccdc_validate_param._entry, section ".printk_index", align 4
@vpfe_get_ccdc_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.6, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Invalid buf_type\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpfe_get_ccdc_image_format\00", [37 x i8] zeroinitializer }, align 32
@vpfe_get_ccdc_image_format._entry_ptr = internal global ptr @vpfe_get_ccdc_image_format._entry, section ".printk_index", align 4
@vpfe_get_ccdc_image_format._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.6, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid frm_fmt\0A\00", [41 x i8] zeroinitializer }, align 32
@vpfe_get_ccdc_image_format._entry_ptr.186 = internal global ptr @vpfe_get_ccdc_image_format._entry.184, section ".printk_index", align 4
@switch.table.vpfe_isr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 7, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.187 = internal global [8 x i64] [i64 6, i64 32, i64 825770306, i64 842093913, i64 842094158, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 36, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"vpfe_driver\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2626, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2641, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2630, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [14 x i8] c"vpfe_of_match\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2620, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"vpfe_pm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2618, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2406, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2427, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2429, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2436, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2449, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"vpfe_async_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2282, i32 52 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2469, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2298, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2322, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2331, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2341, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2349, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2363, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2168, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2184, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 61, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2193, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2201, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 158, i32 14 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2214, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2215, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [16 x i8] c"vpfe_video_qops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2082, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2242, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [10 x i8] c"vpfe_fops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2093, i32 42 }
@___asan_gen_.359 = private unnamed_addr constant [15 x i8] c"vpfe_ioctl_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2104, i32 36 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2262, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1631, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1639, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1653, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant [15 x i8] c"vpfe_standards\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 56, i32 35 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 768, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 770, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 978, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 988, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1301, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1337, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1348, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 904, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 909, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 616, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1789, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1163, i32 7 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1907, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 87, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 544, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 568, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 257, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 258, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 259, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 260, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 261, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 262, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 263, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 265, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 267, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 269, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 271, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1944, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1084, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 334, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 338, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1277, i32 21 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1279, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1384, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1459, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1477, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1324, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1402, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1717, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1725, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1603, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2003, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2034, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1510, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1526, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 1534, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2047, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2053, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2061, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 2068, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 362, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.738, i32 156, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 291, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 888, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.762 = private constant [47 x i8] c"../drivers/media/platform/am437x/am437x-vpfe.c\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 892, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant [22 x i8] c"switch.table.vpfe_isr\00", align 1
@llvm.compiler.used = appending global [271 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_debug312, ptr @__UNIQUE_ID_debugtype311, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__UNIQUE_ID_version327, ptr @__exitcall_vpfe_driver_exit, ptr @__initcall__kmod_am437x_vpfe__322_2636_vpfe_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__subdev_get_format._entry, ptr @__subdev_get_format._entry_ptr, ptr @__subdev_set_format._entry, ptr @__subdev_set_format._entry_ptr, ptr @vpfe_async_bound._entry, ptr @vpfe_async_bound._entry.35, ptr @vpfe_async_bound._entry.38, ptr @vpfe_async_bound._entry.41, ptr @vpfe_async_bound._entry_ptr, ptr @vpfe_async_bound._entry_ptr.37, ptr @vpfe_async_bound._entry_ptr.40, ptr @vpfe_async_bound._entry_ptr.43, ptr @vpfe_calc_format_size._entry, ptr @vpfe_calc_format_size._entry.74, ptr @vpfe_calc_format_size._entry_ptr, ptr @vpfe_calc_format_size._entry_ptr.76, ptr @vpfe_ccdc_close._entry, ptr @vpfe_ccdc_close._entry.133, ptr @vpfe_ccdc_close._entry_ptr, ptr @vpfe_ccdc_close._entry_ptr.135, ptr @vpfe_ccdc_config_raw._entry, ptr @vpfe_ccdc_config_raw._entry.92, ptr @vpfe_ccdc_config_raw._entry_ptr, ptr @vpfe_ccdc_config_raw._entry_ptr.94, ptr @vpfe_ccdc_set_hw_if_params._entry, ptr @vpfe_ccdc_set_hw_if_params._entry.62, ptr @vpfe_ccdc_set_hw_if_params._entry_ptr, ptr @vpfe_ccdc_set_hw_if_params._entry_ptr.64, ptr @vpfe_ccdc_set_params._entry, ptr @vpfe_ccdc_set_params._entry_ptr, ptr @vpfe_ccdc_set_pixel_format._entry, ptr @vpfe_ccdc_set_pixel_format._entry_ptr, ptr @vpfe_ccdc_validate_param._entry, ptr @vpfe_ccdc_validate_param._entry_ptr, ptr @vpfe_config_ccdc_image_format._entry, ptr @vpfe_config_ccdc_image_format._entry.79, ptr @vpfe_config_ccdc_image_format._entry_ptr, ptr @vpfe_config_ccdc_image_format._entry_ptr.81, ptr @vpfe_config_image_format._entry, ptr @vpfe_config_image_format._entry.67, ptr @vpfe_config_image_format._entry_ptr, ptr @vpfe_config_image_format._entry_ptr.69, ptr @vpfe_driver_exit, ptr @vpfe_enum_fmt._entry, ptr @vpfe_enum_fmt._entry_ptr, ptr @vpfe_enum_input._entry, ptr @vpfe_enum_input._entry_ptr, ptr @vpfe_enum_size._entry, ptr @vpfe_enum_size._entry.160, ptr @vpfe_enum_size._entry.163, ptr @vpfe_enum_size._entry_ptr, ptr @vpfe_enum_size._entry_ptr.162, ptr @vpfe_enum_size._entry_ptr.165, ptr @vpfe_get_ccdc_image_format._entry, ptr @vpfe_get_ccdc_image_format._entry.184, ptr @vpfe_get_ccdc_image_format._entry_ptr, ptr @vpfe_get_ccdc_image_format._entry_ptr.186, ptr @vpfe_get_pdata._entry, ptr @vpfe_get_pdata._entry.27, ptr @vpfe_get_pdata._entry.30, ptr @vpfe_get_pdata._entry_ptr, ptr @vpfe_get_pdata._entry_ptr.29, ptr @vpfe_get_pdata._entry_ptr.32, ptr @vpfe_ioctl_default._entry, ptr @vpfe_ioctl_default._entry.167, ptr @vpfe_ioctl_default._entry.169, ptr @vpfe_ioctl_default._entry.172, ptr @vpfe_ioctl_default._entry_ptr, ptr @vpfe_ioctl_default._entry_ptr.168, ptr @vpfe_ioctl_default._entry_ptr.171, ptr @vpfe_ioctl_default._entry_ptr.174, ptr @vpfe_open._entry, ptr @vpfe_open._entry_ptr, ptr @vpfe_probe._entry, ptr @vpfe_probe._entry.10, ptr @vpfe_probe._entry.13, ptr @vpfe_probe._entry.16, ptr @vpfe_probe._entry.19, ptr @vpfe_probe._entry_ptr, ptr @vpfe_probe._entry_ptr.12, ptr @vpfe_probe._entry_ptr.15, ptr @vpfe_probe._entry_ptr.18, ptr @vpfe_probe._entry_ptr.21, ptr @vpfe_probe_complete._entry, ptr @vpfe_probe_complete._entry.49, ptr @vpfe_probe_complete._entry_ptr, ptr @vpfe_probe_complete._entry_ptr.51, ptr @vpfe_queue_setup._entry, ptr @vpfe_queue_setup._entry_ptr, ptr @vpfe_reg_dump._entry, ptr @vpfe_reg_dump._entry.100, ptr @vpfe_reg_dump._entry.103, ptr @vpfe_reg_dump._entry.106, ptr @vpfe_reg_dump._entry.109, ptr @vpfe_reg_dump._entry.112, ptr @vpfe_reg_dump._entry.115, ptr @vpfe_reg_dump._entry.118, ptr @vpfe_reg_dump._entry.121, ptr @vpfe_reg_dump._entry.124, ptr @vpfe_reg_dump._entry.97, ptr @vpfe_reg_dump._entry_ptr, ptr @vpfe_reg_dump._entry_ptr.102, ptr @vpfe_reg_dump._entry_ptr.105, ptr @vpfe_reg_dump._entry_ptr.108, ptr @vpfe_reg_dump._entry_ptr.111, ptr @vpfe_reg_dump._entry_ptr.114, ptr @vpfe_reg_dump._entry_ptr.117, ptr @vpfe_reg_dump._entry_ptr.120, ptr @vpfe_reg_dump._entry_ptr.123, ptr @vpfe_reg_dump._entry_ptr.126, ptr @vpfe_reg_dump._entry_ptr.99, ptr @vpfe_s_fmt._entry, ptr @vpfe_s_fmt._entry.141, ptr @vpfe_s_fmt._entry_ptr, ptr @vpfe_s_fmt._entry_ptr.143, ptr @vpfe_s_selection._entry, ptr @vpfe_s_selection._entry.155, ptr @vpfe_s_selection._entry_ptr, ptr @vpfe_s_selection._entry_ptr.157, ptr @vpfe_s_std._entry, ptr @vpfe_s_std._entry.149, ptr @vpfe_s_std._entry_ptr, ptr @vpfe_s_std._entry_ptr.151, ptr @vpfe_set_input._entry, ptr @vpfe_set_input._entry.54, ptr @vpfe_set_input._entry.57, ptr @vpfe_set_input._entry_ptr, ptr @vpfe_set_input._entry_ptr.56, ptr @vpfe_set_input._entry_ptr.59, ptr @vpfe_start_streaming._entry, ptr @vpfe_start_streaming._entry_ptr, ptr @vpfe_stop_streaming._entry, ptr @vpfe_stop_streaming._entry_ptr, ptr @vpfe_try_fmt._entry, ptr @vpfe_try_fmt._entry_ptr, ptr @debug, ptr @vpfe_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vpfe_of_match, ptr @vpfe_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @vpfe_async_ops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @formats, ptr @.str.39, ptr @.str.42, ptr @print_fourcc.code, ptr @vpfe_probe_complete.__key, ptr @.str.44, ptr @vpfe_probe_complete.__key.45, ptr @.str.46, ptr @vpfe_video_qops, ptr @.str.47, ptr @.str.48, ptr @vpfe_fops, ptr @vpfe_ioctl_ops, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @vpfe_standards, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @init_completion.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @switch.table.vpfe_isr], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_async_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_get_pdata._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_get_pdata._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_async_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_async_bound._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_async_bound._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_async_bound._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fourcc.code to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe_complete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe_complete.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe_complete._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_set_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_set_input._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_set_input._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_standards to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_set_hw_if_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_set_hw_if_params._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_image_format._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_calc_format_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_calc_format_size._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_ccdc_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_ccdc_image_format._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_set_pixel_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_config_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_config_raw._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reg_dump._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_close._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_fmt._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_std._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_size._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_size._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_default._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_default._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_default._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ccdc_validate_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_get_ccdc_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_get_ccdc_image_format._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vpfe_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpfe_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpfe_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3032, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %pdev2, align 8
  %call3 = tail call fastcc ptr @vpfe_get_pdata(ptr noundef nonnull %call.i)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %cfg, align 4
  %ccdc8 = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base_addr = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 3
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call9 to i32
  br label %probe_out_cleanup

if.end17:                                         ; preds = %if.end7
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp = icmp slt i32 %call18, 1
  br i1 %cmp, label %if.end17.probe_out_cleanup_crit_edge, label %if.end20

if.end17.probe_out_cleanup_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out_cleanup

if.end20:                                         ; preds = %if.end17
  %irq = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call18, ptr %irq, align 4
  %5 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev2, align 8
  %call.i123 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %call18, ptr noundef nonnull @vpfe_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool24.not = icmp eq i32 %call.i123, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %probe_out_cleanup

if.end30:                                         ; preds = %if.end20
  %v4l2_dev = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 3
  %call32 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 3, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #12
  br label %probe_out_cleanup

if.end40:                                         ; preds = %if.end30
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i124 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %if.then.i, label %if.end54

if.then.i:                                        ; preds = %if.end40
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !385
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.probe_out_v4l2_unregister.sink.split_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.probe_out_v4l2_unregister.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out_v4l2_unregister.sink.split

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  br label %probe_out_v4l2_unregister.sink.split

if.end54:                                         ; preds = %if.end40
  %9 = ptrtoint ptr %ccdc8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ccdc8, align 4
  %ycbcr.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2
  %10 = ptrtoint ptr %ycbcr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %ycbcr.i, align 4
  %frm_fmt.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %frm_fmt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %frm_fmt.i, align 4
  %fid_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %fid_pol.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fid_pol.i, align 4
  %vd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %vd_pol.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %vd_pol.i, align 4
  %hd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %hd_pol.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hd_pol.i, align 4
  %pix_order.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %pix_order.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %pix_order.i, align 4
  %buf_type.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %buf_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf_type.i, align 4
  %win.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %win.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %win.i, align 4
  %top.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top.i, align 4
  %width.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 2, i32 2
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 720, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 2, i32 3
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 576, ptr %height.i, align 4
  %bt656_enable.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 2, i32 8
  %21 = ptrtoint ptr %bt656_enable.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %bt656_enable.i, align 4
  %bayer.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1
  %fid_pol34.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %fid_pol34.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fid_pol34.i, align 4
  %vd_pol37.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %vd_pol37.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %vd_pol37.i, align 4
  %hd_pol40.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %hd_pol40.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hd_pol40.i, align 4
  %width52.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 2, i32 2
  %25 = call ptr @memset(ptr %bayer.i, i32 0, i32 16)
  %26 = ptrtoint ptr %width52.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 800, ptr %width52.i, align 4
  %height56.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 2, i32 3
  %27 = ptrtoint ptr %height56.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 600, ptr %height56.i, align 4
  %config_params.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 10
  %28 = ptrtoint ptr %config_params.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %config_params.i, align 4
  %gamma_wd.i = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 26, i32 0, i32 1, i32 10, i32 1, i32 1
  %29 = ptrtoint ptr %gamma_wd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %gamma_wd.i, align 4
  %call.i126 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #9
  %sd = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %sd, align 8
  %tobool60.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool60.not, label %if.end54.probe_out_v4l2_unregister_crit_edge, label %if.end62

if.end54.probe_out_v4l2_unregister_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out_v4l2_unregister

if.end62:                                         ; preds = %if.end54
  %notifier = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vpfe_async_ops, ptr %notifier, align 4
  %call65 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end62.cleanup_crit_edge, label %if.end62.probe_out_v4l2_unregister.sink.split_crit_edge

if.end62.probe_out_v4l2_unregister.sink.split_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out_v4l2_unregister.sink.split

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

probe_out_v4l2_unregister.sink.split:             ; preds = %if.end62.probe_out_v4l2_unregister.sink.split_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.probe_out_v4l2_unregister.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.then.i.probe_out_v4l2_unregister.sink.split_crit_edge ], [ @.str.17, %do.end11.i.i.i.i.i ], [ @.str.20, %if.end62.probe_out_v4l2_unregister.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i124, %if.then.i.probe_out_v4l2_unregister.sink.split_crit_edge ], [ %call.i124, %do.end11.i.i.i.i.i ], [ -22, %if.end62.probe_out_v4l2_unregister.sink.split_crit_edge ]
  %name73 = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 3, i32 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink, ptr noundef %name73) #12
  br label %probe_out_v4l2_unregister

probe_out_v4l2_unregister:                        ; preds = %probe_out_v4l2_unregister.sink.split, %if.end54.probe_out_v4l2_unregister_crit_edge
  %ret.0 = phi i32 [ -12, %if.end54.probe_out_v4l2_unregister_crit_edge ], [ %ret.0.ph, %probe_out_v4l2_unregister.sink.split ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %probe_out_cleanup

probe_out_cleanup:                                ; preds = %probe_out_v4l2_unregister, %do.end37, %do.end28, %if.end17.probe_out_cleanup_crit_edge, %if.then13
  %ret.1 = phi i32 [ %3, %if.then13 ], [ -22, %do.end28 ], [ %call32, %do.end37 ], [ %ret.0, %probe_out_v4l2_unregister ], [ -19, %if.end17.probe_out_cleanup_crit_edge ]
  %notifier78 = getelementptr inbounds %struct.vpfe_device, ptr %call.i, i32 0, i32 5
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier78) #9
  br label %cleanup

cleanup:                                          ; preds = %probe_out_cleanup, %if.end62.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %probe_out_cleanup ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %notifier = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 5
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  %v4l2_dev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  tail call void @video_unregister_device(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vpfe_get_pdata(ptr noundef %vpfe) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpfe_get_pdata.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpfe_get_pdata, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !387

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vpfe_get_pdata.__UNIQUE_ID_ddebug321, ptr noundef %1, ptr noundef nonnull @.str.23) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %notifier = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 5
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #9
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  br label %cleanup98

if.end5:                                          ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 128, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup98_crit_edge, label %for.cond.preheader

if.end5.cleanup98_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

for.cond.preheader:                               ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #9
  %6 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call11160 = call ptr @of_graph_get_next_endpoint(ptr noundef %8, ptr noundef null) #9
  %tobool12.not161 = icmp eq ptr %call11160, null
  br i1 %tobool12.not161, label %for.cond.preheader.for.end_crit_edge, label %if.end14.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.lr.ph:                                   ; preds = %for.cond.preheader
  %bus_width = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 0, i32 1
  %bus = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2
  br label %if.end14

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %if.end14.lr.ph
  %call11165 = phi ptr [ %call11160, %if.end14.lr.ph ], [ %call11, %for.inc.if.end14_crit_edge ]
  %i.0162 = phi i32 [ 0, %if.end14.lr.ph ], [ %inc, %for.inc.if.end14_crit_edge ]
  %arrayidx = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx, align 8
  %inputs = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 1
  %10 = ptrtoint ptr %inputs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.0162, ptr %inputs, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inputs, i32 0, i32 1
  %call18 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.24, i32 noundef 32) #9
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inputs, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inputs, i32 0, i32 5
  %12 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 16777215, ptr %std, align 8
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inputs, i32 0, i32 7
  %13 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %capabilities, align 4
  %can_route = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 3
  %14 = ptrtoint ptr %can_route to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %can_route, align 4
  %routes = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 2
  %15 = ptrtoint ptr %routes to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %routes, align 8
  %vpfe_param = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call11165, ptr noundef nonnull @.str.25, ptr noundef %vpfe_param, i32 noundef 1, i32 noundef 0) #9
  %16 = ptrtoint ptr %vpfe_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vpfe_param, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp30 = icmp ugt i32 %17, 4
  br i1 %cmp30, label %if.then31, label %if.end14.cond.end_crit_edge

if.end14.cond.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %vpfe_param to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %vpfe_param, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then31, %if.end14.cond.end_crit_edge
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call11165, i32 0, i32 3
  %call37 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %bus_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #12
  br label %cleanup96

if.end43:                                         ; preds = %cond.end
  %19 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bus_width, align 4
  %conv = zext i8 %20 to i32
  %bus_width45 = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 4, i32 3
  %21 = ptrtoint ptr %bus_width45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %bus_width45, align 4
  %22 = add i8 %20, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %22)
  %23 = icmp ult i8 %22, -9
  br i1 %23, label %do.end58, label %if.end59

do.end58:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #12
  br label %cleanup96

if.end59:                                         ; preds = %if.end43
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end59.if.end66_crit_edge, label %if.then64

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %hdpol = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 4, i32 1
  %26 = ptrtoint ptr %hdpol to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %hdpol, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end59.if.end66_crit_edge
  %and67 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %vdpol = getelementptr [1 x %struct.vpfe_subdev_info], ptr %call.i, i32 0, i32 %i.0162, i32 4, i32 2
  %27 = ptrtoint ptr %vdpol to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %vdpol, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.if.end71_crit_edge
  %call72 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call11165) #9
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %do.end77, label %cond.end86

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %call11165) #12
  br label %cleanup96

cond.end86:                                       ; preds = %if.end71
  %fwnode84 = getelementptr inbounds %struct.device_node, ptr %call72, i32 0, i32 3
  %call88 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %fwnode84, i32 noundef 28) #9
  %arrayidx89 = getelementptr %struct.vpfe_config, ptr %call.i, i32 0, i32 1, i32 %i.0162
  %28 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call88, ptr %arrayidx89, align 4
  call void @of_node_put(ptr noundef nonnull %call72) #9
  %29 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx89, align 4
  %cmp.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cond.end86.cleanup96_crit_edge, label %for.inc

cond.end86.cleanup96_crit_edge:                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

for.inc:                                          ; preds = %cond.end86
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #9
  %inc = add i32 %i.0162, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #9
  %31 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call11 = call ptr @of_graph_get_next_endpoint(ptr noundef %33, ptr noundef nonnull %call11165) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end14_crit_edge

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #9
  call void @of_node_put(ptr noundef null) #9
  br label %cleanup98

cleanup96:                                        ; preds = %cond.end86.cleanup96_crit_edge, %do.end77, %do.end58, %do.end42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #9
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  call void @of_node_put(ptr noundef nonnull %call11165) #9
  br label %cleanup98

cleanup98:                                        ; preds = %cleanup96, %for.end, %if.end5.cleanup98_crit_edge, %if.then4
  %retval.0 = phi ptr [ null, %cleanup96 ], [ %call.i, %for.end ], [ %5, %if.then4 ], [ null, %if.end5.cleanup98_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_isr(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %field2 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 16, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field2, align 4
  %stopping3 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %stopping3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stopping3, align 4
  %base_addr.i = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 26, i32 0, i32 3
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !388
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_frm, align 8
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next_frm, align 4
  %cmp5.not = icmp eq ptr %9, %11
  br i1 %cmp5.not, label %if.then4.if.end7_crit_edge, label %if.then6

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i64 @ktime_get() #9
  %12 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_frm, align 8
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %15 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field2, align 4
  %17 = load ptr, ptr %cur_frm, align 8
  %field4.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %field4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %field4.i, align 4
  %sequence.i = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sequence.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %sequence.i, align 8
  %21 = load ptr, ptr %cur_frm, align 8
  %sequence7.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sequence7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %sequence7.i, align 8
  %23 = load ptr, ptr %cur_frm, align 8
  tail call void @vb2_buffer_done(ptr noundef %23, i32 noundef 5) #9
  %24 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next_frm, align 4
  %26 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %cur_frm, align 8
  br label %if.end7

if.else:                                          ; preds = %if.then
  %27 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !388
  %30 = lshr i32 %29, 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %and.i.i = and i32 %30, 1
  %field1.i = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 6
  %31 = ptrtoint ptr %field1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field1.i, align 4
  %xor.i = xor i32 %32, 1
  store i32 %xor.i, ptr %field1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %xor.i)
  %cmp.i = icmp eq i32 %and.i.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else18.i

if.then.i:                                        ; preds = %if.else
  %cur_frm.i44 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 14
  %33 = ptrtoint ptr %cur_frm.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_frm.i44, align 8
  %next_frm.i45 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 15
  %35 = ptrtoint ptr %next_frm.i45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next_frm.i45, align 4
  %cmp5.not.i = icmp eq ptr %34, %36
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  br i1 %cmp5.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then6.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i64 @ktime_get() #9
  %37 = ptrtoint ptr %cur_frm.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_frm.i44, align 8
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i.i.i, ptr %timestamp.i.i, align 8
  %40 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %field2, align 4
  %42 = load ptr, ptr %cur_frm.i44, align 8
  %field4.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %field4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %field4.i.i, align 4
  %sequence.i.i = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 7
  %44 = ptrtoint ptr %sequence.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sequence.i.i, align 8
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %sequence.i.i, align 8
  %46 = load ptr, ptr %cur_frm.i44, align 8
  %sequence7.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %sequence7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %sequence7.i.i, align 8
  %48 = load ptr, ptr %cur_frm.i44, align 8
  tail call void @vb2_buffer_done(ptr noundef %48, i32 noundef 5) #9
  %49 = ptrtoint ptr %next_frm.i45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next_frm.i45, align 4
  %51 = ptrtoint ptr %cur_frm.i44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %cur_frm.i44, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then4.i.if.end.i_crit_edge
  %52 = ptrtoint ptr %stopping3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stopping3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp9.i = icmp eq i32 %1, 5
  %or.cond.i = and i1 %cmp9.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then10.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %next_frm.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %next_frm.i45, align 4
  %call.i.i39.i = tail call ptr @vb2_plane_cookie(ptr noundef %55, i32 noundef 0) #9
  %56 = ptrtoint ptr %call.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i.i39.i, align 4
  %field_off.i.i = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 25
  %58 = ptrtoint ptr %field_off.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %field_off.i.i, align 4
  %add.i.i = add i32 %59, %57
  %and.i.i.i = and i32 %add.i.i, -32
  %60 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %61, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %62) #9, !srcloc !391
  br label %if.end7

if.else.i:                                        ; preds = %if.then.i
  br i1 %cmp5.not.i, label %if.then15.i, label %if.else.i.if.end7_crit_edge

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vpfe_schedule_next_buffer(ptr noundef %dev) #9
  br label %if.end7

if.else18.i:                                      ; preds = %if.else
  br i1 %cmp3.i, label %if.then20.i, label %if.else18.i.if.end7_crit_edge

if.else18.i.if.end7_crit_edge:                    ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then20.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %field1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %field1.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then20.i, %if.else18.i.if.end7_crit_edge, %if.then15.i, %if.else.i.if.end7_crit_edge, %if.then10.i, %if.end.i.if.end7_crit_edge, %if.then6, %if.then4.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.end12.thread

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %stopping3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %stopping3, align 4
  %capture_stop = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 28
  tail call void @complete(ptr noundef %capture_stop) #9
  br label %if.end24

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %entry.if.end12_crit_edge
  %and13 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool14.not, i1 %tobool15.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp17 = icmp eq i32 %1, 1
  %or.cond43 = select i1 %or.cond, i1 %cmp17, i1 false
  br i1 %or.cond43, label %land.lhs.true18, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true18:                                  ; preds = %if.end12
  %cur_frm19 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 14
  %65 = ptrtoint ptr %cur_frm19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur_frm19, align 8
  %next_frm20 = getelementptr inbounds %struct.vpfe_device, ptr %dev, i32 0, i32 15
  %67 = ptrtoint ptr %next_frm20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next_frm20, align 4
  %cmp21 = icmp eq ptr %66, %68
  br i1 %cmp21, label %if.then22, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vpfe_schedule_next_buffer(ptr noundef %dev)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true18.if.end24_crit_edge, %if.end12.if.end24_crit_edge, %if.end12.thread
  %69 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 280
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %72 = icmp ult i32 %switch.tableidx, 4
  br i1 %72, label %switch.lookup, label %if.end24.vpfe_clear_intr.exit_crit_edge

if.end24.vpfe_clear_intr.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_clear_intr.exit

switch.lookup:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vpfe_isr, i32 0, i32 %switch.tableidx
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vpfe_clear_intr.exit

vpfe_clear_intr.exit:                             ; preds = %switch.lookup, %if.end24.vpfe_clear_intr.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 7, %if.end24.vpfe_clear_intr.exit_crit_edge ]
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  %or8.i = or i32 %.sink.i, %74
  %75 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %76, i32 280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %77 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %77) #9, !srcloc !391
  %78 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %79, i32 280
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %81 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %82, i32 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 16777216) #9, !srcloc !391
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpfe_schedule_next_buffer(ptr noundef %vpfe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %dma_queue_lock) #9
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 22
  %0 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %dma_queue
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %dma_queue_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 15
  %2 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dma_queue_lock) #9
  %11 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_frm, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %and.i = and i32 %14, -32
  %base_addr.i.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 3
  %15 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #9, !srcloc !391
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_async_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  %mbus_code = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbus_code) #9
  %cfg = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %asd1 = getelementptr inbounds %struct.vpfe_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %asd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asd1, align 4
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match, align 4
  %match3 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %asd, i32 0, i32 1
  %8 = ptrtoint ptr %match3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %match3, align 4
  %cmp4 = icmp eq ptr %7, %9
  br i1 %cmp4, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %name14 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef %name14) #12
  br label %cleanup

if.end16:                                         ; preds = %entry
  %sd = getelementptr i8, ptr %1, i32 -8
  %10 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %subdev, ptr %11, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %15 = load ptr, ptr %sd, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %grp_id10 = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %grp_id10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %grp_id10, align 4
  %std = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %std, align 8
  %tvnorms = getelementptr i8, ptr %1, i32 -56
  %21 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tvnorms, align 8
  %or = or i64 %22, %20
  store i64 %or, ptr %tvnorms, align 8
  %num_active_fmt = getelementptr i8, ptr %1, i32 488
  %23 = ptrtoint ptr %num_active_fmt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_active_fmt, align 8
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 1
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 3
  %tobool21.not = icmp eq ptr %subdev, null
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 6
  %name56 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %name58 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  %code = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code, i32 0, i32 2
  %active_fmt = getelementptr i8, ptr %1, i32 448
  br label %for.body20

for.body20:                                       ; preds = %for.inc95.for.body20_crit_edge, %if.end16
  %j.0167 = phi i32 [ 0, %if.end16 ], [ %inc96, %for.inc95.for.body20_crit_edge ]
  %i.1166 = phi i32 [ 0, %if.end16 ], [ %i.4, %for.inc95.for.body20_crit_edge ]
  %24 = call ptr @memset(ptr %mbus_code, i32 0, i32 48)
  %25 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %j.0167, ptr %index, align 4
  %26 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %which, align 4
  br i1 %tobool21.not, label %for.body20.for.inc95_crit_edge, label %if.else

for.body20.for.inc95_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc95

if.else:                                          ; preds = %for.body20
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad, align 4
  %tobool23.not = icmp eq ptr %30, null
  br i1 %tobool23.not, label %if.else.for.inc95_crit_edge, label %land.lhs.true

if.else.for.inc95_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc95

land.lhs.true:                                    ; preds = %if.else
  %enum_mbus_code = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %enum_mbus_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enum_mbus_code, align 4
  %tobool26.not = icmp eq ptr %32, null
  br i1 %tobool26.not, label %land.lhs.true.for.inc95_crit_edge, label %if.else28

land.lhs.true.for.inc95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc95

if.else28:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %enum_mbus_code31 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %enum_mbus_code31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enum_mbus_code31, align 4
  %tobool32.not = icmp eq ptr %35, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end43_crit_edge

land.lhs.true30.if.end43_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end43

if.end43:                                         ; preds = %if.else36, %land.lhs.true30.if.end43_crit_edge
  %.sink = phi ptr [ %32, %if.else36 ], [ %35, %land.lhs.true30.if.end43_crit_edge ]
  %call40 = call i32 %.sink(ptr noundef nonnull %subdev, ptr noundef null, ptr noundef nonnull %mbus_code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool45.not = icmp eq i32 %call40, 0
  br i1 %tobool45.not, label %do.body48, label %if.end43.for.inc95_crit_edge

if.end43.for.inc95_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc95

do.body48:                                        ; preds = %if.end43
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp49 = icmp sgt i32 %36, 2
  br i1 %cmp49, label %do.end53, label %do.body48.for.body66.preheader_crit_edge

do.body48.for.body66.preheader_crit_edge:         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66.preheader

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name56, ptr noundef %name58, i32 noundef %38, i32 noundef %j.0167) #12
  br label %for.body66.preheader

for.body66.preheader:                             ; preds = %do.end53, %do.body48.for.body66.preheader_crit_edge
  br label %for.body66

for.body66:                                       ; preds = %for.inc92.for.body66_crit_edge, %for.body66.preheader
  %k.0165 = phi i32 [ %inc93, %for.inc92.for.body66_crit_edge ], [ 0, %for.body66.preheader ]
  %i.2164 = phi i32 [ %i.3, %for.inc92.for.body66_crit_edge ], [ %i.1166, %for.body66.preheader ]
  %arrayidx67 = getelementptr [10 x %struct.vpfe_fmt], ptr @formats, i32 0, i32 %k.0165
  %39 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code, align 4
  %code69 = getelementptr [10 x %struct.vpfe_fmt], ptr @formats, i32 0, i32 %k.0165, i32 1
  %41 = ptrtoint ptr %code69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %code69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp70.not = icmp eq i32 %40, %42
  br i1 %cmp70.not, label %if.end72, label %for.body66.for.inc92_crit_edge

for.body66.for.inc92_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92

if.end72:                                         ; preds = %for.body66
  %arrayidx73 = getelementptr [10 x ptr], ptr %active_fmt, i32 0, i32 %i.2164
  %43 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx67, ptr %arrayidx73, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp75 = icmp sgt i32 %44, 2
  br i1 %cmp75, label %do.end79, label %if.end72.do.end89_crit_edge

if.end72.do.end89_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end89

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx67, align 4
  %conv.i = trunc i32 %46 to i8
  store i8 %conv.i, ptr @print_fourcc.code, align 1
  %shr.i = lshr i32 %46, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %46, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %46, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %47 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %code, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name56, ptr noundef nonnull @print_fourcc.code, i32 noundef %48, i32 noundef %i.2164) #12
  br label %do.end89

do.end89:                                         ; preds = %do.end79, %if.end72.do.end89_crit_edge
  %inc90 = add i32 %i.2164, 1
  %49 = ptrtoint ptr %num_active_fmt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc90, ptr %num_active_fmt, align 8
  br label %for.inc92

for.inc92:                                        ; preds = %do.end89, %for.body66.for.inc92_crit_edge
  %i.3 = phi i32 [ %i.2164, %for.body66.for.inc92_crit_edge ], [ %inc90, %do.end89 ]
  %inc93 = add nuw nsw i32 %k.0165, 1
  %exitcond.not = icmp eq i32 %inc93, 10
  br i1 %exitcond.not, label %for.inc92.for.inc95_crit_edge, label %for.inc92.for.body66_crit_edge

for.inc92.for.body66_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

for.inc92.for.inc95_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc95

for.inc95:                                        ; preds = %for.inc92.for.inc95_crit_edge, %if.end43.for.inc95_crit_edge, %land.lhs.true.for.inc95_crit_edge, %if.else.for.inc95_crit_edge, %for.body20.for.inc95_crit_edge
  %__result.0163 = phi i32 [ %call40, %if.end43.for.inc95_crit_edge ], [ -515, %if.else.for.inc95_crit_edge ], [ -515, %land.lhs.true.for.inc95_crit_edge ], [ -19, %for.body20.for.inc95_crit_edge ], [ 0, %for.inc92.for.inc95_crit_edge ]
  %i.4 = phi i32 [ %i.1166, %if.end43.for.inc95_crit_edge ], [ %i.1166, %if.else.for.inc95_crit_edge ], [ %i.1166, %land.lhs.true.for.inc95_crit_edge ], [ %i.1166, %for.body20.for.inc95_crit_edge ], [ %i.3, %for.inc92.for.inc95_crit_edge ]
  %inc96 = add i32 %j.0167, 1
  %cmp19.not = icmp eq i32 %__result.0163, -22
  br i1 %cmp19.not, label %for.end97, label %for.inc95.for.body20_crit_edge

for.inc95.for.body20_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.end97:                                        ; preds = %for.inc95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4)
  %tobool98.not = icmp eq i32 %i.4, 0
  br i1 %tobool98.not, label %do.end102, label %for.end97.cleanup_crit_edge

for.end97.cleanup_crit_edge:                      ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end102:                                        ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name56, ptr noundef %name58) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %for.end97.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end102 ], [ -22, %do.end ], [ 0, %for.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_async_complete(ptr nocapture noundef readonly %notifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1360
  %dma_queue_lock.i = getelementptr i8, ptr %1, i32 1028
  tail call void @__raw_spin_lock_init(ptr noundef %dma_queue_lock.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @vpfe_probe_complete.__key, i16 noundef signext 3) #9
  %lock.i = getelementptr i8, ptr %1, i32 1072
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @vpfe_probe_complete.__key.45) #9
  %fmt.i = getelementptr i8, ptr %1, i32 240
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %fmt.i, align 8
  %cfg.i = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg.i, align 4
  %current_subdev.i = getelementptr i8, ptr %1, i32 204
  %5 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %current_subdev.i, align 4
  %sd.i = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler.i, align 4
  %ctrl_handler5.i = getelementptr i8, ptr %1, i32 100
  %12 = ptrtoint ptr %ctrl_handler5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ctrl_handler5.i, align 4
  %call6.i = tail call fastcc i32 @vpfe_set_input(ptr noundef %add.ptr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.probe_out.i_crit_edge

entry.probe_out.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out.i

if.end.i:                                         ; preds = %entry
  %buffer_queue.i = getelementptr i8, ptr %1, i32 508
  %13 = ptrtoint ptr %buffer_queue.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %buffer_queue.i, align 4
  %io_modes.i = getelementptr i8, ptr %1, i32 512
  %14 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 21, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr i8, ptr %1, i32 548
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %drv_priv.i, align 4
  %ops.i = getelementptr i8, ptr %1, i32 536
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vpfe_video_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr i8, ptr %1, i32 540
  %17 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr i8, ptr %1, i32 556
  %18 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr i8, ptr %1, i32 560
  %19 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %lock9.i = getelementptr i8, ptr %1, i32 528
  %20 = ptrtoint ptr %lock9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock.i, ptr %lock9.i, align 4
  %min_buffers_needed.i = getelementptr i8, ptr %1, i32 568
  %21 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %min_buffers_needed.i, align 4
  %pdev.i = getelementptr i8, ptr %1, i32 128
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr i8, ptr %1, i32 516
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %dev.i, align 4
  %call10.i = tail call i32 @vb2_queue_init(ptr noundef %buffer_queue.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %if.end.i.probe_out.sink.split.i_crit_edge

if.end.i.probe_out.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out.sink.split.i

if.end18.i:                                       ; preds = %if.end.i
  %dma_queue.i = getelementptr i8, ptr %1, i32 1020
  %25 = ptrtoint ptr %dma_queue.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %dma_queue.i, ptr %dma_queue.i, align 4
  %prev.i.i = getelementptr i8, ptr %1, i32 1024
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dma_queue.i, ptr %prev.i.i, align 4
  %name19.i = getelementptr i8, ptr %1, i32 -168
  %call21.i = tail call i32 @strscpy(ptr noundef %name19.i, ptr noundef nonnull @.str.3, i32 noundef 32) #9
  %release.i = getelementptr i8, ptr %1, i32 -48
  %27 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %fops.i = getelementptr i8, ptr %1, i32 -1132
  %28 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vpfe_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr i8, ptr %1, i32 -44
  %29 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vpfe_ioctl_ops, ptr %ioctl_ops.i, align 4
  %v4l2_dev23.i = getelementptr i8, ptr %1, i32 -188
  %30 = ptrtoint ptr %v4l2_dev23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %v4l2_dev23.i, align 4
  %vfl_dir.i = getelementptr i8, ptr %1, i32 -132
  %31 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %vfl_dir.i, align 4
  %queue.i = getelementptr i8, ptr %1, i32 -176
  %32 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buffer_queue.i, ptr %queue.i, align 8
  %lock25.i = getelementptr i8, ptr %1, i32 -16
  %33 = ptrtoint ptr %lock25.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lock.i, ptr %lock25.i, align 8
  %device_caps.i = getelementptr i8, ptr %1, i32 -1128
  %34 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 83886081, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 -956
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %add.ptr, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not.i, label %if.end18.i.vpfe_probe_complete.exit_crit_edge, label %if.end18.i.probe_out.sink.split.i_crit_edge

if.end18.i.probe_out.sink.split.i_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_out.sink.split.i

if.end18.i.vpfe_probe_complete.exit_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_probe_complete.exit

probe_out.sink.split.i:                           ; preds = %if.end18.i.probe_out.sink.split.i_crit_edge, %if.end.i.probe_out.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %if.end.i.probe_out.sink.split.i_crit_edge ], [ @.str.50, %if.end18.i.probe_out.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ %call10.i, %if.end.i.probe_out.sink.split.i_crit_edge ], [ %call.i.i, %if.end18.i.probe_out.sink.split.i_crit_edge ]
  %name35.i = getelementptr i8, ptr %1, i32 60
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink.i, ptr noundef %name35.i) #12
  br label %probe_out.i

probe_out.i:                                      ; preds = %probe_out.sink.split.i, %entry.probe_out.i_crit_edge
  %err.0.i = phi i32 [ %call6.i, %entry.probe_out.i_crit_edge ], [ %err.0.ph.i, %probe_out.sink.split.i ]
  tail call void @v4l2_device_unregister(ptr noundef %1) #9
  br label %vpfe_probe_complete.exit

vpfe_probe_complete.exit:                         ; preds = %probe_out.i, %if.end18.i.vpfe_probe_complete.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %probe_out.i ], [ 0, %if.end18.i.vpfe_probe_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpfe_set_input(ptr noundef %vpfe, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_buffers.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 21, i32 21
  %0 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.53) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp13.i = icmp slt i32 %index, 1
  br i1 %cmp13.i, label %if.end12, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name9 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name9, i32 noundef %index) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %sd = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 1
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %sd14 = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %sd14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sd14, align 8
  %routes = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %routes, align 8
  %arrayidx15 = getelementptr %struct.vpfe_route, ptr %10, i32 %index
  %tobool.not = icmp eq ptr %arrayidx15, null
  br i1 %tobool.not, label %if.end12.if.end61_crit_edge, label %land.lhs.true

if.end12.if.end61_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end12
  %can_route = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %can_route to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_route, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end61_crit_edge, label %if.then17

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then17:                                        ; preds = %land.lhs.true
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15, align 4
  %output19 = getelementptr %struct.vpfe_route, ptr %10, i32 %index, i32 1
  %15 = ptrtoint ptr %output19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output19, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %if.then17.if.end61_crit_edge, label %if.else

if.then17.if.end61_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else:                                          ; preds = %if.then17
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.else.do.end53_crit_edge, label %land.lhs.true27

if.else.do.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

land.lhs.true27:                                  ; preds = %if.else
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %land.lhs.true27.do.end53_crit_edge, label %if.else32

land.lhs.true27.do.end53_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.else32:                                        ; preds = %land.lhs.true27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %if.else32.if.else40_crit_edge, label %land.lhs.true34

if.else32.if.else40_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else40

land.lhs.true34:                                  ; preds = %if.else32
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %land.lhs.true34.if.else40_crit_edge, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true34.if.else40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else40

if.else40:                                        ; preds = %land.lhs.true34.if.else40_crit_edge, %if.else32.if.else40_crit_edge
  br label %if.end47

if.end47:                                         ; preds = %if.else40, %land.lhs.true34.if.end47_crit_edge
  %.sink = phi ptr [ %22, %if.else40 ], [ %25, %land.lhs.true34.if.end47_crit_edge ]
  %call44 = tail call i32 %.sink(ptr noundef nonnull %7, i32 noundef %14, i32 noundef %16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool49.not = icmp eq i32 %call44, 0
  br i1 %tobool49.not, label %if.end47.if.end61_crit_edge, label %if.end47.do.end53_crit_edge

if.end47.do.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end53:                                         ; preds = %if.end47.do.end53_crit_edge, %land.lhs.true27.do.end53_crit_edge, %if.else.do.end53_crit_edge
  %name56 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name56) #12
  br label %cleanup

if.end61:                                         ; preds = %if.end47.if.end61_crit_edge, %if.then17.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %if.end12.if.end61_crit_edge
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 9
  %26 = ptrtoint ptr %current_subdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %current_subdev, align 4
  %27 = ptrtoint ptr %sd14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd14, align 8
  %tobool63.not = icmp eq ptr %28, null
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %if.then64

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler67 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %ctrl_handler67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ctrl_handler67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61.if.end68_crit_edge
  %current_input = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 10
  %32 = ptrtoint ptr %current_input to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %index, ptr %current_input, align 8
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 12
  %33 = ptrtoint ptr %std_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %std_index, align 8
  %ccdc = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26
  %vpfe_param = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4
  %34 = ptrtoint ptr %vpfe_param to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vpfe_param, align 4
  %36 = ptrtoint ptr %ccdc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ccdc, align 4
  %37 = load i32, ptr %vpfe_param, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %if.end68.cleanup_crit_edge [
    i32 1, label %if.end68.sw.bb.i_crit_edge
    i32 4, label %if.end68.sw.bb.i_crit_edge132
    i32 3, label %if.end68.sw.bb.i_crit_edge133
    i32 2, label %if.end68.sw.bb.i_crit_edge134
    i32 0, label %sw.bb6.i
  ]

if.end68.sw.bb.i_crit_edge134:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end68.sw.bb.i_crit_edge133:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end68.sw.bb.i_crit_edge132:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end68.sw.bb.i_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end68.sw.bb.i_crit_edge, %if.end68.sw.bb.i_crit_edge132, %if.end68.sw.bb.i_crit_edge133, %if.end68.sw.bb.i_crit_edge134
  %vdpol.i = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %vdpol.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vdpol.i, align 4
  %vd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 6
  %41 = ptrtoint ptr %vd_pol.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %vd_pol.i, align 4
  %hdpol.i = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %hdpol.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hdpol.i, align 4
  %hd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 7
  %44 = ptrtoint ptr %hd_pol.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hd_pol.i, align 4
  br label %if.end72

sw.bb6.i:                                         ; preds = %if.end68
  %vdpol7.i = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %vdpol7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vdpol7.i, align 4
  %vd_pol9.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 6
  %47 = ptrtoint ptr %vd_pol9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vd_pol9.i, align 4
  %hdpol10.i = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %hdpol10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hdpol10.i, align 4
  %hd_pol13.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 7
  %50 = ptrtoint ptr %hd_pol13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %hd_pol13.i, align 4
  %bus_width.i = getelementptr [1 x %struct.vpfe_subdev_info], ptr %3, i32 0, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %52)
  %cmp.i122 = icmp eq i32 %52, 10
  %spec.select.i = select i1 %cmp.i122, i32 6, i32 7
  %53 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 10
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i, ptr %53, align 4
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp20.i = icmp sgt i32 %55, 0
  br i1 %cmp20.i, label %do.body28.i, label %sw.bb6.i.if.end72_crit_edge

sw.bb6.i.if.end72_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

do.body28.i:                                      ; preds = %sw.bb6.i
  %name.i = getelementptr %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_width.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name.i, i32 noundef %57) #12
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp29.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %do.body28.i.if.end72_crit_edge

do.body28.i.if.end72_crit_edge:                   ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

do.end33.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 4
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name.i, i32 noundef %59) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end33.i, %do.body28.i.if.end72_crit_edge, %sw.bb6.i.if.end72_crit_edge, %sw.bb.i
  %60 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %std_index, align 8
  %arrayidx74 = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx74, align 8
  %call75 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %vpfe, i64 noundef %63)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end68.cleanup_crit_edge, %do.end53, %do.end6, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call75, %if.end72 ], [ -22, %do.end6 ], [ -22, %do.end53 ], [ -22, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpfe_config_image_format(ptr noundef %vpfe, i64 noundef %std_id) unnamed_addr #2 align 64 {
entry:
  %sd_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std_id, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.inc:                                          ; preds = %entry
  %and.1 = and i64 %std_id, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %do.end, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name) #12
  br label %cleanup

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %entry.if.end10_crit_edge
  %i.0119.lcssa = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1, %for.inc.if.end10_crit_edge ]
  %width = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0119.lcssa, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %std_info = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 11
  %2 = ptrtoint ptr %std_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %std_info, align 4
  %height = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0119.lcssa, i32 2
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %active_lines = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %active_lines to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %active_lines, align 4
  %frame_format = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0119.lcssa, i32 4
  %6 = ptrtoint ptr %frame_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_format, align 8
  %frame_format7 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %frame_format7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frame_format7, align 4
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 12
  %9 = ptrtoint ptr %std_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0119.lcssa, ptr %std_index, align 8
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 9
  %10 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_subdev.i, align 4
  %sd1.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %sd1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd1.i, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  %14 = getelementptr inbounds i8, ptr %sd_fmt.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 80)
  %16 = ptrtoint ptr %sd_fmt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %sd_fmt.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 1
  %17 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pad.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end10.__subdev_get_format.exit.thread_crit_edge, label %if.else.i

if.end10.__subdev_get_format.exit.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_get_format.exit.thread

if.else.i:                                        ; preds = %if.end10
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %pad2.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad2.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.else.i.__subdev_get_format.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.__subdev_get_format.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_get_format.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_fmt.i, align 4
  %tobool6.not.i = icmp eq ptr %23, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.__subdev_get_format.exit.thread_crit_edge, label %if.else8.i

land.lhs.true.i.__subdev_get_format.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_get_format.exit.thread

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool9.not.i = icmp eq ptr %24, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %get_fmt11.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %get_fmt11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_fmt11.i, align 4
  %tobool12.not.i = icmp eq ptr %26, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end21.i_crit_edge

land.lhs.true10.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else15.i, %land.lhs.true10.i.if.end21.i_crit_edge
  %.sink.i = phi ptr [ %23, %if.else15.i ], [ %26, %land.lhs.true10.i.if.end21.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %sd_fmt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool22.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end21.i.__subdev_get_format.exit.thread_crit_edge

if.end21.i.__subdev_get_format.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_get_format.exit.thread

if.end24.i:                                       ; preds = %if.end21.i
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %mbus_fmt.sroa.0.0.copyload = load i32, ptr %14, align 4
  %mbus_fmt.sroa.7.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %mbus_fmt.sroa.7.0.format.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %mbus_fmt.sroa.7.0.copyload = load i32, ptr %mbus_fmt.sroa.7.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.10.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %mbus_fmt.sroa.10.0.format.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %mbus_fmt.sroa.10.0.copyload = load i32, ptr %mbus_fmt.sroa.10.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.13.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %mbus_fmt.sroa.13.0.copyload = load i32, ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.14.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %mbus_fmt.sroa.14.0.format.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %mbus_fmt.sroa.14.0.copyload = load i32, ptr %mbus_fmt.sroa.14.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.15.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %32)
  %mbus_fmt.sroa.15.0.copyload = load i16, ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.16.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %mbus_fmt.sroa.16.0.format.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %mbus_fmt.sroa.16.0.copyload = load i16, ptr %mbus_fmt.sroa.16.0.format.i.sroa_idx, align 2
  %mbus_fmt.sroa.17.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %mbus_fmt.sroa.17.0.format.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %mbus_fmt.sroa.17.0.copyload = load i16, ptr %mbus_fmt.sroa.17.0.format.i.sroa_idx, align 4
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp sgt i32 %35, 0
  br i1 %cmp.i, label %do.end.i, label %if.end24.i.if.end14_crit_edge

if.end24.i.if.end14_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end.i:                                         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i, ptr noundef nonnull @.str.71, i32 noundef %mbus_fmt.sroa.0.0.copyload, i32 noundef %mbus_fmt.sroa.7.0.copyload, i32 noundef %mbus_fmt.sroa.10.0.copyload) #12
  br label %if.end14

__subdev_get_format.exit.thread:                  ; preds = %if.end21.i.__subdev_get_format.exit.thread_crit_edge, %land.lhs.true.i.__subdev_get_format.exit.thread_crit_edge, %if.else.i.__subdev_get_format.exit.thread_crit_edge, %if.end10.__subdev_get_format.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end10.__subdev_get_format.exit.thread_crit_edge ], [ -515, %land.lhs.true.i.__subdev_get_format.exit.thread_crit_edge ], [ -515, %if.else.i.__subdev_get_format.exit.thread_crit_edge ], [ %call19.i, %if.end21.i.__subdev_get_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  br label %cleanup

if.end14:                                         ; preds = %do.end.i, %if.end24.i.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  %num_active_fmt.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 19
  %36 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_active_fmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp8.not.i = icmp eq i32 %37, 0
  br i1 %cmp8.not.i, label %if.end14.do.body18_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.do.body18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not.i, label %for.cond.i.do.body18_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.body18_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %k.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %vpfe, i32 0, i32 18, i32 %k.09.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %code1.i = getelementptr inbounds %struct.vpfe_fmt, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %code1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %code1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mbus_fmt.sroa.10.0.copyload)
  %cmp2.i = icmp eq i32 %41, %mbus_fmt.sroa.10.0.copyload
  br i1 %cmp2.i, label %find_format_by_code.exit, label %for.cond.i

find_format_by_code.exit:                         ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %39, null
  br i1 %tobool16.not, label %find_format_by_code.exit.do.body18_crit_edge, label %if.end5.i

find_format_by_code.exit.do.body18_crit_edge:     ; preds = %find_format_by_code.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.body18:                                        ; preds = %find_format_by_code.exit.do.body18_crit_edge, %for.cond.i.do.body18_crit_edge, %if.end14.do.body18_crit_edge
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp19 = icmp sgt i32 %42, 2
  br i1 %cmp19, label %do.end23, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %name26 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name26, i32 noundef %mbus_fmt.sroa.10.0.copyload) #12
  br label %cleanup

if.end5.i:                                        ; preds = %find_format_by_code.exit
  %fmt34 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16
  %fmt35 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1
  %43 = ptrtoint ptr %fmt35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mbus_fmt.sroa.0.0.copyload, ptr %fmt35, align 4
  %height2.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mbus_fmt.sroa.7.0.copyload, ptr %height2.i, align 4
  %field3.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mbus_fmt.sroa.13.0.copyload, ptr %field3.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mbus_fmt.sroa.14.0.copyload, ptr %colorspace4.i, align 4
  %conv.i = zext i16 %mbus_fmt.sroa.15.0.copyload to i32
  %47 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i, ptr %47, align 4
  %conv5.i = zext i16 %mbus_fmt.sroa.16.0.copyload to i32
  %quantization6.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %conv7.i = zext i16 %mbus_fmt.sroa.17.0.copyload to i32
  %xfer_func8.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  %51 = ptrtoint ptr %fmt34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %fmt34, align 8
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %39, align 4
  %pixelformat = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %pixelformat, align 4
  %55 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %current_subdev.i, align 4
  %bus_width1.i.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %56, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %bus_width1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_width1.i.i, align 4
  %add.i.i = add i32 %58, 7
  %shr.i.i = lshr i32 %add.i.i, 3
  %bitsperpixel.i.i = getelementptr inbounds %struct.vpfe_fmt, ptr %39, i32 0, i32 2
  %59 = ptrtoint ptr %bitsperpixel.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bitsperpixel.i.i, align 4
  %add2.i.i = add i32 %58, -1
  %sub.i.i = add i32 %add2.i.i, %60
  %div.i.i = udiv i32 %sub.i.i, %58
  %mul.i.i = mul i32 %div.i.i, %shr.i.i
  %mul.i = mul i32 %mul.i.i, %mbus_fmt.sroa.0.0.copyload
  %add.i = add i32 %mul.i, 31
  %and.i = and i32 %add.i, -32
  %bytesperline.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i, ptr %bytesperline.i, align 4
  %mul12.i = mul i32 %and.i, %mbus_fmt.sroa.7.0.copyload
  %sizeimage.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 5
  %62 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul12.i, ptr %sizeimage.i, align 4
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp15.i = icmp sgt i32 %63, 2
  br i1 %cmp15.i, label %do.end19.i, label %if.end5.i.vpfe_calc_format_size.exit_crit_edge

if.end5.i.vpfe_calc_format_size.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_calc_format_size.exit

do.end19.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %name22.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pixelformat, align 4
  %conv.i.i = trunc i32 %65 to i8
  store i8 %conv.i.i, ptr @print_fourcc.code, align 1
  %shr.i50.i = lshr i32 %65, 8
  %conv2.i.i = trunc i32 %shr.i50.i to i8
  store i8 %conv2.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i.i = lshr i32 %65, 16
  %conv5.i.i = trunc i32 %shr3.i.i to i8
  store i8 %conv5.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i.i = lshr i32 %65, 24
  %conv8.i.i = trunc i32 %shr6.i.i to i8
  store i8 %conv8.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name22.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @print_fourcc.code, i32 noundef %mbus_fmt.sroa.0.0.copyload, i32 noundef %mbus_fmt.sroa.7.0.copyload, i32 noundef %and.i, i32 noundef %mul12.i) #12
  br label %vpfe_calc_format_size.exit

vpfe_calc_format_size.exit:                       ; preds = %do.end19.i, %if.end5.i.vpfe_calc_format_size.exit_crit_edge
  %current_vpfe_fmt = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 17
  %66 = ptrtoint ptr %current_vpfe_fmt to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %39, ptr %current_vpfe_fmt, align 4
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20
  %top = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20, i32 1
  %67 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %top, align 4
  %68 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %crop, align 4
  %width44 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20, i32 2
  %69 = ptrtoint ptr %width44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mbus_fmt.sroa.0.0.copyload, ptr %width44, align 4
  %height47 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20, i32 3
  %70 = ptrtoint ptr %height47 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mbus_fmt.sroa.7.0.copyload, ptr %height47, align 4
  %call48 = call fastcc i32 @vpfe_config_ccdc_image_format(ptr noundef %vpfe)
  br label %cleanup

cleanup:                                          ; preds = %vpfe_calc_format_size.exit, %do.end23, %do.body18.cleanup_crit_edge, %__subdev_get_format.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call48, %vpfe_calc_format_size.exit ], [ -22, %do.end23 ], [ -22, %do.body18.cleanup_crit_edge ], [ %retval.0.i.ph, %__subdev_get_format.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpfe_calc_format_size(ptr noundef %vpfe, ptr noundef readonly %fmt, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 9
  %1 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_subdev.i, align 4
  %bus_width1.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %2, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %bus_width1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus_width1.i, align 4
  %add.i = add i32 %4, 7
  %shr.i = lshr i32 %add.i, 3
  %bitsperpixel.i = getelementptr inbounds %struct.vpfe_fmt, ptr %fmt, i32 0, i32 2
  %5 = ptrtoint ptr %bitsperpixel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitsperpixel.i, align 4
  %add2.i = add i32 %4, -1
  %sub.i = add i32 %add2.i, %6
  %div.i = udiv i32 %sub.i, %4
  %mul.i = mul i32 %div.i, %shr.i
  %fmt7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt7, align 4
  %mul = mul i32 %mul.i, %8
  %add = add i32 %mul, 31
  %and = and i32 %add, -32
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %bytesperline, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %mul12 = mul i32 %and, %11
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul12, ptr %sizeimage, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp15 = icmp sgt i32 %13, 2
  br i1 %cmp15, label %do.end19, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %name22 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  %conv.i = trunc i32 %15 to i8
  store i8 %conv.i, ptr @print_fourcc.code, align 1
  %shr.i50 = lshr i32 %15, 8
  %conv2.i = trunc i32 %shr.i50 to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %15, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %15, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %16 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt7, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name22, ptr noundef nonnull @.str.73, ptr noundef nonnull @print_fourcc.code, i32 noundef %17, i32 noundef %11, i32 noundef %and, i32 noundef %mul12) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end5.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpfe_config_ccdc_image_format(ptr noundef %vpfe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end5, label %do.end5.thread

do.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ccdc62 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26
  %pixelformat863 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %pixelformat863 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pixelformat863, align 4
  br label %do.end5.i

do.end5:                                          ; preds = %entry
  %name = getelementptr %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %pixelformat = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixelformat, align 4
  %conv.i = trunc i32 %4 to i8
  store i8 %conv.i, ptr @print_fourcc.code, align 1
  %shr.i = lshr i32 %4, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %4, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %4, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, ptr noundef nonnull @print_fourcc.code) #12
  %.pr = load i32, ptr @debug, align 4
  %ccdc = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 0
  br i1 %cmp.i, label %do.end.i, label %do.end5.do.end5.i_crit_edge

do.end5.do.end5.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ccdc, align 4
  %conv.i.i = trunc i32 %6 to i8
  store i8 %conv.i.i, ptr @print_fourcc.code, align 1
  %shr.i.i = lshr i32 %6, 8
  %conv2.i.i = trunc i32 %shr.i.i to i8
  store i8 %conv2.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i.i = lshr i32 %6, 16
  %conv5.i.i = trunc i32 %shr3.i.i to i8
  store i8 %conv5.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i.i = lshr i32 %6, 24
  %conv8.i.i = trunc i32 %shr6.i.i to i8
  store i8 %conv8.i.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, ptr noundef nonnull @.str.83, i32 noundef %8, ptr noundef nonnull @print_fourcc.code) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.end5.do.end5.i_crit_edge, %do.end5.thread
  %9 = phi i32 [ %2, %do.end5.thread ], [ %6, %do.end.i ], [ %6, %do.end5.do.end5.i_crit_edge ]
  %ccdc65 = phi ptr [ %ccdc62, %do.end5.thread ], [ %ccdc, %do.end.i ], [ %ccdc, %do.end5.do.end5.i_crit_edge ]
  %10 = ptrtoint ptr %ccdc65 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ccdc65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.i = icmp eq i32 %11, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %do.end5.i
  %bayer.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1
  %12 = ptrtoint ptr %bayer.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bayer.i, align 4
  %alaw.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 10, i32 1
  %13 = ptrtoint ptr %alaw.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %alaw.i, align 4
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %9, label %if.then9.i.do.end14_crit_edge [
    i32 825770306, label %sw.bb.i
    i32 1448695129, label %if.then9.i.if.end20_crit_edge
    i32 1498831189, label %if.then9.i.if.end20_crit_edge73
    i32 842093913, label %if.then9.i.if.end20_crit_edge74
    i32 842094158, label %if.then9.i.if.end20_crit_edge75
    i32 1380075346, label %if.then9.i.if.end20_crit_edge76
  ]

if.then9.i.if.end20_crit_edge76:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then9.i.if.end20_crit_edge75:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then9.i.if.end20_crit_edge74:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then9.i.if.end20_crit_edge73:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then9.i.if.end20_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then9.i.do.end14_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

sw.bb.i:                                          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %alaw.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %alaw.i, align 4
  br label %if.end20

if.else.i:                                        ; preds = %do.end5.i
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %9, label %if.else.i.do.end14_crit_edge [
    i32 1448695129, label %sw.bb20.i
    i32 1498831189, label %sw.bb22.i
  ]

if.else.i.do.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

sw.bb20.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %pix_order.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %pix_order.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pix_order.i, align 4
  br label %if.end20

sw.bb22.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %pix_order25.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %pix_order25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %pix_order25.i, align 4
  br label %if.end20

do.end14:                                         ; preds = %if.else.i.do.end14_crit_edge, %if.then9.i.do.end14_crit_edge
  %name17 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 3, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name17) #12
  br label %cleanup

if.end20:                                         ; preds = %sw.bb22.i, %sw.bb20.i, %sw.bb.i, %if.then9.i.if.end20_crit_edge, %if.then9.i.if.end20_crit_edge73, %if.then9.i.if.end20_crit_edge74, %if.then9.i.if.end20_crit_edge75, %if.then9.i.if.end20_crit_edge76
  %current_vpfe_fmt = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 17
  %19 = ptrtoint ptr %current_vpfe_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_vpfe_fmt, align 4
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 9
  %21 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_subdev.i, align 4
  %bus_width1.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %22, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %bus_width1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_width1.i, align 4
  %add.i = add i32 %24, 7
  %shr.i51 = lshr i32 %add.i, 3
  %bitsperpixel.i = getelementptr inbounds %struct.vpfe_fmt, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %bitsperpixel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bitsperpixel.i, align 4
  %add2.i = add i32 %24, -1
  %sub.i = add i32 %add2.i, %26
  %div.i = udiv i32 %sub.i, %24
  %mul.i = mul i32 %div.i, %shr.i51
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20
  br i1 %cmp8.i, label %if.then.i, label %if.else.i55

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %win2.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 2
  %27 = call ptr @memcpy(ptr %win2.i, ptr %crop, i32 16)
  %bytesperpixel.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %bytesperpixel.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %bytesperpixel.i, align 4
  %width.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20, i32 2
  %29 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width.i, align 4
  %mul.i53 = mul i32 %30, %mul.i
  %add.i54 = add i32 %mul.i53, 31
  %and.i = and i32 %add.i54, -32
  %bytesperline.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %bytesperline.i, align 4
  br label %vpfe_ccdc_set_image_window.exit

if.else.i55:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %win8.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 2
  %32 = call ptr @memcpy(ptr %win8.i, ptr %crop, i32 16)
  %bytesperpixel11.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %bytesperpixel11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.i, ptr %bytesperpixel11.i, align 4
  %width12.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 20, i32 2
  %34 = ptrtoint ptr %width12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width12.i, align 4
  %mul13.i = mul i32 %35, %mul.i
  %add14.i = add i32 %mul13.i, 31
  %and15.i = and i32 %add14.i, -32
  %bytesperline18.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %bytesperline18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and15.i, ptr %bytesperline18.i, align 4
  br label %vpfe_ccdc_set_image_window.exit

vpfe_ccdc_set_image_window.exit:                  ; preds = %if.else.i55, %if.then.i
  %field = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 16, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %field, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %38, label %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge [
    i32 4, label %vpfe_ccdc_set_image_window.exit.if.end33.sink.split_crit_edge
    i32 1, label %vpfe_ccdc_set_image_window.exit.if.end33_crit_edge
    i32 5, label %sw.bb29
  ]

vpfe_ccdc_set_image_window.exit.if.end33_crit_edge: ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

vpfe_ccdc_set_image_window.exit.if.end33.sink.split_crit_edge: ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.sink.split

vpfe_ccdc_set_image_window.exit.cleanup_crit_edge: ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb29:                                          ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %sw.bb29, %vpfe_ccdc_set_image_window.exit.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb29 ], [ 0, %vpfe_ccdc_set_image_window.exit.if.end33.sink.split_crit_edge ]
  %buf_type4.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 10
  %buf_type2.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 8
  %buf_type4.sink.i = select i1 %cmp8.i, ptr %buf_type2.i, ptr %buf_type4.i
  %40 = ptrtoint ptr %buf_type4.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %buf_type4.sink.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %vpfe_ccdc_set_image_window.exit.if.end33_crit_edge
  %frm_fmt.0 = phi i32 [ 0, %vpfe_ccdc_set_image_window.exit.if.end33_crit_edge ], [ 1, %if.end33.sink.split ]
  %frm_fmt4.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 2, i32 1
  %frm_fmt2.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 26, i32 0, i32 1, i32 1
  %frm_fmt4.sink.i = select i1 %cmp8.i, ptr %frm_fmt2.i, ptr %frm_fmt4.i
  %41 = ptrtoint ptr %frm_fmt4.sink.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %frm_fmt.0, ptr %frm_fmt4.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.end33 ], [ -22, %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp ult i32 %add, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 3, %5
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp4 = icmp ult i32 %12, %3
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %size.0 = phi i32 [ %3, %if.end.if.end8_crit_edge ], [ %12, %if.then3.if.end8_crit_edge ]
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.0, ptr %sizes, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp sgt i32 %15, 0
  br i1 %cmp10, label %do.end, label %if.end8.do.end17_crit_edge

if.end8.do.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbuffers, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name, i32 noundef %17, i32 noundef %size.0) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.end8.do.end17_crit_edge
  %ccdc.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %ccdc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ccdc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  %win4.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 2
  %win2.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 2
  %win4.sink.i.i = select i1 %cmp.i.i, ptr %win2.i.i, ptr %win4.i.i
  %image_win.sroa.5.0.win4.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %win4.sink.i.i, i32 8
  %20 = ptrtoint ptr %image_win.sroa.5.0.win4.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %image_win.sroa.5.0.copyload.i = load i32, ptr %image_win.sroa.5.0.win4.sink.i.sroa_idx.i, align 4
  %image_win.sroa.7.0.win4.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %win4.sink.i.i, i32 12
  %21 = ptrtoint ptr %image_win.sroa.7.0.win4.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %image_win.sroa.7.0.copyload.i = load i32, ptr %image_win.sroa.7.0.win4.sink.i.sroa_idx.i, align 4
  %mul.i = mul i32 %image_win.sroa.7.0.copyload.i, %image_win.sroa.5.0.copyload.i
  %field_off.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %field_off.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %field_off.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17 ], [ -22, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 16, i32 1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !392

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
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
  %cmp.not.i14 = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i14, label %vb2_set_plane_payload.exit.if.end_crit_edge, label %vb2_plane_size.exit

vb2_set_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.if.end_crit_edge

vb2_plane_size.exit.if.end_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %vb2_plane_size.exit.if.end_crit_edge, %vb2_set_plane_payload.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %field = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 16, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field6 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %20 = ptrtoint ptr %field6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 23
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %field = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field, align 4
  %sequence = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sequence, align 8
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_subdev, align 4
  %ccdc.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %ccdc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ccdc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %frm_fmt.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 1
  %frm_fmt3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 1
  %retval.0.in.i.i = select i1 %cmp.i.i, ptr %frm_fmt.i.i, ptr %frm_fmt3.i.i
  %8 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  %spec.select.i = select i1 %cmp.i, i32 50331648, i32 16777216
  %base_addr.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %9 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %spec.select.i) #9, !srcloc !391
  %stopping = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %stopping, align 4
  %capture_stop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %capture_stop to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %capture_stop, align 4
  %wait.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #9
  %13 = ptrtoint ptr %ccdc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccdc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #9
  br i1 %cmp6, label %entry.for.body.i.i_crit_edge, label %entry.for.body.i.i94_crit_edge

entry.for.body.i.i94_crit_edge:                   ; preds = %entry
  br label %for.body.i.i94

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 4, %entry.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %i.010.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !391
  %add.i.i = add nuw nsw i32 %i.010.i.i, 4
  %cmp.i.i86 = icmp ult i32 %i.010.i.i, 145
  br i1 %cmp.i.i86, label %for.body.i.i.for.body.i.i_crit_edge, label %vpfe_ccdc_restore_defaults.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

vpfe_ccdc_restore_defaults.exit.i:                ; preds = %for.body.i.i
  %bayer.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1
  %config_params1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 -16711681) #9, !srcloc !391
  %21 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %22, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 67108864) #9, !srcloc !391
  %23 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 8388608) #9, !srcloc !391
  %vd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %vd_pol.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vd_pol.i, align 4
  %and.i = shl i32 %26, 2
  %shl.i = and i32 %and.i, 4
  %hd_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %hd_pol.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hd_pol.i, align 4
  %and4.i = shl i32 %28, 3
  %shl5.i = and i32 %and4.i, 8
  %or.i = or i32 %shl5.i, %shl.i
  %fid_pol.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %fid_pol.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fid_pol.i, align 4
  %and6.i = shl i32 %30, 4
  %shl7.i = and i32 %and6.i, 16
  %or8.i = or i32 %or.i, %shl7.i
  %31 = ptrtoint ptr %frm_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frm_fmt.i.i, align 4
  %and9.i = shl i32 %32, 7
  %shl10.i = and i32 %and9.i, 128
  %or11.i = or i32 %or8.i, %shl10.i
  %33 = ptrtoint ptr %config_params1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %config_params1.i, align 4
  %and12.i = shl i32 %34, 8
  %shl13.i = and i32 %and12.i, 1792
  %or14.i = or i32 %or11.i, %shl13.i
  %35 = ptrtoint ptr %bayer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bayer.i, align 4
  %and15.i = shl i32 %36, 12
  %shl16.i = and i32 %and15.i, 12288
  %or17.i = or i32 %or14.i, %shl16.i
  %or19.i = or i32 %or17.i, 196608
  %alaw.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 1
  %37 = ptrtoint ptr %alaw.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %alaw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %vpfe_ccdc_restore_defaults.exit.i.if.end28.i_crit_edge, label %if.then.i

vpfe_ccdc_restore_defaults.exit.i.if.end28.i_crit_edge: ; preds = %vpfe_ccdc_restore_defaults.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then.i:                                        ; preds = %vpfe_ccdc_restore_defaults.exit.i
  %gamma_wd.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 1, i32 1
  %39 = ptrtoint ptr %gamma_wd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gamma_wd.i, align 4
  %and21.i = and i32 %40, 7
  %or22.i = or i32 %and21.i, 8
  %41 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %42, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %43 = shl nuw nsw i32 %or22.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %43) #9, !srcloc !391
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i87 = icmp sgt i32 %44, 2
  br i1 %cmp.i87, label %do.end.i, label %if.then.i.if.end28.i_crit_edge

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name.i, i32 noundef %or22.i) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %if.then.i.if.end28.i_crit_edge, %vpfe_ccdc_restore_defaults.exit.i.if.end28.i_crit_edge
  %win.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %frm_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frm_fmt.i.i, align 4
  %bytesperpixel.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %bytesperpixel.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytesperpixel.i, align 4
  tail call fastcc void @vpfe_ccdc_setwin(ptr noundef %ccdc.i, ptr noundef %win.i, i32 noundef %46, i32 noundef %48) #9
  %blk_clamp.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2
  %49 = ptrtoint ptr %blk_clamp.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %blk_clamp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %dc_sub.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2, i32 5
  %51 = ptrtoint ptr %dc_sub.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %dc_sub.i.i, align 4
  %53 = and i16 %52, 16383
  %and.i.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i108.i = getelementptr i8, ptr %55, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108.i, i32 %56) #9, !srcloc !391
  %57 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %58, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 0) #9, !srcloc !391
  br label %vpfe_ccdc_config_black_clamp.exit.i

if.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %sgain.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2, i32 4
  %59 = ptrtoint ptr %sgain.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sgain.i.i, align 2
  %61 = and i16 %60, 31
  %and2.i.i = zext i16 %61 to i32
  %start_pixel.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2, i32 3
  %62 = ptrtoint ptr %start_pixel.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %start_pixel.i.i, align 4
  %64 = and i16 %63, 32767
  %and4.i.i = zext i16 %64 to i32
  %shl.i.i = shl nuw nsw i32 %and4.i.i, 10
  %or.i.i = or i32 %shl.i.i, %and2.i.i
  %sample_ln.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2, i32 2
  %65 = ptrtoint ptr %sample_ln.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sample_ln.i.i, align 4
  %and5.i.i = shl i32 %66, 25
  %shl6.i.i = and i32 %and5.i.i, 234881024
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %sample_pixel.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 2, i32 1
  %67 = ptrtoint ptr %sample_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sample_pixel.i.i, align 4
  %and8.i.i = shl i32 %68, 28
  %or10.i.i = or i32 %or7.i.i, %and8.i.i
  %or11.i.i = or i32 %or10.i.i, -2147483648
  %69 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %70, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %71) #9, !srcloc !391
  %72 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %73, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 0) #9, !srcloc !391
  br label %vpfe_ccdc_config_black_clamp.exit.i

vpfe_ccdc_config_black_clamp.exit.i:              ; preds = %if.end.i.i, %if.then.i.i
  %blk_comp.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 3
  %b.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 3, i32 2
  %74 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %b.i.i, align 1
  %conv.i.i = zext i8 %75 to i32
  %gb.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 3, i32 3
  %76 = ptrtoint ptr %gb.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gb.i.i, align 1
  %conv1.i.i = zext i8 %77 to i32
  %shl.i109.i = shl nuw nsw i32 %conv1.i.i, 8
  %or.i110.i = or i32 %shl.i109.i, %conv.i.i
  %gr.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10, i32 3, i32 1
  %78 = ptrtoint ptr %gr.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %gr.i.i, align 1
  %conv3.i.i = zext i8 %79 to i32
  %shl5.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or6.i.i = or i32 %or.i110.i, %shl5.i.i
  %80 = ptrtoint ptr %blk_comp.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %blk_comp.i, align 1
  %conv7.i.i = zext i8 %81 to i32
  %shl9.i.i = shl nuw i32 %conv7.i.i, 24
  %or10.i111.i = or i32 %or6.i.i, %shl9.i.i
  %82 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i113.i = getelementptr i8, ptr %83, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %84 = tail call i32 @llvm.bswap.i32(i32 %or10.i111.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113.i, i32 %84) #9, !srcloc !391
  %85 = ptrtoint ptr %config_params1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %config_params1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %86)
  %cmp31.i = icmp eq i32 %86, 7
  br i1 %cmp31.i, label %vpfe_ccdc_config_black_clamp.exit.i.if.then35.i_crit_edge, label %lor.lhs.false.i

vpfe_ccdc_config_black_clamp.exit.i.if.then35.i_crit_edge: ; preds = %vpfe_ccdc_config_black_clamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %vpfe_ccdc_config_black_clamp.exit.i
  %87 = ptrtoint ptr %alaw.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %alaw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool34.not.i = icmp eq i8 %88, 0
  br i1 %tobool34.not.i, label %lor.lhs.false.i.if.end37.i_crit_edge, label %lor.lhs.false.i.if.then35.i_crit_edge

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %vpfe_ccdc_config_black_clamp.exit.i.if.then35.i_crit_edge
  %or36.i = or i32 %or17.i, 198656
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %lor.lhs.false.i.if.end37.i_crit_edge
  %syn_mode.0.i = phi i32 [ %or36.i, %if.then35.i ], [ %or19.i, %lor.lhs.false.i.if.end37.i_crit_edge ]
  %bytesperline.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bytesperline.i, align 4
  %91 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %92, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %93 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %93) #9, !srcloc !391
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp39.i = icmp sgt i32 %94, 2
  br i1 %cmp39.i, label %do.end44.i, label %if.end37.i.do.end54.i_crit_edge

if.end37.i.do.end54.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54.i

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %name47.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %95 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bytesperline.i, align 4
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name47.i, i32 noundef %96, i32 noundef %96) #12
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end44.i, %if.end37.i.do.end54.i_crit_edge
  %97 = ptrtoint ptr %frm_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %frm_fmt.i.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %98, label %do.end54.i.if.end68.i_crit_edge [
    i32 1, label %if.then58.i
    i32 0, label %if.then66.i
  ]

do.end54.i.if.end68.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then58.i:                                      ; preds = %do.end54.i
  %image_invert_enable.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 9
  %100 = ptrtoint ptr %image_invert_enable.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %image_invert_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool59.not.i = icmp eq i8 %101, 0
  %102 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %103, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool59.not.i, label %if.else.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 1833631744) #9, !srcloc !391
  br label %if.end68.i

if.else.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 1224867840) #9, !srcloc !391
  br label %if.end68.i

if.then66.i:                                      ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %105, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 0) #9, !srcloc !391
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.else.i, %if.then60.i, %do.end54.i.if.end68.i_crit_edge
  %106 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %107, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %108 = tail call i32 @llvm.bswap.i32(i32 %syn_mode.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %108) #9, !srcloc !391
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp.i124.i = icmp sgt i32 %109, 2
  br i1 %cmp.i124.i, label %do.body6.i.i, label %if.end68.i.if.end_crit_edge

if.end68.i.if.end_crit_edge:                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body6.i.i:                                     ; preds = %if.end68.i
  %name.i.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %110 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i177.i.i = getelementptr i8, ptr %111, i32 76
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i.i) #9, !srcloc !388
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name.i.i, i32 noundef %113) #12
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i)
  %cmp7.i.i = icmp sgt i32 %.pr.i.i, 2
  br i1 %cmp7.i.i, label %do.body21.i.i, label %do.body6.i.i.if.end_crit_edge

do.body6.i.i.if.end_crit_edge:                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body21.i.i:                                    ; preds = %do.body6.i.i
  %114 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i179.i.i = getelementptr i8, ptr %115, i32 48
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179.i.i) #9, !srcloc !388
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name.i.i, i32 noundef %117) #12
  %.pr199.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr199.i.i)
  %cmp22.i.i = icmp sgt i32 %.pr199.i.i, 2
  br i1 %cmp22.i.i, label %do.body36.i.i, label %do.body21.i.i.if.end_crit_edge

do.body21.i.i.if.end_crit_edge:                   ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body36.i.i:                                    ; preds = %do.body21.i.i
  %118 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i181.i.i = getelementptr i8, ptr %119, i32 52
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181.i.i) #9, !srcloc !388
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name.i.i, i32 noundef %121) #12
  %.pr201.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr201.pr.i.i)
  %cmp37.i.i = icmp sgt i32 %.pr201.pr.i.i, 2
  br i1 %cmp37.i.i, label %do.body51.i.i, label %do.body36.i.i.if.end_crit_edge

do.body36.i.i.if.end_crit_edge:                   ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body51.i.i:                                    ; preds = %do.body36.i.i
  %122 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i183.i.i = getelementptr i8, ptr %123, i32 60
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183.i.i) #9, !srcloc !388
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name.i.i, i32 noundef %125) #12
  %.pr203.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr203.i.i)
  %cmp52.i.i = icmp sgt i32 %.pr203.i.i, 2
  br i1 %cmp52.i.i, label %do.body66.i.i, label %do.body51.i.i.if.end_crit_edge

do.body51.i.i.if.end_crit_edge:                   ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body66.i.i:                                    ; preds = %do.body51.i.i
  %126 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i185.i.i = getelementptr i8, ptr %127, i32 56
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185.i.i) #9, !srcloc !388
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call62.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name.i.i, i32 noundef %129) #12
  %.pr205.pr.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr205.pr.pr.i.i)
  %cmp67.i.i = icmp sgt i32 %.pr205.pr.pr.i.i, 2
  br i1 %cmp67.i.i, label %do.body81.i.i, label %do.body66.i.i.if.end_crit_edge

do.body66.i.i.if.end_crit_edge:                   ; preds = %do.body66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body81.i.i:                                    ; preds = %do.body66.i.i
  %130 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i187.i.i = getelementptr i8, ptr %131, i32 40
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187.i.i) #9, !srcloc !388
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call77.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name.i.i, i32 noundef %133) #12
  %.pr207.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr207.i.i)
  %cmp82.i.i = icmp sgt i32 %.pr207.i.i, 2
  br i1 %cmp82.i.i, label %do.body96.i.i, label %do.body81.i.i.if.end_crit_edge

do.body81.i.i.if.end_crit_edge:                   ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body96.i.i:                                    ; preds = %do.body81.i.i
  %134 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i189.i.i = getelementptr i8, ptr %135, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189.i.i) #9, !srcloc !388
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call92.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i.i, i32 noundef %137) #12
  %.pr209.pr.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr209.pr.pr.i.i)
  %cmp97.i.i = icmp sgt i32 %.pr209.pr.pr.i.i, 2
  br i1 %cmp97.i.i, label %do.body111.i.i, label %do.body96.i.i.if.end_crit_edge

do.body96.i.i.if.end_crit_edge:                   ; preds = %do.body96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body111.i.i:                                   ; preds = %do.body96.i.i
  %138 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i191.i.i = getelementptr i8, ptr %139, i32 36
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191.i.i) #9, !srcloc !388
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call107.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name.i.i, i32 noundef %141) #12
  %.pr211.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr211.i.i)
  %cmp112.i.i = icmp sgt i32 %.pr211.i.i, 2
  br i1 %cmp112.i.i, label %do.body126.i.i, label %do.body111.i.i.if.end_crit_edge

do.body111.i.i.if.end_crit_edge:                  ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body126.i.i:                                   ; preds = %do.body111.i.i
  %142 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i193.i.i = getelementptr i8, ptr %143, i32 20
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193.i.i) #9, !srcloc !388
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call122.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name.i.i, i32 noundef %145) #12
  %.pr213.pr.pr.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr213.pr.pr.pr.i.i)
  %cmp127.i.i = icmp sgt i32 %.pr213.pr.pr.pr.i.i, 2
  br i1 %cmp127.i.i, label %do.body141.i.i, label %do.body126.i.i.if.end_crit_edge

do.body126.i.i.if.end_crit_edge:                  ; preds = %do.body126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body141.i.i:                                   ; preds = %do.body126.i.i
  %146 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i195.i.i = getelementptr i8, ptr %147, i32 24
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195.i.i) #9, !srcloc !388
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call137.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name.i.i, i32 noundef %149) #12
  %.pr215.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr215.i.i)
  %cmp142.i.i = icmp sgt i32 %.pr215.i.i, 2
  br i1 %cmp142.i.i, label %do.end146.i.i, label %do.body141.i.i.if.end_crit_edge

do.body141.i.i.if.end_crit_edge:                  ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end146.i.i:                                    ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i197.i.i = getelementptr i8, ptr %151, i32 28
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197.i.i) #9, !srcloc !388
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %call152.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name.i.i, i32 noundef %153) #12
  br label %if.end

for.body.i.i94:                                   ; preds = %for.body.i.i94.for.body.i.i94_crit_edge, %entry.for.body.i.i94_crit_edge
  %i.010.i.i90 = phi i32 [ %add.i.i92, %for.body.i.i94.for.body.i.i94_crit_edge ], [ 4, %entry.for.body.i.i94_crit_edge ]
  %154 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i91 = getelementptr i8, ptr %155, i32 %i.010.i.i90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i91, i32 0) #9, !srcloc !391
  %add.i.i92 = add nuw nsw i32 %i.010.i.i90, 4
  %cmp.i.i93 = icmp ult i32 %i.010.i.i90, 145
  br i1 %cmp.i.i93, label %for.body.i.i94.for.body.i.i94_crit_edge, label %vpfe_ccdc_restore_defaults.exit.i102

for.body.i.i94.for.body.i.i94_crit_edge:          ; preds = %for.body.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i94

vpfe_ccdc_restore_defaults.exit.i102:             ; preds = %for.body.i.i94
  %ycbcr.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2
  %156 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i7.i.i95 = getelementptr i8, ptr %157, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i95, i32 -16711681) #9, !srcloc !391
  %158 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i9.i.i96 = getelementptr i8, ptr %159, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i96, i32 67108864) #9, !srcloc !391
  %160 = ptrtoint ptr %ycbcr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ycbcr.i, align 4
  %and.i97 = shl i32 %161, 12
  %shl.i98 = and i32 %and.i97, 12288
  %162 = ptrtoint ptr %frm_fmt3.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %frm_fmt3.i.i, align 4
  %and1.i = shl i32 %163, 7
  %shl2.i = and i32 %and1.i, 128
  %or.i100 = or i32 %shl2.i, %shl.i98
  %bt656_enable.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 8
  %164 = ptrtoint ptr %bt656_enable.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bt656_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i101 = icmp eq i32 %165, 0
  br i1 %tobool.not.i101, label %if.else11.i, label %if.then.i105

if.then.i105:                                     ; preds = %vpfe_ccdc_restore_defaults.exit.i102
  %166 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %167, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 50331648) #9, !srcloc !391
  %168 = ptrtoint ptr %ccdc.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ccdc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %169)
  %cmp.i104 = icmp eq i32 %169, 2
  br i1 %cmp.i104, label %if.then8.i, label %if.else.i106

if.then8.i:                                       ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #11
  %or9.i = or i32 %or.i100, 200196
  br label %if.end21.i

if.else.i106:                                     ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #11
  %or10.i = or i32 %or.i100, 200452
  br label %if.end21.i

if.else11.i:                                      ; preds = %vpfe_ccdc_restore_defaults.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  %fid_pol.i107 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 5
  %170 = ptrtoint ptr %fid_pol.i107 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fid_pol.i107, align 4
  %and12.i108 = shl i32 %171, 4
  %shl13.i109 = and i32 %and12.i108, 16
  %hd_pol.i110 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 7
  %172 = ptrtoint ptr %hd_pol.i110 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %hd_pol.i110, align 4
  %and14.i = shl i32 %173, 3
  %shl15.i = and i32 %and14.i, 8
  %vd_pol.i111 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 6
  %174 = ptrtoint ptr %vd_pol.i111 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vd_pol.i111, align 4
  %and17.i = shl i32 %175, 2
  %shl18.i = and i32 %and17.i, 4
  %or16.i = or i32 %or.i100, %shl13.i109
  %or19.i112 = or i32 %or16.i, %shl15.i
  %or5.i = or i32 %or19.i112, %shl18.i
  %or20.i = or i32 %or5.i, 198656
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else11.i, %if.else.i106, %if.then8.i
  %syn_mode.0.i113 = phi i32 [ %or9.i, %if.then8.i ], [ %or10.i, %if.else.i106 ], [ %or20.i, %if.else11.i ]
  %176 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %177, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %178 = tail call i32 @llvm.bswap.i32(i32 %syn_mode.0.i113) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %178) #9, !srcloc !391
  %win.i114 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 2
  %179 = ptrtoint ptr %frm_fmt3.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %frm_fmt3.i.i, align 4
  %bytesperpixel.i115 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 3
  %181 = ptrtoint ptr %bytesperpixel.i115 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bytesperpixel.i115, align 4
  tail call fastcc void @vpfe_ccdc_setwin(ptr noundef %ccdc.i, ptr noundef %win.i114, i32 noundef %180, i32 noundef %182) #9
  %183 = ptrtoint ptr %ccdc.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ccdc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp25.i = icmp eq i32 %184, 2
  %pix_order.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 9
  %185 = ptrtoint ptr %pix_order.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pix_order.i, align 4
  %shl27.i = shl i32 %186, 11
  br i1 %cmp25.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %or29.i = or i32 %shl27.i, 32800
  %187 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %188, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %189 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %189) #9, !srcloc !391
  br label %if.end34.i

if.else30.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %or33.i = or i32 %shl27.i, 32768
  %190 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %191, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %192 = tail call i32 @llvm.bswap.i32(i32 %or33.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %192) #9, !srcloc !391
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else30.i, %if.then26.i
  %bytesperline.i116 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 4
  %193 = ptrtoint ptr %bytesperline.i116 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bytesperline.i116, align 4
  %195 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %196, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %197 = tail call i32 @llvm.bswap.i32(i32 %194) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %197) #9, !srcloc !391
  %buf_type.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 10
  %198 = ptrtoint ptr %buf_type.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buf_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp35.i = icmp eq i32 %199, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.end34.i.if.end_crit_edge

if.end34.i.if.end_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %200 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %201, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 1224867840) #9, !srcloc !391
  br label %if.end

if.end:                                           ; preds = %if.then36.i, %if.end34.i.if.end_crit_edge, %do.end146.i.i, %do.body141.i.i.if.end_crit_edge, %do.body126.i.i.if.end_crit_edge, %do.body111.i.i.if.end_crit_edge, %do.body96.i.i.if.end_crit_edge, %do.body81.i.i.if.end_crit_edge, %do.body66.i.i.if.end_crit_edge, %do.body51.i.i.if.end_crit_edge, %do.body36.i.i.if.end_crit_edge, %do.body21.i.i.if.end_crit_edge, %do.body6.i.i.if.end_crit_edge, %if.end68.i.if.end_crit_edge
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %202 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %203, i32 -736
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 15
  %204 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr, ptr %next_frm, align 4
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 14
  %205 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %add.ptr, ptr %cur_frm, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %203) #9
  br i1 %call.i.i, label %if.end.i.i118, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i118:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %206 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i.i, align 4
  %208 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %203, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %207, ptr %prev1.i.i.i, align 4
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %209, ptr %207, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i118, %if.end.list_del.exit_crit_edge
  %212 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr inttoptr (i32 256 to ptr), ptr %203, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %213 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call3) #9
  %214 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur_frm, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %215, i32 noundef 0) #9
  %216 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %call.i, align 4
  %and.i119 = and i32 %217, -32
  %218 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %219, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %220 = tail call i32 @llvm.bswap.i32(i32 %and.i119) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 %220) #9, !srcloc !391
  %221 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %222, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 16777216) #9, !srcloc !391
  %sd = getelementptr inbounds %struct.vpfe_subdev_info, ptr %5, i32 0, i32 5
  %223 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %224, null
  br i1 %tobool.not, label %list_del.exit.do.end47_crit_edge, label %if.else19

list_del.exit.do.end47_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.else19:                                        ; preds = %list_del.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %224, i32 0, i32 6
  %225 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %226, i32 0, i32 3
  %227 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %video, align 4
  %tobool20.not = icmp eq ptr %228, null
  br i1 %tobool20.not, label %if.else19.do.end47_crit_edge, label %land.lhs.true

if.else19.do.end47_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

land.lhs.true:                                    ; preds = %if.else19
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %228, i32 0, i32 10
  %229 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %s_stream, align 4
  %tobool23.not = icmp eq ptr %230, null
  br i1 %tobool23.not, label %land.lhs.true.do.end47_crit_edge, label %if.else25

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.else25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool26.not = icmp eq ptr %231, null
  br i1 %tobool26.not, label %if.else25.if.else33_crit_edge, label %land.lhs.true27

if.else25.if.else33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33

land.lhs.true27:                                  ; preds = %if.else25
  %s_stream28 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %231, i32 0, i32 10
  %232 = ptrtoint ptr %s_stream28 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %s_stream28, align 4
  %tobool29.not = icmp eq ptr %233, null
  br i1 %tobool29.not, label %land.lhs.true27.if.else33_crit_edge, label %land.lhs.true27.if.end40_crit_edge

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true27.if.else33_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33

if.else33:                                        ; preds = %land.lhs.true27.if.else33_crit_edge, %if.else25.if.else33_crit_edge
  br label %if.end40

if.end40:                                         ; preds = %if.else33, %land.lhs.true27.if.end40_crit_edge
  %.sink = phi ptr [ %230, %if.else33 ], [ %233, %land.lhs.true27.if.end40_crit_edge ]
  %call37 = tail call i32 %.sink(ptr noundef nonnull %224, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp42 = icmp slt i32 %call37, 0
  br i1 %cmp42, label %if.end40.do.end47_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end47:                                         ; preds = %if.end40.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %if.else19.do.end47_crit_edge, %list_del.exit.do.end47_crit_edge
  %__result.0128 = phi i32 [ %call37, %if.end40.do.end47_crit_edge ], [ -515, %if.else19.do.end47_crit_edge ], [ -515, %land.lhs.true.do.end47_crit_edge ], [ -19, %list_del.exit.do.end47_crit_edge ]
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name) #12
  tail call fastcc void @vpfe_return_all_buffers(ptr noundef %1, i32 noundef 3)
  %234 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %235, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i125, i32 0) #9, !srcloc !391
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0128, %do.end47 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %ccdc = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %base_addr.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %2 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !391
  %stopping = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %stopping, align 4
  %capture_stop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %capture_stop, i32 noundef 25) #9
  %5 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccdc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  %frm_fmt.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 1
  %frm_fmt3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 1
  %retval.0.in.i.i = select i1 %cmp.i.i, ptr %frm_fmt.i.i, ptr %frm_fmt3.i.i
  %7 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  %spec.select.i = select i1 %cmp.i, i32 50331648, i32 16777216
  %8 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %spec.select.i) #9, !srcloc !391
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_subdev, align 4
  %sd = getelementptr inbounds %struct.vpfe_subdev_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.else

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.else.if.end36_crit_edge, label %land.lhs.true

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %land.lhs.true.if.end36_crit_edge, label %if.else8

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_stream11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream11, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end22_crit_edge

land.lhs.true10.if.end22_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %land.lhs.true10.if.end22_crit_edge
  %.sink = phi ptr [ %19, %if.else16 ], [ %22, %land.lhs.true10.if.end22_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %13, i32 noundef 0) #9
  %23 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call20, label %do.body [
    i32 0, label %if.end22.if.end36_crit_edge
    i32 -515, label %if.end22.if.end36_crit_edge56
    i32 -19, label %if.end22.if.end36_crit_edge57
  ]

if.end22.if.end36_crit_edge57:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end22.if.end36_crit_edge56:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body:                                          ; preds = %if.end22
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28 = icmp sgt i32 %24, 0
  br i1 %cmp28, label %do.end, label %do.body.if.end36_crit_edge

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end, %do.body.if.end36_crit_edge, %if.end22.if.end36_crit_edge, %if.end22.if.end36_crit_edge56, %if.end22.if.end36_crit_edge57, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge, %entry.if.end36_crit_edge
  tail call fastcc void @vpfe_return_all_buffers(ptr noundef %1, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 23
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %list = getelementptr inbounds %struct.vpfe_cap_buffer, ptr %vb, i32 0, i32 1
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 22
  %prev.i = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %dma_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vpfe_cap_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpfe_return_all_buffers(ptr noundef %vpfe, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #9
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 22
  %0 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_queue, align 4
  %cmp12.not55 = icmp eq ptr %1, %dma_queue
  br i1 %cmp12.not55, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in56 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in56, i32 -736
  %2 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in56, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef %state) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in56, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in56, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in56, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in56, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp12.not = icmp eq ptr %.pn, %dma_queue
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 14
  %11 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_frm, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %12, i32 noundef %state) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %vpfe, i32 0, i32 15
  %13 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_frm, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.end.if.end32_crit_edge, label %land.lhs.true

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %15 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_frm, align 8
  %cmp26.not = icmp eq ptr %14, %16
  br i1 %cmp26.not, label %land.lhs.true.if.end32_crit_edge, label %if.then28

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %14, i32 noundef %state) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %17 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cur_frm, align 8
  %18 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %next_frm, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpfe_ccdc_setwin(ptr nocapture noundef readonly %ccdc, ptr nocapture noundef readonly %image_win, i32 noundef %frm_fmt, i32 noundef %bpp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %image_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image_win, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %mul1 = mul i32 %3, %bpp
  %sub = add i32 %mul1, -1
  %mul = shl i32 %bpp, 16
  %shl = mul i32 %mul, %1
  %or = or i32 %sub, %shl
  %base_addr.i = getelementptr inbounds %struct.ccdc_config, ptr %ccdc, i32 0, i32 3
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !391
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frm_fmt)
  %cmp = icmp eq i32 %frm_fmt, 1
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %shr = lshr i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr3 = ashr i32 %8, 1
  %shl4 = shl i32 %shr3, 16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %shr, %8
  %shl8 = shl i32 %8, 16
  %and = and i32 %add, 65535
  %or9 = or i32 %and, %shl8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl10.pre-phi = phi i32 [ %shl8, %if.else ], [ %shl4, %if.then ]
  %vert_start.0 = phi i32 [ %8, %if.else ], [ %shr3, %if.then ]
  %vert_nr_lines.0.in = phi i32 [ %10, %if.else ], [ %shr, %if.then ]
  %val.0 = phi i32 [ %or9, %if.else ], [ %shl4, %if.then ]
  %vert_nr_lines.0 = add i32 %vert_nr_lines.0.in, -1
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %13) #9, !srcloc !391
  %or11 = or i32 %shl10.pre-phi, %vert_start.0
  %14 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or11) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %16) #9, !srcloc !391
  %17 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %vert_nr_lines.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %19) #9, !srcloc !391
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name) #12
  br label %unlock

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i20 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool4.not = icmp eq i32 %call.i20, 0
  br i1 %tobool4.not, label %if.end.unlock_crit_edge, label %if.end6

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end6:                                          ; preds = %if.end
  %cfg.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 4
  %sd.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %sd2.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %sd2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sd2.i, align 8
  %current_input.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %current_input.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %current_input.i, align 8
  %std_index.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %std_index.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %std_index.i, align 8
  %call.i21 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %1, i64 noundef 63744) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %pdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end7.i

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !385
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then9_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then9_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  br label %if.then9

if.end7.i:                                        ; preds = %if.end.i
  %base_addr.i3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %16 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %17, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 33554432) #9, !srcloc !391
  %18 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #9, !srcloc !391
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.i
  %i.010.i.i = phi i32 [ 4, %if.end7.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %i.010.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !391
  %add.i.i = add nuw nsw i32 %i.010.i.i, 4
  %cmp.i24.i = icmp ult i32 %i.010.i.i, 145
  br i1 %cmp.i24.i, label %for.body.i.i.for.body.i.i_crit_edge, label %vpfe_initialize_device.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

vpfe_initialize_device.exit:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 -16711681) #9, !srcloc !391
  %24 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 67108864) #9, !srcloc !391
  %26 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %27, i32 280
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %29 = or i32 %28, 117440512
  %30 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %31, i32 280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %29) #9, !srcloc !391
  %32 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %33, i32 280
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %35 = ptrtoint ptr %base_addr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i3.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %36, i32 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 16777216) #9, !srcloc !391
  br label %unlock

if.then9:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %call10 = tail call i32 @v4l2_fh_release(ptr noundef %file) #9
  br label %unlock

unlock:                                           ; preds = %if.then9, %vpfe_initialize_device.exit, %if.end.unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ -19, %if.then9 ], [ 0, %vpfe_initialize_device.exit ], [ 0, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i11 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not = icmp eq i32 %call.i11, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #9
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %base_addr.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %6 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #9, !srcloc !388
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.if.end7.i_crit_edge, label %do.body.i

if.then.if.end7.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.body.i:                                        ; preds = %if.then
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp sgt i32 %10, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end7.i_crit_edge

do.body.i.if.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name.i, i32 noundef %9) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %do.body.i.if.end7.i_crit_edge, %if.then.if.end7.i_crit_edge
  %11 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %12, i32 152
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #9, !srcloc !388
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool9.not.i = icmp sgt i32 %14, -1
  br i1 %tobool9.not.i, label %if.end7.i.if.end25.i_crit_edge, label %do.body11.i

if.end7.i.if.end25.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

do.body11.i:                                      ; preds = %if.end7.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.i = icmp sgt i32 %15, 0
  br i1 %cmp12.i, label %do.end16.i, label %do.body11.i.if.end25.i_crit_edge

do.body11.i.if.end25.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %name19.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name19.i, i32 noundef %14) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end16.i, %do.body11.i.if.end25.i_crit_edge, %if.end7.i.if.end25.i_crit_edge
  %16 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #9, !srcloc !391
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end25.i
  %i.010.i.i = phi i32 [ 4, %if.end25.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %i.010.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !391
  %add.i.i = add nuw nsw i32 %i.010.i.i, 4
  %cmp.i.i = icmp ult i32 %i.010.i.i, 145
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %vpfe_ccdc_close.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

vpfe_ccdc_close.exit:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 -16711681) #9, !srcloc !391
  %22 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %23, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 67108864) #9, !srcloc !391
  %24 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %25, i32 264
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %27 = and i32 %26, -33554433
  %28 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %27) #9, !srcloc !391
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %vpfe_ccdc_close.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.3, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.136, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.137, ptr noundef %name)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_enum_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %sd = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %num_active_fmt = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %num_active_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_active_fmt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 18, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4 = icmp sgt i32 %15, 0
  br i1 %cmp4, label %do.end, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %code = getelementptr inbounds %struct.vpfe_fmt, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  %conv.i = trunc i32 %19 to i8
  store i8 %conv.i, ptr @print_fourcc.code, align 1
  %shr.i = lshr i32 %19, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %19, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %19, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name, ptr noundef nonnull @.str.139, i32 noundef %7, i32 noundef %17, ptr noundef nonnull @print_fourcc.code) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16
  %2 = call ptr @memcpy(ptr %fmt, ptr %fmt1, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  %sd_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.140) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @vpfe_try_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fmt6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_active_fmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %if.end5.find_format_by_pix.exit_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.find_format_by_pix.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_format_by_pix.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.find_format_by_pix.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.find_format_by_pix.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_format_by_pix.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 18, i32 %k.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp1.i = icmp eq i32 %11, %5
  br i1 %cmp1.i, label %for.body.i.find_format_by_pix.exit_crit_edge, label %for.cond.i

for.body.i.find_format_by_pix.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_format_by_pix.exit

find_format_by_pix.exit:                          ; preds = %for.body.i.find_format_by_pix.exit_crit_edge, %for.cond.i.find_format_by_pix.exit_crit_edge, %if.end5.find_format_by_pix.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end5.find_format_by_pix.exit_crit_edge ], [ %9, %for.body.i.find_format_by_pix.exit_crit_edge ], [ null, %for.cond.i.find_format_by_pix.exit_crit_edge ]
  %code = getelementptr inbounds %struct.vpfe_fmt, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %14 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt6, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %conv.i = trunc i32 %24 to i16
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %26 to i16
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %27 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %28 to i16
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_subdev.i, align 4
  %sd1.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %sd1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd1.i, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  %33 = getelementptr inbounds i8, ptr %sd_fmt.i, i32 56
  %34 = call ptr @memset(ptr %33, i32 255, i32 32)
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2
  %35 = ptrtoint ptr %sd_fmt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %sd_fmt.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 1
  %36 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %pad.i, align 4
  %37 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %15, ptr %format.i, align 4
  %mbus_fmt.sroa.7.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %mbus_fmt.sroa.7.0.format.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %17, ptr %mbus_fmt.sroa.7.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.10.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %mbus_fmt.sroa.10.0.format.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %13, ptr %mbus_fmt.sroa.10.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.13.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %19, ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.15.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %21, ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.17.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %mbus_fmt.sroa.17.0.format.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %mbus_fmt.sroa.17.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.19.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %mbus_fmt.sroa.19.0.format.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv5.i, ptr %mbus_fmt.sroa.19.0.format.i.sroa_idx, align 2
  %mbus_fmt.sroa.21.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 7
  %44 = ptrtoint ptr %mbus_fmt.sroa.21.0.format.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv7.i, ptr %mbus_fmt.sroa.21.0.format.i.sroa_idx, align 4
  %mbus_fmt.sroa.23.0.format.i.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2, i32 8
  %45 = call ptr @memset(ptr %mbus_fmt.sroa.23.0.format.i.sroa_idx, i32 255, i32 22)
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge, label %if.else.i

find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge: ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_set_format.exit.thread

if.else.i:                                        ; preds = %find_format_by_pix.exit
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %32, i32 0, i32 6
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %pad2.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %pad2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pad2.i, align 4
  %tobool3.not.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i, label %if.else.i.__subdev_set_format.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_set_format.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_fmt.i, align 4
  %tobool6.not.i = icmp eq ptr %51, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge, label %if.else8.i

land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_set_format.exit.thread

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool9.not.i = icmp eq ptr %52, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %set_fmt11.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %set_fmt11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_fmt11.i, align 4
  %tobool12.not.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end21.i_crit_edge

land.lhs.true10.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else15.i, %land.lhs.true10.i.if.end21.i_crit_edge
  %.sink.i = phi ptr [ %51, %if.else15.i ], [ %54, %land.lhs.true10.i.if.end21.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %32, ptr noundef null, ptr noundef nonnull %sd_fmt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool22.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool22.not.i, label %do.body.i, label %if.end21.i.__subdev_set_format.exit.thread_crit_edge

if.end21.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__subdev_set_format.exit.thread

do.body.i:                                        ; preds = %if.end21.i
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i76 = icmp sgt i32 %55, 0
  br i1 %cmp.i76, label %do.end.i, label %do.body.i.if.end11_crit_edge

do.body.i.if.end11_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %name.i, ptr noundef nonnull @.str.145, i32 noundef %15, i32 noundef %17, i32 noundef %13) #12
  br label %if.end11

__subdev_set_format.exit.thread:                  ; preds = %if.end21.i.__subdev_set_format.exit.thread_crit_edge, %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge, %if.else.i.__subdev_set_format.exit.thread_crit_edge, %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge
  %retval.0.i78.ph = phi i32 [ -19, %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge ], [ -515, %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge ], [ -515, %if.else.i.__subdev_set_format.exit.thread_crit_edge ], [ %call19.i, %if.end21.i.__subdev_set_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end.i, %do.body.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #9
  %56 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %57)
  %cmp14.not = icmp eq i32 %13, %57
  br i1 %cmp14.not, label %if.end30, label %do.body16

do.body16:                                        ; preds = %if.end11
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp17 = icmp sgt i32 %58, 2
  br i1 %cmp17, label %do.end21, label %do.body16.cleanup_crit_edge

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %name24 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name24, ptr noundef nonnull @.str.140) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %fmt31 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16
  %fmt32 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1
  %59 = ptrtoint ptr %fmt32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %15, ptr %fmt32, align 4
  %height2.i80 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %height2.i80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %17, ptr %height2.i80, align 4
  %field3.i82 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %field3.i82 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %19, ptr %field3.i82, align 4
  %colorspace4.i84 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5, i32 0, i32 1
  %62 = ptrtoint ptr %colorspace4.i84 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %21, ptr %colorspace4.i84, align 4
  %conv.i85 = and i32 %24, 65535
  %63 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.i85, ptr %63, align 4
  %conv5.i87 = and i32 %26, 65535
  %quantization6.i88 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %quantization6.i88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv5.i87, ptr %quantization6.i88, align 4
  %conv7.i90 = and i32 %28, 65535
  %xfer_func8.i91 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5, i32 1, i32 1
  %66 = ptrtoint ptr %xfer_func8.i91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv7.i90, ptr %xfer_func8.i91, align 4
  %67 = ptrtoint ptr %fmt31 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %fmt31, align 8
  %68 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %retval.0.i, align 4
  %pixelformat36 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %70 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %pixelformat36, align 4
  %call38 = call fastcc i32 @vpfe_calc_format_size(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef %fmt31)
  %71 = call ptr @memcpy(ptr %fmt, ptr %fmt31, i32 204)
  %current_vpfe_fmt = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 17
  %72 = ptrtoint ptr %current_vpfe_fmt to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i, ptr %current_vpfe_fmt, align 4
  %73 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fmt6, align 4
  %width41 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 2
  %75 = ptrtoint ptr %width41 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %width41, align 4
  %76 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height.i, align 4
  %height44 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 3
  %78 = ptrtoint ptr %height44 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %height44, align 4
  %call45 = call fastcc i32 @vpfe_config_ccdc_image_format(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end21, %do.body16.cleanup_crit_edge, %__subdev_set_format.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call45, %if.end30 ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %do.end21 ], [ -22, %do.body16.cleanup_crit_edge ], [ %retval.0.i78.ph, %__subdev_set_format.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %sd1 = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #9
  %6 = getelementptr inbounds i8, ptr %fse, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_active_fmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 18, i32 %k.08.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp1.i = icmp eq i32 %15, %9
  br i1 %cmp1.i, label %find_format_by_pix.exit, label %for.cond.i

find_format_by_pix.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %find_format_by_pix.exit.do.body_crit_edge, label %find_format_by_pix.exit.if.end13_crit_edge

find_format_by_pix.exit.if.end13_crit_edge:       ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

find_format_by_pix.exit.do.body_crit_edge:        ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %find_format_by_pix.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp sgt i32 %16, 2
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name, i32 noundef %9) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %active_fmt = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %active_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_fmt, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pixelformat, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %find_format_by_pix.exit.if.end13_crit_edge
  %fmt.0 = phi ptr [ %13, %find_format_by_pix.exit.if.end13_crit_edge ], [ %18, %do.end10 ]
  %fmt15 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1
  %field = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 4
  %field17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %field17, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.vpfe_fmt, ptr %fmt.0, i32 0, i32 1
  %26 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code, align 4
  %code18 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %28 = ptrtoint ptr %code18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code18, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %29 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %which, align 4
  %tobool19.not = icmp eq ptr %5, null
  %30 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %fse, align 4
  br i1 %tobool19.not, label %if.end13.if.then76.critedge_crit_edge, label %if.else.lr.ph

if.end13.if.then76.critedge_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.critedge

if.else.lr.ph:                                    ; preds = %if.end13
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %pad21136 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad21136 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad21136, align 4
  %tobool22.not137 = icmp eq ptr %34, null
  br i1 %tobool22.not137, label %if.else.lr.ph.if.then76.critedge_crit_edge, label %if.else.lr.ph.land.lhs.true_crit_edge

if.else.lr.ph.land.lhs.true_crit_edge:            ; preds = %if.else.lr.ph
  br label %land.lhs.true

if.else.lr.ph.if.then76.critedge_crit_edge:       ; preds = %if.else.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.critedge

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %if.else.lr.ph.land.lhs.true_crit_edge
  %35 = phi ptr [ %62, %for.inc.land.lhs.true_crit_edge ], [ %34, %if.else.lr.ph.land.lhs.true_crit_edge ]
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enum_frame_size, align 4
  %tobool25.not = icmp eq ptr %37, null
  br i1 %tobool25.not, label %land.lhs.true.if.then76.critedge_crit_edge, label %if.else27

land.lhs.true.if.then76.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.critedge

if.else27:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool28.not = icmp eq ptr %38, null
  br i1 %tobool28.not, label %if.else27.if.else35_crit_edge, label %land.lhs.true29

if.else27.if.else35_crit_edge:                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else35

land.lhs.true29:                                  ; preds = %if.else27
  %enum_frame_size30 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %enum_frame_size30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enum_frame_size30, align 4
  %tobool31.not = icmp eq ptr %40, null
  br i1 %tobool31.not, label %land.lhs.true29.if.else35_crit_edge, label %land.lhs.true29.if.end42_crit_edge

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true29.if.else35_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else35

if.else35:                                        ; preds = %land.lhs.true29.if.else35_crit_edge, %if.else27.if.else35_crit_edge
  br label %if.end42

if.end42:                                         ; preds = %if.else35, %land.lhs.true29.if.end42_crit_edge
  %.sink = phi ptr [ %37, %if.else35 ], [ %40, %land.lhs.true29.if.end42_crit_edge ]
  %call39 = call i32 %.sink(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %fse) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool44.not = icmp eq i32 %call39, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.if.then76.critedge_crit_edge

if.end42.if.then76.critedge_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.critedge

if.end46:                                         ; preds = %if.end42
  %41 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmt2, align 4
  %43 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp48 = icmp eq i32 %42, %44
  br i1 %cmp48, label %land.lhs.true49, label %if.end46.if.else53_crit_edge

if.end46.if.else53_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true49:                                  ; preds = %if.end46
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %47 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp51 = icmp eq i32 %46, %48
  br i1 %cmp51, label %land.lhs.true49.if.end87_crit_edge, label %land.lhs.true49.if.else53_crit_edge

land.lhs.true49.if.else53_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true49.if.end87_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.else53:                                        ; preds = %land.lhs.true49.if.else53_crit_edge, %if.end46.if.else53_crit_edge
  %49 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %50)
  %cmp56.not = icmp ult i32 %42, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp61.not = icmp ugt i32 %42, %44
  %or.cond = select i1 %cmp56.not, i1 true, i1 %cmp61.not
  br i1 %or.cond, label %if.else53.for.inc_crit_edge, label %land.lhs.true62

if.else53.for.inc_crit_edge:                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true62:                                  ; preds = %if.else53
  %51 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height, align 4
  %53 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp65.not = icmp ult i32 %52, %54
  br i1 %cmp65.not, label %land.lhs.true62.for.inc_crit_edge, label %land.lhs.true66

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %55 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %56)
  %cmp70.not = icmp ugt i32 %52, %56
  br i1 %cmp70.not, label %land.lhs.true66.for.inc_crit_edge, label %land.lhs.true66.if.end87_crit_edge

land.lhs.true66.if.end87_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true66.for.inc_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true66.for.inc_crit_edge, %land.lhs.true62.for.inc_crit_edge, %if.else53.for.inc_crit_edge
  %57 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fse, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %fse, align 4
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %pad21 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %pad21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pad21, align 4
  %tobool22.not = icmp eq ptr %62, null
  br i1 %tobool22.not, label %for.inc.if.then76.critedge_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.inc.if.then76.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.critedge

if.then76.critedge:                               ; preds = %for.inc.if.then76.critedge_crit_edge, %if.end42.if.then76.critedge_crit_edge, %land.lhs.true.if.then76.critedge_crit_edge, %if.else.lr.ph.if.then76.critedge_crit_edge, %if.end13.if.then76.critedge_crit_edge
  %63 = ptrtoint ptr %fmt15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fmt15, align 4
  %65 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %fmt2, align 4
  %height84 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %height84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height84, align 4
  %height86 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %height86 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %height86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then76.critedge, %land.lhs.true66.if.end87_crit_edge, %land.lhs.true49.if.end87_crit_edge
  %colorspace = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5, i32 0, i32 1
  %69 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %colorspace, align 4
  %colorspace91 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %colorspace91 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %colorspace91, align 4
  %call92 = call fastcc i32 @vpfe_calc_format_size(ptr noundef %1, ptr noundef %fmt.0, ptr noundef %f)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #9
  ret i32 %call92
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
define internal i32 @vpfe_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %capabilities = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 1, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_index, align 8
  %arrayidx1 = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1, align 8
  %10 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %std_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %capabilities = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 1, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_index, align 8
  %arrayidx1 = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %std_id)
  %cmp = icmp eq i64 %9, %std_id
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 21
  %10 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.148) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn82 = load ptr, ptr %subdevs, align 4
  %cmp14.not84 = icmp eq ptr %.pn82, %subdevs
  br i1 %cmp14.not84, label %if.end8.if.end52_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.if.end52_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn87 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn82, %if.end8.for.body_crit_edge ]
  %__err.085 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %__sd.088 = getelementptr i8, ptr %.pn87, i32 -80
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id16 = getelementptr i8, ptr %.pn87, i32 68
  %15 = ptrtoint ptr %grp_id16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %grp_id16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp18 = icmp eq i32 %16, %14
  br i1 %cmp18, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn87, i32 24
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true20

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true20:                                  ; preds = %land.lhs.true
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_std, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %land.lhs.true20.if.end29_crit_edge, label %if.then24

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 %22(ptr noundef %__sd.088, i64 noundef %std_id) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true20.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %__err.1 = phi i32 [ %call28, %if.then24 ], [ %__err.085, %land.lhs.true20.if.end29_crit_edge ], [ %__err.085, %land.lhs.true.if.end29_crit_edge ], [ %__err.085, %lor.lhs.false.if.end29_crit_edge ]
  %23 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %__err.1, label %if.end29.for.end_crit_edge [
    i32 0, label %if.end29.for.inc_crit_edge
    i32 -515, label %if.end29.for.inc_crit_edge94
  ]

if.end29.for.inc_crit_edge94:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %if.end29.for.inc_crit_edge94
  %24 = ptrtoint ptr %.pn87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn87, align 4
  %cmp14.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp41 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp4281 = icmp slt i32 %__err.1, 0
  %cmp42 = and i1 %cmp41, %cmp4281
  br i1 %cmp42, label %do.end46, label %for.end.if.end52_crit_edge

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %name49 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name49) #12
  br label %cleanup

if.end52:                                         ; preds = %for.end.if.end52_crit_edge, %if.end8.if.end52_crit_edge
  %call53 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %1, i64 noundef %std_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end46, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %__err.1, %do.end46 ], [ %call53, %if.end52 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %capabilities = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 1, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn47 = load ptr, ptr %subdevs, align 4
  %cmp.not49 = icmp eq ptr %.pn47, %subdevs
  br i1 %cmp.not49, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn52 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn47, %if.end.for.body_crit_edge ]
  %__err.050 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.053 = getelementptr i8, ptr %.pn52, i32 -80
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id5 = getelementptr i8, ptr %.pn52, i32 68
  %9 = ptrtoint ptr %grp_id5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %grp_id5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp7 = icmp eq i32 %10, %8
  br i1 %cmp7, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn52, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true9

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true9:                                   ; preds = %land.lhs.true
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %querystd, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true9.if.end18_crit_edge, label %if.then13

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 %16(ptr noundef %__sd.053, ptr noundef %std_id) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true9.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %__err.1 = phi i32 [ %call17, %if.then13 ], [ %__err.050, %land.lhs.true9.if.end18_crit_edge ], [ %__err.050, %land.lhs.true.if.end18_crit_edge ], [ %__err.050, %lor.lhs.false.if.end18_crit_edge ]
  %17 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %__err.1, label %if.end18.cleanup_crit_edge [
    i32 0, label %if.end18.for.inc_crit_edge
    i32 -515, label %if.end18.for.inc_crit_edge61
  ]

if.end18.for.inc_crit_edge61:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %if.end18.for.inc_crit_edge61
  %18 = ptrtoint ptr %.pn52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn52, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp30 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp30, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %inp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13.i = icmp slt i32 %3, 1
  br i1 %cmp13.i, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 4
  %arrayidx10 = getelementptr [1 x %struct.vpfe_subdev_info], ptr %6, i32 0, i32 0, i32 1, i32 %3
  %7 = call ptr @memcpy(ptr %inp, ptr %arrayidx10, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cfg1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1.i, align 4
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_subdev.i, align 4
  %sd.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd.i, align 8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %sd2.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %sd2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd2.i, align 8
  %dev_priv.i31.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i31.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i31.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %addr4.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr4.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp6.i = icmp eq i16 %15, %17
  br i1 %cmp6.i, label %land.lhs.true.i, label %entry.vpfe_get_app_input_index.exit_crit_edge

entry.vpfe_get_app_input_index.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_get_app_input_index.exit

land.lhs.true.i:                                  ; preds = %entry
  %adapter8.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i, align 4
  %22 = ptrtoint ptr %adapter8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter8.i, align 8
  %nr9.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp10.i = icmp eq i32 %21, %25
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.vpfe_get_app_input_index.exit_crit_edge

land.lhs.true.i.vpfe_get_app_input_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_get_app_input_index.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %current_input.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %current_input.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_input.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp12.i = icmp sgt i32 %27, 0
  br i1 %cmp12.i, label %if.then.i.vpfe_get_app_input_index.exit_crit_edge, label %if.end.i

if.then.i.vpfe_get_app_input_index.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_get_app_input_index.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %index, align 4
  br label %vpfe_get_app_input_index.exit

vpfe_get_app_input_index.exit:                    ; preds = %if.end.i, %if.then.i.vpfe_get_app_input_index.exit_crit_edge, %land.lhs.true.i.vpfe_get_app_input_index.exit_crit_edge, %entry.vpfe_get_app_input_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -1, %if.then.i.vpfe_get_app_input_index.exit_crit_edge ], [ -22, %land.lhs.true.i.vpfe_get_app_input_index.exit_crit_edge ], [ -22, %entry.vpfe_get_app_input_index.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @vpfe_set_input(ptr noundef %1, i32 noundef %index)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %std_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %pixelaspect = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %3, i32 3
  %4 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pixelaspect, align 8
  %6 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %std_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge21
    i32 0, label %sw.bb10
  ]

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge21
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %11 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %std_index, align 8
  %width = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %12, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 8
  %width5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width5, align 4
  %16 = load i32, ptr %std_index, align 8
  %height = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %16, i32 2
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height9, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20
  %20 = call ptr @memcpy(ptr %r11, ptr %crop, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  %r = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20
  %cr.sroa.5.0.crop.sroa_idx = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %cr.sroa.5.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %cr.sroa.5.0.copyload = load i32, ptr %cr.sroa.5.0.crop.sroa_idx, align 4
  %cr.sroa.9.0.crop.sroa_idx = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 3
  %3 = ptrtoint ptr %cr.sroa.9.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cr.sroa.9.0.copyload = load i32, ptr %cr.sroa.9.0.crop.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #9
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %6 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %r1 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %r, ptr %r1, i32 16)
  %num_buffers.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 21
  %8 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.154) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not = icmp eq i32 %13, 0
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 0, i32 noundef %cr.sroa.5.0.copyload, i32 noundef 0, ptr noundef %6, i32 noundef 0, i32 noundef %cr.sroa.9.0.copyload, i32 noundef 0, i32 noundef 0) #9
  %14 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %sub = sub i32 %cr.sroa.5.0.copyload, %17
  %18 = call i32 @llvm.umin.i32(i32 %15, i32 %sub)
  %19 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %r, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  %sub28 = sub i32 %cr.sroa.9.0.copyload, %23
  %24 = call i32 @llvm.umin.i32(i32 %21, i32 %sub28)
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %4, align 4
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.if.end39_crit_edge, label %land.lhs.true

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end6
  %28 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %29)
  %cmp.i128 = icmp slt i32 %18, %29
  br i1 %cmp.i128, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %top2.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %top2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %top2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %31)
  %cmp3.i = icmp slt i32 %24, %31
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.i = add i32 %18, %17
  %width6.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %width6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width6.i, align 4
  %add7.i = add i32 %33, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add7.i)
  %cmp8.i = icmp ugt i32 %add.i, %add7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %v4l2_rect_enclosed.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

v4l2_rect_enclosed.exit:                          ; preds = %if.end.i
  %add12.i = add i32 %24, %23
  %height14.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %height14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height14.i, align 4
  %add15.i = add i32 %35, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add15.i)
  %cmp16.i.not = icmp ugt i32 %add12.i, %add15.i
  br i1 %cmp16.i.not, label %v4l2_rect_enclosed.exit.cleanup_crit_edge, label %v4l2_rect_enclosed.exit.if.end39_crit_edge

v4l2_rect_enclosed.exit.if.end39_crit_edge:       ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

v4l2_rect_enclosed.exit.cleanup_crit_edge:        ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %v4l2_rect_enclosed.exit.if.end39_crit_edge, %if.end6.if.end39_crit_edge
  %and41 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end47_crit_edge, label %land.lhs.true43

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true43:                                  ; preds = %if.end39
  %36 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %18)
  %cmp.i129 = icmp slt i32 %37, %18
  br i1 %cmp.i129, label %land.lhs.true43.cleanup_crit_edge, label %lor.lhs.false.i133

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i133:                               ; preds = %land.lhs.true43
  %top.i130 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %top.i130 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %top.i130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %24)
  %cmp3.i132 = icmp slt i32 %39, %24
  br i1 %cmp3.i132, label %lor.lhs.false.i133.cleanup_crit_edge, label %if.end.i139

lor.lhs.false.i133.cleanup_crit_edge:             ; preds = %lor.lhs.false.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i139:                                      ; preds = %lor.lhs.false.i133
  %width.i134 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %width.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width.i134, align 4
  %add.i135 = add i32 %41, %37
  %add7.i137 = add i32 %18, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i135, i32 %add7.i137)
  %cmp8.i138 = icmp ugt i32 %add.i135, %add7.i137
  br i1 %cmp8.i138, label %if.end.i139.cleanup_crit_edge, label %v4l2_rect_enclosed.exit147

if.end.i139.cleanup_crit_edge:                    ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

v4l2_rect_enclosed.exit147:                       ; preds = %if.end.i139
  %height.i140 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %height.i140 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i140, align 4
  %add12.i141 = add i32 %43, %39
  %add15.i143 = add i32 %24, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i141, i32 %add15.i143)
  %cmp16.i144.not = icmp ugt i32 %add12.i141, %add15.i143
  br i1 %cmp16.i144.not, label %v4l2_rect_enclosed.exit147.cleanup_crit_edge, label %v4l2_rect_enclosed.exit147.if.end47_crit_edge

v4l2_rect_enclosed.exit147.if.end47_crit_edge:    ; preds = %v4l2_rect_enclosed.exit147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

v4l2_rect_enclosed.exit147.cleanup_crit_edge:     ; preds = %v4l2_rect_enclosed.exit147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %v4l2_rect_enclosed.exit147.if.end47_crit_edge, %if.end39.if.end47_crit_edge
  %44 = call ptr @memcpy(ptr %crop, ptr %r, i32 16)
  %45 = call ptr @memcpy(ptr %r1, ptr %r, i32 16)
  %current_vpfe_fmt = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 17
  %46 = ptrtoint ptr %current_vpfe_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %current_vpfe_fmt, align 4
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_subdev.i, align 4
  %bus_width1.i = getelementptr inbounds %struct.vpfe_subdev_info, ptr %49, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %bus_width1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bus_width1.i, align 4
  %add.i148 = add i32 %51, 7
  %shr.i = lshr i32 %add.i148, 3
  %bitsperpixel.i = getelementptr inbounds %struct.vpfe_fmt, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %bitsperpixel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bitsperpixel.i, align 4
  %add2.i = add i32 %51, -1
  %sub.i = add i32 %add2.i, %53
  %div.i = udiv i32 %sub.i, %51
  %mul.i = mul i32 %div.i, %shr.i
  %ccdc = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %54 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ccdc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i149 = icmp eq i32 %55, 0
  br i1 %cmp.i149, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %win2.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 2
  %56 = call ptr @memcpy(ptr %win2.i, ptr %r, i32 16)
  %bytesperpixel.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %bytesperpixel.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul.i, ptr %bytesperpixel.i, align 4
  %mul.i151 = mul i32 %mul.i, %17
  %add.i152 = add i32 %mul.i151, 31
  %and.i = and i32 %add.i152, -32
  %bytesperline.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i, ptr %bytesperline.i, align 4
  br label %vpfe_ccdc_set_image_window.exit

if.else.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %win8.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 2
  %59 = call ptr @memcpy(ptr %win8.i, ptr %r, i32 16)
  %bytesperpixel11.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %bytesperpixel11.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i, ptr %bytesperpixel11.i, align 4
  %mul13.i = mul i32 %mul.i, %17
  %add14.i = add i32 %mul13.i, 31
  %and15.i = and i32 %add14.i, -32
  %bytesperline18.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 4
  %61 = ptrtoint ptr %bytesperline18.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and15.i, ptr %bytesperline18.i, align 4
  br label %vpfe_ccdc_set_image_window.exit

vpfe_ccdc_set_image_window.exit:                  ; preds = %if.else.i, %if.then.i
  %fmt53 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %fmt53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %17, ptr %fmt53, align 4
  %height58 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %height58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %23, ptr %height58, align 4
  %64 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ccdc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i154 = icmp eq i32 %65, 0
  %bytesperline.i155 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 4
  %bytesperline3.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 4
  %retval.0.in.i = select i1 %cmp.i154, ptr %bytesperline.i155, ptr %bytesperline3.i
  %66 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %retval.0.i156 = load i32, ptr %retval.0.in.i, align 4
  %bytesperline = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %67 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i156, ptr %bytesperline, align 4
  %mul = mul i32 %retval.0.i156, %23
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %68 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul, ptr %sizeimage, align 4
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp72 = icmp sgt i32 %69, 0
  br i1 %cmp72, label %do.end76, label %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge

vpfe_ccdc_set_image_window.exit.cleanup_crit_edge: ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end76:                                         ; preds = %vpfe_ccdc_set_image_window.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name79 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name79, i32 noundef %18, i32 noundef %24, i32 noundef %17, i32 noundef %23, i32 noundef %cr.sroa.5.0.copyload, i32 noundef %cr.sroa.9.0.copyload) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge, %v4l2_rect_enclosed.exit147.cleanup_crit_edge, %if.end.i139.cleanup_crit_edge, %lor.lhs.false.i133.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %v4l2_rect_enclosed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit147.cleanup_crit_edge ], [ 0, %do.end76 ], [ 0, %vpfe_ccdc_set_image_window.exit.cleanup_crit_edge ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %land.lhs.true.cleanup_crit_edge ], [ -34, %if.end.i.cleanup_crit_edge ], [ -34, %lor.lhs.false.i133.cleanup_crit_edge ], [ -34, %land.lhs.true43.cleanup_crit_edge ], [ -34, %if.end.i139.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_enum_size(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #9
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_subdev, align 4
  %sd1 = getelementptr inbounds %struct.vpfe_subdev_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd1, align 8
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_active_fmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 0
  br i1 %cmp7.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 18, i32 %k.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp1.i = icmp eq i32 %13, %7
  br i1 %cmp1.i, label %find_format_by_pix.exit, label %for.cond.i

find_format_by_pix.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %find_format_by_pix.exit.do.body_crit_edge, label %if.end9

find_format_by_pix.exit.do.body_crit_edge:        ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %find_format_by_pix.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp sgt i32 %14, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name, i32 noundef %7) #12
  br label %cleanup

if.end9:                                          ; preds = %find_format_by_pix.exit
  %reserved = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 4
  %15 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %reserved, align 4
  %16 = getelementptr inbounds i8, ptr %fse, i32 12
  %17 = call ptr @memset(ptr %16, i32 0, i32 52)
  %18 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsize, align 4
  %20 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fse, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.vpfe_fmt, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code, align 4
  %code12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %24 = ptrtoint ptr %code12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %code12, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %25 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %which, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.else

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %pad15 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %pad15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pad15, align 4
  %tobool16.not = icmp eq ptr %29, null
  br i1 %tobool16.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enum_frame_size, align 4
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.else21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool22.not = icmp eq ptr %32, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %enum_frame_size24 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %enum_frame_size24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enum_frame_size24, align 4
  %tobool25.not = icmp eq ptr %34, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %land.lhs.true23.if.end36_crit_edge

land.lhs.true23.if.end36_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else29

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %land.lhs.true23.if.end36_crit_edge
  %.sink = phi ptr [ %31, %if.else29 ], [ %34, %land.lhs.true23.if.end36_crit_edge ]
  %call33 = call i32 %.sink(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %fse) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool38.not = icmp eq i32 %call33, 0
  br i1 %tobool38.not, label %do.body41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body41:                                        ; preds = %if.end36
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp42 = icmp sgt i32 %35, 0
  br i1 %cmp42, label %do.end46, label %do.body41.do.end56_crit_edge

do.body41.do.end56_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %name49 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fse, align 4
  %38 = ptrtoint ptr %code12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code12, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %40 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %42 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %44 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %46 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_height, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %name49, ptr noundef nonnull @.str.159, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47) #12
  br label %do.end56

do.end56:                                         ; preds = %do.end46, %do.body41.do.end56_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type, align 4
  %max_width57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %49 = ptrtoint ptr %max_width57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_width57, align 4
  %51 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %51, align 4
  %max_height58 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %53 = ptrtoint ptr %max_height58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_height58, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height, align 4
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp60 = icmp sgt i32 %56, 0
  br i1 %cmp60, label %do.end64, label %do.end56.cleanup_crit_edge

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end64:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %name67 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fsize, align 4
  %59 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pixel_format, align 4
  %conv.i = trunc i32 %60 to i8
  store i8 %conv.i, ptr @print_fourcc.code, align 1
  %shr.i = lshr i32 %60, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %60, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %60, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @print_fourcc.code, i32 0, i32 4), align 1
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name67, ptr noundef nonnull @.str.159, i32 noundef %58, ptr noundef nonnull @print_fourcc.code, i32 noundef %50, i32 noundef %54) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end56.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call33, %if.end36.cleanup_crit_edge ], [ 0, %do.end64 ], [ 0, %do.end56.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_ioctl_default(ptr noundef %file, ptr nocapture noundef readnone %priv, i1 noundef zeroext %valid_prio, i32 noundef %cmd, ptr noundef %param) #2 align 64 {
entry:
  %raw_params.i = alloca %struct.vpfe_ccdc_config_params_raw, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %valid_prio, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.166) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end12, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name9 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name9, ptr noundef nonnull @.str.166) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074026177, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074026177
  br i1 %cond, label %sw.bb, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %ccdc = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %raw_params.i) #9
  %4 = call ptr @memset(ptr %raw_params.i, i32 255, i32 36)
  %5 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccdc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.then.i.i, label %sw.bb.do.body16_crit_edge

sw.bb.do.body16_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.then.i.i:                                      ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.179, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %param, i32 36, i32 -1226833920) #13, !srcloc !393
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !392

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %raw_params.i, i32 noundef 36) #9
  %8 = call i32 @llvm.read_register.i32(metadata !374) #9
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !394
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !395
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %raw_params.i, ptr noundef %param, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !395
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end10.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !392

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 36, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 36, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %raw_params.i, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i = icmp sgt i32 %12, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then11.i.i.i.do.body16.thread_crit_edge

if.then11.i.i.i.do.body16.thread_crit_edge:       ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.thread

do.end.i:                                         ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name.i, ptr noundef nonnull @.str.176, i32 noundef %res.03.i.i.i) #12
  br label %do.body16

if.end10.i:                                       ; preds = %if.end.i.i.i
  %alaw.i.i = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, ptr %raw_params.i, i32 0, i32 1
  %13 = ptrtoint ptr %alaw.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alaw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.end10.i.if.end29_crit_edge, label %if.end.i.i

if.end10.i.if.end29_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end.i.i:                                       ; preds = %if.end10.i
  %gamma_wd.i.i = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, ptr %raw_params.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %gamma_wd.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gamma_wd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i.i = icmp ugt i32 %16, 6
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %17 = ptrtoint ptr %raw_params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp.i.i21.i = icmp eq i32 %18, 7
  %19 = trunc i32 %18 to i8
  %phi.cast.i.i.i = sub i8 15, %19
  %cond.i.i.i = select i1 %cmp.i.i21.i, i8 7, i8 %phi.cast.i.i.i
  %20 = trunc i32 %16 to i8
  %conv.i.i.i = sub nuw nsw i8 15, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp7.i.i = icmp ugt i32 %18, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i.i.i, i8 %cond.i.i.i)
  %cmp10.i.i = icmp ugt i8 %conv.i.i.i, %cond.i.i.i
  %or.cond.i.i = select i1 %cmp7.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i.if.end29_crit_edge

lor.lhs.false.i.i.if.end29_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

lor.lhs.false.i.i.do.body.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i.do.body.i.i_crit_edge, %if.end.i.i.do.body.i.i_crit_edge
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.i.i = icmp sgt i32 %21, 0
  br i1 %cmp13.i.i, label %do.end.i.i, label %do.body.i.i.do.body16.thread_crit_edge

do.body.i.i.do.body16.thread_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.thread

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name.i.i) #12
  br label %do.body16

do.body16.thread:                                 ; preds = %do.body.i.i.do.body16.thread_crit_edge, %if.then11.i.i.i.do.body16.thread_crit_edge
  %retval.0.i.ph.ph67 = phi i32 [ -14, %if.then11.i.i.i.do.body16.thread_crit_edge ], [ -22, %do.body.i.i.do.body16.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %raw_params.i) #9
  br label %cleanup

do.body16:                                        ; preds = %do.end.i.i, %do.end.i, %sw.bb.do.body16_crit_edge
  %retval.0.i.ph.ph = phi i32 [ -22, %sw.bb.do.body16_crit_edge ], [ -14, %do.end.i ], [ -22, %do.end.i.i ]
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %raw_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 1
  br i1 %cmp, label %do.end20, label %do.body16.cleanup_crit_edge

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %name23 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name23) #12
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false.i.i.if.end29_crit_edge, %if.end10.i.if.end29_crit_edge
  %config_params1.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 10
  %22 = call ptr @memcpy(ptr %config_params1.i.i, ptr %raw_params.i, i32 36)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %raw_params.i) #9
  %fmt = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16
  %23 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1
  %24 = call ptr @memset(ptr %23, i32 0, i32 200)
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %fmt, align 4
  %26 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ccdc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i60 = icmp eq i32 %27, 0
  %win4.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 2
  %win2.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 2
  %win4.sink.i.i = select i1 %cmp.i.i60, ptr %win2.i.i, ptr %win4.i.i
  %image_win.sroa.5.0.win4.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %win4.sink.i.i, i32 8
  %28 = ptrtoint ptr %image_win.sroa.5.0.win4.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %image_win.sroa.5.0.copyload.i = load i32, ptr %image_win.sroa.5.0.win4.sink.i.sroa_idx.i, align 4
  %image_win.sroa.7.0.win4.sink.i.sroa_idx.i = getelementptr inbounds i8, ptr %win4.sink.i.i, i32 12
  %29 = ptrtoint ptr %image_win.sroa.7.0.win4.sink.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %image_win.sroa.7.0.copyload.i = load i32, ptr %image_win.sroa.7.0.win4.sink.i.sroa_idx.i, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %image_win.sroa.5.0.copyload.i, ptr %23, align 4
  %height3.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %image_win.sroa.7.0.copyload.i, ptr %height3.i, align 4
  %bytesperline.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 4
  %bytesperline3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 4
  %retval.0.in.i.i = select i1 %cmp.i.i60, ptr %bytesperline.i.i, ptr %bytesperline3.i.i
  %32 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i, ptr %bytesperline.i, align 4
  %mul.i = mul i32 %retval.0.i.i, %image_win.sroa.7.0.copyload.i
  %sizeimage.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %sizeimage.i, align 4
  %buf_type.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 8
  %buf_type3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 10
  %retval.0.in.i67.i = select i1 %cmp.i.i60, ptr %buf_type.i.i, ptr %buf_type3.i.i
  %35 = ptrtoint ptr %retval.0.in.i67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.0.i68.i = load i32, ptr %retval.0.in.i67.i, align 4
  br i1 %cmp.i.i60, label %if.end29.vpfe_ccdc_get_pixel_format.exit.i_crit_edge, label %if.else.i.i

if.end29.vpfe_ccdc_get_pixel_format.exit.i_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %vpfe_ccdc_get_pixel_format.exit.i

if.else.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %pix_order.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 9
  %36 = ptrtoint ptr %pix_order.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pix_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.i.i = icmp eq i32 %37, 0
  %..i.i = select i1 %cmp2.i.i, i32 1448695129, i32 1498831189
  br label %vpfe_ccdc_get_pixel_format.exit.i

vpfe_ccdc_get_pixel_format.exit.i:                ; preds = %if.else.i.i, %if.end29.vpfe_ccdc_get_pixel_format.exit.i_crit_edge
  %pixfmt.0.i.i = phi i32 [ 1448695129, %if.end29.vpfe_ccdc_get_pixel_format.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  %pixelformat.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %pixfmt.0.i.i, ptr %pixelformat.i, align 4
  %frm_fmt.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 1, i32 1
  %frm_fmt3.i.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 2, i32 1
  %retval.0.in.i71.i = select i1 %cmp.i.i60, ptr %frm_fmt.i.i, ptr %frm_fmt3.i.i
  %39 = ptrtoint ptr %retval.0.in.i71.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %retval.0.i72.i = load i32, ptr %retval.0.in.i71.i, align 4
  %40 = zext i32 %retval.0.i72.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %retval.0.i72.i, label %vpfe_ccdc_get_pixel_format.exit.i.do.body33_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then20.i
  ]

vpfe_ccdc_get_pixel_format.exit.i.do.body33_crit_edge: ; preds = %vpfe_ccdc_get_pixel_format.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then.i:                                        ; preds = %vpfe_ccdc_get_pixel_format.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %field.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

if.then20.i:                                      ; preds = %vpfe_ccdc_get_pixel_format.exit.i
  %42 = zext i32 %retval.0.i68.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %retval.0.i68.i, label %if.then20.i.do.body33_crit_edge [
    i32 0, label %if.then22.i
    i32 1, label %if.then27.i
  ]

if.then20.i.do.body33_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then22.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %field24.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %field24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %field24.i, align 4
  br label %cleanup

if.then27.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %field29.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %field29.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %field29.i, align 4
  br label %cleanup

do.body33:                                        ; preds = %if.then20.i.do.body33_crit_edge, %vpfe_ccdc_get_pixel_format.exit.i.do.body33_crit_edge
  %.str.185.sink = phi ptr [ @.str.182, %if.then20.i.do.body33_crit_edge ], [ @.str.185, %vpfe_ccdc_get_pixel_format.exit.i.do.body33_crit_edge ]
  %name39.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.185.sink, ptr noundef %name39.i) #12
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp34 = icmp sgt i32 %45, 1
  br i1 %cmp34, label %do.end38, label %do.body33.cleanup_crit_edge

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %name41 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name41) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.body33.cleanup_crit_edge, %if.then27.i, %if.then22.i, %if.then.i, %do.end20, %do.body16.cleanup_crit_edge, %do.body16.thread, %if.end12.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -16, %do.end6 ], [ -16, %do.end ], [ %retval.0.i.ph.ph, %do.end20 ], [ %retval.0.i.ph.ph, %do.body16.cleanup_crit_edge ], [ -22, %do.end38 ], [ -22, %do.body33.cleanup_crit_edge ], [ -25, %if.end12.cleanup_crit_edge ], [ %retval.0.i.ph.ph67, %do.body16.thread ], [ 0, %if.then27.i ], [ 0, %if.then22.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 28
  %2 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %base_addr.i3.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %4 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 33554432) #9, !srcloc !391
  %6 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !388
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #9, !srcloc !388
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx3.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx3.i, align 4
  %16 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i) #9, !srcloc !388
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx6.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 10
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx6.i, align 4
  %21 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %22, i32 44
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #9, !srcloc !388
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx9.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 11
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx9.i, align 4
  %26 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %27, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i) #9, !srcloc !388
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx12.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 12
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx12.i, align 4
  %31 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %32, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.i) #9, !srcloc !388
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx15.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 13
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx15.i, align 4
  %36 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %37, i32 56
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #9, !srcloc !388
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx18.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 14
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx18.i, align 4
  %41 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %42, i32 60
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105.i) #9, !srcloc !388
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx21.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 15
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx21.i, align 4
  %46 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %47, i32 72
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107.i) #9, !srcloc !388
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx24.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 18
  %50 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx24.i, align 4
  %51 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %52, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109.i) #9, !srcloc !388
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx27.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 19
  %55 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx27.i, align 4
  %56 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %57, i32 80
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #9, !srcloc !388
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx30.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 20
  %60 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx30.i, align 4
  %61 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %62, i32 84
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #9, !srcloc !388
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx33.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 21
  %65 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx33.i, align 4
  %66 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %67, i32 32
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115.i) #9, !srcloc !388
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx36.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 8
  %70 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx36.i, align 4
  %71 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %72, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.i) #9, !srcloc !388
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx39.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx39.i, align 4
  %76 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #9, !srcloc !388
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx42.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 4
  %80 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx42.i, align 4
  %81 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %82, i32 20
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121.i) #9, !srcloc !388
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx45.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 5
  %85 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx45.i, align 4
  %86 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %87, i32 24
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123.i) #9, !srcloc !388
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx48.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 6
  %90 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx48.i, align 4
  %91 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %92, i32 28
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125.i) #9, !srcloc !388
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx51.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 7
  %95 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx51.i, align 4
  %96 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %97, i32 36
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #9, !srcloc !388
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %arrayidx54.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 9
  %100 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx54.i, align 4
  %101 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 0) #9, !srcloc !391
  %103 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %104, i32 264
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %106 = and i32 %105, -33554433
  %107 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i4.i18 = getelementptr i8, ptr %108, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i18, i32 %106) #9, !srcloc !391
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21, i32 28
  %2 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %base_addr.i3.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 0, i32 3
  %4 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 33554432) #9, !srcloc !391
  %arrayidx.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #9, !srcloc !391
  %arrayidx2.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 8
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  %13 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %15) #9, !srcloc !391
  %arrayidx4.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 10
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %18 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %20) #9, !srcloc !391
  %arrayidx6.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 11
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i, align 4
  %23 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %25) #9, !srcloc !391
  %arrayidx8.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 12
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.i, align 4
  %28 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 %30) #9, !srcloc !391
  %arrayidx10.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 13
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx10.i, align 4
  %33 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %35) #9, !srcloc !391
  %arrayidx12.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 14
  %36 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12.i, align 4
  %38 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %39, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 %40) #9, !srcloc !391
  %arrayidx14.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 15
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx14.i, align 4
  %43 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %44, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %45) #9, !srcloc !391
  %arrayidx16.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 18
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx16.i, align 4
  %48 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %49, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %50) #9, !srcloc !391
  %arrayidx18.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 19
  %51 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx18.i, align 4
  %53 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %54, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %55) #9, !srcloc !391
  %arrayidx20.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 20
  %56 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx20.i, align 4
  %58 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %59, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 %60) #9, !srcloc !391
  %arrayidx22.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 21
  %61 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx22.i, align 4
  %63 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %64, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 %65) #9, !srcloc !391
  %arrayidx24.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx24.i, align 4
  %68 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %70) #9, !srcloc !391
  %arrayidx26.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx26.i, align 4
  %73 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %74, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %75) #9, !srcloc !391
  %arrayidx28.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 4
  %76 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx28.i, align 4
  %78 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %80) #9, !srcloc !391
  %arrayidx30.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 5
  %81 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx30.i, align 4
  %83 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %85) #9, !srcloc !391
  %arrayidx32.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 6
  %86 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx32.i, align 4
  %88 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %89, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %90 = tail call i32 @llvm.bswap.i32(i32 %87) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %90) #9, !srcloc !391
  %arrayidx34.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 7
  %91 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx34.i, align 4
  %93 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %94, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %92) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %95) #9, !srcloc !391
  %arrayidx36.i = getelementptr %struct.vpfe_device, ptr %1, i32 0, i32 26, i32 1, i32 9
  %96 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx36.i, align 4
  %98 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %99, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %100) #9, !srcloc !391
  %101 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %102, i32 264
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  %104 = and i32 %103, -33554433
  %105 = ptrtoint ptr %base_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base_addr.i3.i, align 4
  %add.ptr.i4.i15 = getelementptr i8, ptr %106, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15, i32 %104) #9, !srcloc !391
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !175, !177, !178, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !270, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !352, !354, !356, !358, !359, !360, !361, !363, !364, !365, !366, !368, !369, !370, !372}
!llvm.named.register.sp = !{!374}
!llvm.module.flags = !{!375, !376, !377, !378, !379, !380, !381, !382}
!llvm.ident = !{!383}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype311, !1, !"__UNIQUE_ID_debugtype311", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug312, !4, !"__UNIQUE_ID_debug312", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 38, i32 1}
!5 = !{ptr @__initcall__kmod_am437x_vpfe__322_2636_vpfe_driver_init6, !6, !"__initcall__kmod_am437x_vpfe__322_2636_vpfe_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2636, i32 1}
!7 = !{ptr @__exitcall_vpfe_driver_exit, !6, !"__exitcall_vpfe_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author323, !9, !"__UNIQUE_ID_author323", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2638, i32 1}
!10 = !{ptr @__UNIQUE_ID_description324, !11, !"__UNIQUE_ID_description324", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2639, i32 1}
!12 = !{ptr @__UNIQUE_ID_file325, !13, !"__UNIQUE_ID_file325", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2640, i32 1}
!14 = !{ptr @__UNIQUE_ID_license326, !13, !"__UNIQUE_ID_license326", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version327, !16, !"__UNIQUE_ID_version327", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2641, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 36, i32 12}
!23 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2630, i32 11}
!26 = !{ptr @vpfe_driver, !27, !"vpfe_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2626, i32 31}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2406, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vpfe_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @vpfe_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2427, i32 11}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2429, i32 3}
!40 = !{ptr @vpfe_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vpfe_probe._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2436, i32 3}
!44 = !{ptr @vpfe_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vpfe_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2449, i32 3}
!48 = !{ptr @vpfe_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vpfe_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2469, i32 3}
!52 = !{ptr @vpfe_probe._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vpfe_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2298, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vpfe_get_pdata.__UNIQUE_ID_ddebug321, !55, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2322, i32 35}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2331, i32 34}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2341, i32 4}
!64 = !{ptr @vpfe_get_pdata._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vpfe_get_pdata._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2349, i32 4}
!68 = !{ptr @vpfe_get_pdata._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vpfe_get_pdata._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2363, i32 4}
!72 = !{ptr @vpfe_get_pdata._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vpfe_get_pdata._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @vpfe_async_ops, !75, !"vpfe_async_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2282, i32 52}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2168, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vpfe_async_bound._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vpfe_async_bound._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2184, i32 3}
!83 = !{ptr @vpfe_async_bound._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @vpfe_async_bound._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2193, i32 4}
!87 = !{ptr @vpfe_async_bound._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @vpfe_async_bound._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2201, i32 3}
!91 = !{ptr @vpfe_async_bound._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @vpfe_async_bound._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @formats, !94, !"formats", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 61, i32 24}
!95 = !{ptr @print_fourcc.code, !96, !"code", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 158, i32 14}
!97 = !{ptr @vpfe_probe_complete.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2214, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vpfe_probe_complete.__key.45, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2215, i32 2}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2242, i32 3}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vpfe_probe_complete._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @vpfe_probe_complete._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2262, i32 3}
!110 = !{ptr @vpfe_probe_complete._entry.49, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vpfe_probe_complete._entry_ptr.51, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1631, i32 3}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @vpfe_set_input._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @vpfe_set_input._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1639, i32 3}
!119 = !{ptr @vpfe_set_input._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @vpfe_set_input._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1653, i32 5}
!123 = !{ptr @vpfe_set_input._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @vpfe_set_input._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 768, i32 3}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vpfe_ccdc_set_hw_if_params._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @vpfe_ccdc_set_hw_if_params._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 770, i32 3}
!132 = !{ptr @vpfe_ccdc_set_hw_if_params._entry.62, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @vpfe_ccdc_set_hw_if_params._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 978, i32 3}
!136 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vpfe_config_image_format._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @vpfe_config_image_format._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 988, i32 3}
!141 = !{ptr @vpfe_config_image_format._entry.67, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vpfe_config_image_format._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1301, i32 2}
!145 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @__subdev_get_format._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @__subdev_get_format._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1337, i32 3}
!150 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @vpfe_calc_format_size._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @vpfe_calc_format_size._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1348, i32 2}
!155 = !{ptr @vpfe_calc_format_size._entry.74, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @vpfe_calc_format_size._entry_ptr.76, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 904, i32 2}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @vpfe_config_ccdc_image_format._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @vpfe_config_ccdc_image_format._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 909, i32 3}
!164 = !{ptr @vpfe_config_ccdc_image_format._entry.79, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @vpfe_config_ccdc_image_format._entry_ptr.81, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 616, i32 2}
!168 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @vpfe_ccdc_set_pixel_format._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @vpfe_ccdc_set_pixel_format._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @vpfe_standards, !172, !"vpfe_standards", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 56, i32 35}
!173 = !{ptr @vpfe_video_qops, !174, !"vpfe_video_qops", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2082, i32 29}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1789, i32 2}
!177 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @vpfe_queue_setup._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @vpfe_queue_setup._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!182 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1907, i32 3}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @vpfe_start_streaming._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @vpfe_start_streaming._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @init_completion.__key, !189, !"__key", i1 false, i1 false}
!189 = !{!"../include/linux/completion.h", i32 87, i32 2}
!190 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 544, i32 3}
!193 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @vpfe_ccdc_config_raw._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @vpfe_ccdc_config_raw._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 568, i32 2}
!198 = !{ptr @vpfe_ccdc_config_raw._entry.92, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @vpfe_ccdc_config_raw._entry_ptr.94, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 257, i32 2}
!202 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @vpfe_reg_dump._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @vpfe_reg_dump._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 258, i32 2}
!207 = !{ptr @vpfe_reg_dump._entry.97, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @vpfe_reg_dump._entry_ptr.99, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 259, i32 2}
!211 = !{ptr @vpfe_reg_dump._entry.100, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @vpfe_reg_dump._entry_ptr.102, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 260, i32 2}
!215 = !{ptr @vpfe_reg_dump._entry.103, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @vpfe_reg_dump._entry_ptr.105, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 261, i32 2}
!219 = !{ptr @vpfe_reg_dump._entry.106, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @vpfe_reg_dump._entry_ptr.108, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 262, i32 2}
!223 = !{ptr @vpfe_reg_dump._entry.109, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @vpfe_reg_dump._entry_ptr.111, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 263, i32 2}
!227 = !{ptr @vpfe_reg_dump._entry.112, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @vpfe_reg_dump._entry_ptr.114, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 265, i32 2}
!231 = !{ptr @vpfe_reg_dump._entry.115, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @vpfe_reg_dump._entry_ptr.117, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 267, i32 2}
!235 = !{ptr @vpfe_reg_dump._entry.118, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @vpfe_reg_dump._entry_ptr.120, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 269, i32 2}
!239 = !{ptr @vpfe_reg_dump._entry.121, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @vpfe_reg_dump._entry_ptr.123, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 271, i32 2}
!243 = !{ptr @vpfe_reg_dump._entry.124, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @vpfe_reg_dump._entry_ptr.126, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1944, i32 3}
!247 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @vpfe_stop_streaming._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @vpfe_stop_streaming._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @vpfe_fops, !251, !"vpfe_fops", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2093, i32 42}
!252 = !{ptr @.str.129, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1084, i32 3}
!254 = !{ptr @.str.130, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @vpfe_open._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @vpfe_open._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 334, i32 3}
!259 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @vpfe_ccdc_close._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @vpfe_ccdc_close._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 338, i32 3}
!264 = !{ptr @vpfe_ccdc_close._entry.133, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @vpfe_ccdc_close._entry_ptr.135, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @vpfe_ioctl_ops, !267, !"vpfe_ioctl_ops", i1 false, i1 false}
!267 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2104, i32 36}
!268 = !{ptr @.str.136, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1277, i32 21}
!270 = !{ptr @.str.137, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1279, i32 4}
!272 = !{ptr @.str.138, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1384, i32 2}
!274 = !{ptr @.str.139, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @vpfe_enum_fmt._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @vpfe_enum_fmt._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1459, i32 3}
!279 = !{ptr @vpfe_s_fmt._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @vpfe_s_fmt._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1477, i32 3}
!283 = !{ptr @vpfe_s_fmt._entry.141, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @vpfe_s_fmt._entry_ptr.143, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.144, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1324, i32 2}
!287 = !{ptr @.str.145, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @__subdev_set_format._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @__subdev_set_format._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1402, i32 3}
!292 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @vpfe_try_fmt._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @vpfe_try_fmt._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1717, i32 3}
!297 = !{ptr @vpfe_s_std._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @vpfe_s_std._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1725, i32 3}
!301 = !{ptr @vpfe_s_std._entry.149, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @vpfe_s_std._entry_ptr.151, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1603, i32 3}
!305 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @vpfe_enum_input._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @vpfe_enum_input._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2003, i32 3}
!310 = !{ptr @vpfe_s_selection._entry, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @vpfe_s_selection._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2034, i32 2}
!314 = !{ptr @vpfe_s_selection._entry.155, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @vpfe_s_selection._entry_ptr.157, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1510, i32 3}
!318 = !{ptr @.str.159, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @vpfe_enum_size._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @vpfe_enum_size._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1526, i32 2}
!323 = !{ptr @vpfe_enum_size._entry.160, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @vpfe_enum_size._entry_ptr.162, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 1534, i32 2}
!327 = !{ptr @vpfe_enum_size._entry.163, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @vpfe_enum_size._entry_ptr.165, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2047, i32 3}
!331 = !{ptr @vpfe_ioctl_default._entry, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @vpfe_ioctl_default._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @vpfe_ioctl_default._entry.167, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2053, i32 3}
!335 = !{ptr @vpfe_ioctl_default._entry_ptr.168, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.170, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2061, i32 4}
!338 = !{ptr @vpfe_ioctl_default._entry.169, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @vpfe_ioctl_default._entry_ptr.171, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.173, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2068, i32 4}
!342 = !{ptr @vpfe_ioctl_default._entry.172, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @vpfe_ioctl_default._entry_ptr.174, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 362, i32 3}
!346 = !{ptr @.str.176, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @vpfe_ccdc_set_params._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @vpfe_ccdc_set_params._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = distinct !{null, !350, !"__already_done", i1 false, i1 false}
!350 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!351 = distinct !{null, !350, !"<string literal>", i1 false, i1 false}
!352 = distinct !{null, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!354 = !{ptr @.str.179, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!356 = !{ptr @.str.180, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 291, i32 3}
!358 = !{ptr @.str.181, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @vpfe_ccdc_validate_param._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @vpfe_ccdc_validate_param._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.182, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 888, i32 4}
!363 = !{ptr @.str.183, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @vpfe_get_ccdc_image_format._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @vpfe_get_ccdc_image_format._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.185, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 892, i32 3}
!368 = !{ptr @vpfe_get_ccdc_image_format._entry.184, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @vpfe_get_ccdc_image_format._entry_ptr.186, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @vpfe_of_match, !371, !"vpfe_of_match", i1 false, i1 false}
!371 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2620, i32 34}
!372 = !{ptr @vpfe_pm_ops, !373, !"vpfe_pm_ops", i1 false, i1 false}
!373 = !{!"../drivers/media/platform/am437x/am437x-vpfe.c", i32 2618, i32 8}
!374 = !{!"sp"}
!375 = !{i32 1, !"wchar_size", i32 2}
!376 = !{i32 1, !"min_enum_size", i32 4}
!377 = !{i32 8, !"branch-target-enforcement", i32 0}
!378 = !{i32 8, !"sign-return-address", i32 0}
!379 = !{i32 8, !"sign-return-address-all", i32 0}
!380 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!381 = !{i32 7, !"uwtable", i32 1}
!382 = !{i32 7, !"frame-pointer", i32 2}
!383 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!384 = !{i64 2148256727}
!385 = !{i64 741550, i64 741575, i64 741597, i64 741613, i64 741625, i64 741645, i64 741669, i64 741685, i64 741697}
!386 = !{i64 2148256915}
!387 = !{i64 2148824973, i64 2148824978, i64 2148824991, i64 2148825035, i64 2148825069, i64 2148825090}
!388 = !{i64 4274500}
!389 = !{i64 2151814849}
!390 = !{i64 2151816204}
!391 = !{i64 4274082}
!392 = !{!"branch_weights", i32 2000, i32 1}
!393 = !{i64 2153226004, i64 2153226029}
!394 = !{i64 5721559}
!395 = !{i64 5721756}
!396 = !{i64 2153206989}
