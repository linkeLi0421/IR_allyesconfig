; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-isp.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-isp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.102, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.102 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.is_param_region = type { %struct.global_param, %struct.sensor_param, %struct.buffer_param, %struct.isp_param, %struct.drc_param, %struct.scalerc_param, %struct.odc_param, %struct.dis_param, %struct.tdnr_param, %struct.scalerp_param, %struct.fd_param }
%struct.buffer_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.scalerc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_imageeffect = type { i32, i32, i32, [12 x i32], i32 }
%struct.param_scaler_input_crop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_scaler_output_crop = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.odc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.dis_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_otf_output }
%struct.tdnr_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_3dnr_1stframe, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_3dnr_1stframe = type { i32, [14 x i32], i32 }
%struct.scalerp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_scaler_rotation, %struct.param_scaler_flip, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_rotation = type { i32, [14 x i32], i32 }
%struct.param_scaler_flip = type { i32, [14 x i32], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__param_str_debug_isp = internal constant [25 x i8] c"exynos_fimc_is.debug_isp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fimc_isp_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_isp = internal constant %struct.kernel_param { ptr @__param_str_debug_isp, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fimc_isp_debug } }, section "__param", align 4
@__UNIQUE_ID_debug_isptype299 = internal constant [38 x i8] c"exynos_fimc_is.parmtype=debug_isp:int\00", section ".modinfo", align 1
@fimc_isp_formats = internal constant { [3 x %struct.fimc_fmt], [56 x i8] } { [3 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 12290, i32 1195528775, i32 64, i16 1, i16 0, i8 0, [3 x i8] c"\08\00\00", i16 0, i16 0 }, %struct.fimc_fmt { i32 12298, i32 808534338, i32 65, i16 1, i16 0, i8 0, [3 x i8] c"\0A\00\00", i16 0, i16 0 }, %struct.fimc_fmt { i32 12305, i32 842088770, i32 66, i16 1, i16 0, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 0 }], [56 x i8] zeroinitializer }, align 32
@fimc_isp_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_is_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&isp->subdev_lock\00", [46 x i8] zeroinitializer }, align 32
@fimc_is_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @fimc_is_core_ops, ptr null, ptr null, ptr @fimc_is_subdev_video_ops, ptr null, ptr null, ptr null, ptr @fimc_is_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIMC-IS-ISP\00", [20 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fimc_isp:719:(handler)->_lock\00", [34 x i8] zeroinitializer }, align 32
@iso_qmenu = internal constant { [5 x i64], [56 x i8] } { [5 x i64] [i64 50, i64 100, i64 200, i64 400, i64 800], [56 x i8] zeroinitializer }, align 32
@fimc_is_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @fimc_isp_subdev_registered, ptr @fimc_isp_subdev_unregistered, ptr @fimc_isp_subdev_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@fimc_is_subdev_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @fimc_is_link_setup, ptr null }, [20 x i8] zeroinitializer }, align 32
@fimc_is_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to set control: %s (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fimc_is_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos4-is/fimc-isp.c\00", [51 x i8] zeroinitializer }, align 32
@fimc_is_s_ctrl._entry_ptr = internal global ptr @fimc_is_s_ctrl._entry, section ".printk_index", align 4
@__ctrl_set_image_effect.effects = internal unnamed_addr constant [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\02\04", [2 x i8] c"\03\02", [2 x i8] c"\10\03"], align 1
@fimc_is_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_isp_subdev_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fimc_is_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_isp_subdev_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fimc_is_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_is_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_isp_subdev_get_fmt, ptr @fimc_isp_subdev_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_power.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos_fimc_is\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_isp_subdev_s_power\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"on: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d on: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.5, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: firmware booting failed\0A\00", [33 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_power._entry_ptr = internal global ptr @fimc_isp_subdev_s_power._entry, section ".printk_index", align 4
@fimc_isp_subdev_s_power._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.5, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: sensor close timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_power._entry_ptr.13 = internal global ptr @fimc_isp_subdev_s_power._entry.11, section ".printk_index", align 4
@fimc_isp_subdev_s_power._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.5, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: sub-IP power off timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_power._entry_ptr.16 = internal global ptr @fimc_isp_subdev_s_power._entry.14, section ".printk_index", align 4
@fimc_isp_subdev_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: on: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_isp_subdev_s_stream\00", [39 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_stream._entry_ptr = internal global ptr @fimc_isp_subdev_s_stream._entry, section ".printk_index", align 4
@fimc_isp_subdev_s_stream._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: changing mode to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_stream._entry_ptr.21 = internal global ptr @fimc_isp_subdev_s_stream._entry.19, section ".printk_index", align 4
@fimc_isp_subdev_s_stream._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: stream on timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_stream._entry_ptr.24 = internal global ptr @fimc_isp_subdev_s_stream._entry.22, section ".printk_index", align 4
@fimc_isp_subdev_s_stream._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.5, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: stream off timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_s_stream._entry_ptr.27 = internal global ptr @fimc_isp_subdev_s_stream._entry.25, section ".printk_index", align 4
@fimc_isp_subdev_get_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: pad%d: fmt: 0x%x, %dx%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_isp_subdev_get_fmt\00", [40 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_get_fmt._entry_ptr = internal global ptr @fimc_isp_subdev_get_fmt._entry, section ".printk_index", align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: pad%d: code: 0x%x, %dx%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_isp_subdev_set_fmt\00", [40 x i8] zeroinitializer }, align 32
@fimc_isp_subdev_set_fmt._entry_ptr = internal global ptr @fimc_isp_subdev_set_fmt._entry, section ".printk_index", align 4
@switch.table.fimc_is_s_ctrl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963800, i64 9963803, i64 9963807, i64 10094850, i64 10094868, i64 10094872, i64 10094873, i64 10094875]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 16]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"fimc_isp_debug\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 31, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"fimc_isp_formats\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 34, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"fimc_isp_ctrl_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 673, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 701, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"fimc_is_subdev_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 438, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 708, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 719, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"iso_qmenu\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 503, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"fimc_is_subdev_internal_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 418, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"fimc_is_subdev_media_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 104, i32 45 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 662, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"fimc_is_core_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 434, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"fimc_is_subdev_video_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 430, i32 43 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"fimc_is_subdev_pad_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 424, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 308, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 319, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 334, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 345, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 259, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 273, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 284, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 293, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 152, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 998, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [48 x i8] c"../drivers/media/platform/exynos4-is/fimc-isp.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 203, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"switch.table.fimc_is_s_ctrl\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_debug_isptype299, ptr @__param_debug_isp, ptr @fimc_is_s_ctrl._entry, ptr @fimc_is_s_ctrl._entry_ptr, ptr @fimc_isp_subdev_get_fmt._entry, ptr @fimc_isp_subdev_get_fmt._entry_ptr, ptr @fimc_isp_subdev_s_power._entry, ptr @fimc_isp_subdev_s_power._entry.11, ptr @fimc_isp_subdev_s_power._entry.14, ptr @fimc_isp_subdev_s_power._entry_ptr, ptr @fimc_isp_subdev_s_power._entry_ptr.13, ptr @fimc_isp_subdev_s_power._entry_ptr.16, ptr @fimc_isp_subdev_s_stream._entry, ptr @fimc_isp_subdev_s_stream._entry.19, ptr @fimc_isp_subdev_s_stream._entry.22, ptr @fimc_isp_subdev_s_stream._entry.25, ptr @fimc_isp_subdev_s_stream._entry_ptr, ptr @fimc_isp_subdev_s_stream._entry_ptr.21, ptr @fimc_isp_subdev_s_stream._entry_ptr.24, ptr @fimc_isp_subdev_s_stream._entry_ptr.27, ptr @fimc_isp_subdev_set_fmt._entry, ptr @fimc_isp_subdev_set_fmt._entry_ptr, ptr @fimc_isp_debug, ptr @fimc_isp_formats, ptr @fimc_isp_ctrl_ops, ptr @fimc_isp_subdev_create.__key, ptr @.str, ptr @fimc_is_subdev_ops, ptr @.str.1, ptr @fimc_isp_subdev_create._key, ptr @.str.2, ptr @iso_qmenu, ptr @fimc_is_subdev_internal_ops, ptr @fimc_is_subdev_media_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fimc_is_core_ops, ptr @fimc_is_subdev_video_ops, ptr @fimc_is_subdev_pad_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.fimc_is_s_ctrl], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_qmenu to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_subdev_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_power._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_power._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_stream._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_stream._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_s_stream._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_get_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_subdev_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fimc_is_s_ctrl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fimc_isp_find_format(ptr noundef readonly %pixelformat, ptr noundef readonly %mbus_code, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp sgt i32 %index, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool.not = icmp eq ptr %pixelformat, null
  %tobool5.not = icmp eq ptr %mbus_code, null
  br i1 %tobool.not, label %for.cond.preheader.if.end4_crit_edge, label %land.lhs.true

for.cond.preheader.if.end4_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %for.cond.preheader
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195528775, i32 %1)
  %cmp2 = icmp eq i32 %1, 1195528775
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %for.cond.preheader.if.end4_crit_edge
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %land.lhs.true6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.end4
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12290, i32 %3)
  %cmp8 = icmp eq i32 %3, 12290
  br i1 %cmp8, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp11 = icmp eq i32 %index, 0
  %spec.select = select i1 %cmp11, ptr @fimc_isp_formats, ptr null
  br i1 %tobool.not, label %if.end10.if.end4.1_crit_edge, label %land.lhs.true.1

if.end10.if.end4.1_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.1

land.lhs.true.1:                                  ; preds = %if.end10
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808534338, i32 %5)
  %cmp2.1 = icmp eq i32 %5, 808534338
  br i1 %cmp2.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.if.end4.1_crit_edge

land.lhs.true.1.if.end4.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.1:                                        ; preds = %land.lhs.true.1.if.end4.1_crit_edge, %if.end10.if.end4.1_crit_edge
  br i1 %tobool5.not, label %if.end4.1.if.end10.1_crit_edge, label %land.lhs.true6.1

if.end4.1.if.end10.1_crit_edge:                   ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.1

land.lhs.true6.1:                                 ; preds = %if.end4.1
  %6 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %7)
  %cmp8.1 = icmp eq i32 %7, 12298
  br i1 %cmp8.1, label %land.lhs.true6.1.cleanup_crit_edge, label %land.lhs.true6.1.if.end10.1_crit_edge

land.lhs.true6.1.if.end10.1_crit_edge:            ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.1

land.lhs.true6.1.cleanup_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.1:                                       ; preds = %land.lhs.true6.1.if.end10.1_crit_edge, %if.end4.1.if.end10.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp11.1 = icmp eq i32 %index, 1
  %spec.select.1 = select i1 %cmp11.1, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), ptr %spec.select
  br i1 %tobool.not, label %if.end10.1.if.end4.2_crit_edge, label %land.lhs.true.2

if.end10.1.if.end4.2_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.2

land.lhs.true.2:                                  ; preds = %if.end10.1
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842088770, i32 %9)
  %cmp2.2 = icmp eq i32 %9, 842088770
  br i1 %cmp2.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.if.end4.2_crit_edge

land.lhs.true.2.if.end4.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.2:                                        ; preds = %land.lhs.true.2.if.end4.2_crit_edge, %if.end10.1.if.end4.2_crit_edge
  br i1 %tobool5.not, label %if.end4.2.if.end10.2_crit_edge, label %land.lhs.true6.2

if.end4.2.if.end10.2_crit_edge:                   ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.2

land.lhs.true6.2:                                 ; preds = %if.end4.2
  %10 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12305, i32 %11)
  %cmp8.2 = icmp eq i32 %11, 12305
  br i1 %cmp8.2, label %land.lhs.true6.2.cleanup_crit_edge, label %land.lhs.true6.2.if.end10.2_crit_edge

land.lhs.true6.2.if.end10.2_crit_edge:            ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.2

land.lhs.true6.2.cleanup_crit_edge:               ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.2:                                       ; preds = %land.lhs.true6.2.if.end10.2_crit_edge, %if.end4.2.if.end10.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp11.2 = icmp eq i32 %index, 2
  %spec.select.2 = select i1 %cmp11.2, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), ptr %spec.select.1
  br label %cleanup

cleanup:                                          ; preds = %if.end10.2, %land.lhs.true6.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true6.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ @fimc_isp_formats, %land.lhs.true.cleanup_crit_edge ], [ @fimc_isp_formats, %land.lhs.true6.cleanup_crit_edge ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), %land.lhs.true.1.cleanup_crit_edge ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), %land.lhs.true6.1.cleanup_crit_edge ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %land.lhs.true.2.cleanup_crit_edge ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %land.lhs.true6.2.cleanup_crit_edge ], [ %spec.select.2, %if.end10.2 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_isp_irq_handler(ptr noundef %is) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1573072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %args = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %args, align 4
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 1573076
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #9, !srcloc !96
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %arrayidx4 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx4, align 4
  tail call void @fimc_is_fw_clear_irq1(ptr noundef %is, i32 noundef 1) #9
  tail call void @fimc_isp_video_irq_handler(ptr noundef %is) #9
  %irq_queue = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_fw_clear_irq1(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_video_irq_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_isp_subdev_create(ptr noundef %isp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6
  %subdev = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1
  %subdev_lock = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %subdev_lock, ptr noundef nonnull @.str, ptr noundef nonnull @fimc_isp_subdev_create.__key) #9
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @fimc_is_subdev_ops) #9
  %owner = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %owner, align 4
  %grp_id = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 10
  %1 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16384, ptr %grp_id, align 4
  %flags = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 9
  %4 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 12)
  %function = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16386, ptr %function, align 4
  %subdev_pads = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 2
  %flags4 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %flags4, align 4
  %flags7 = getelementptr %struct.fimc_isp, ptr %isp, i32 0, i32 2, i32 1, i32 4
  %7 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %flags7, align 4
  %flags10 = getelementptr %struct.fimc_isp, ptr %isp, i32 0, i32 2, i32 2, i32 4
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags10, align 4
  %call14 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 3, ptr noundef %subdev_pads) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 20, ptr noundef nonnull @fimc_isp_subdev_create._key, ptr noundef nonnull @.str.2) #9
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963778, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %saturation = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %saturation, align 4
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963776, i64 noundef -4, i64 noundef 4, i64 noundef 1, i64 noundef 0) #9
  %brightness = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %brightness, align 4
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963777, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %contrast = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %contrast, align 4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963803, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %sharpness = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %sharpness, align 4
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963779, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %hue = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 7
  %13 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %hue, align 4
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094868, i8 noundef zeroext 8, i64 noundef -335, i8 noundef zeroext 1) #9
  %auto_wb = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %auto_wb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %auto_wb, align 4
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094850, i64 noundef -4, i64 noundef 4, i64 noundef 1, i64 noundef 0) #9
  %exposure = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 9
  %15 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %exposure, align 4
  %call23 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094873, i8 noundef zeroext 3, i64 noundef -16, i8 noundef zeroext 0) #9
  %exp_metering = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 11
  %16 = ptrtoint ptr %exp_metering to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call23, ptr %exp_metering, align 4
  %call24 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #9
  %call25 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094872, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #9
  %17 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call25, ptr %17, align 4
  %call26 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094871, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull @iso_qmenu) #9
  %iso = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 2, i32 1
  %19 = ptrtoint ptr %iso to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call26, ptr %iso, align 4
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094875, i64 noundef 0, i64 noundef 3, i64 noundef 0, i64 noundef 0) #9
  %aewb_lock = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %aewb_lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call27, ptr %aewb_lock, align 4
  %call28 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 16, i64 noundef -65552, i8 noundef zeroext 0) #9
  %colorfx = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 13
  %21 = ptrtoint ptr %colorfx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28, ptr %colorfx, align 4
  %error = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6, i32 0, i32 9
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %if.end33, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %17, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %ctrl_handler = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %internal_ops = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @fimc_is_subdev_internal_ops, ptr %internal_ops, align 4
  %ops36 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 0, i32 11
  %26 = ptrtoint ptr %ops36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fimc_is_subdev_media_ops, ptr %ops36, align 4
  %dev_priv.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 11
  %27 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %isp, ptr %dev_priv.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %isp, i32 -128
  %sink_fmt.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 4
  %28 = ptrtoint ptr %sink_fmt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1296, ptr %sink_fmt.i, align 8
  %height.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 732, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12298, ptr %code.i, align 8
  %src_fmt.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 3
  %31 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1280, ptr %src_fmt.i, align 8
  %height5.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 720, ptr %height5.i, align 4
  %code7.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %code7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12298, ptr %code7.i, align 8
  tail call void @__is_set_frame_size(ptr noundef %add.ptr.i.i, ptr noundef %src_fmt.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call14, %entry.cleanup_crit_edge ], [ %23, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_isp_subdev_destroy(ptr noundef %isp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #9
  %ctrls = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #9
  %dev_priv.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_priv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -524
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.do.end_crit_edge [
    i32 9963777, label %sw.bb
    i32 9963778, label %sw.bb1
    i32 9963803, label %sw.bb3
    i32 10094850, label %sw.bb5
    i32 9963776, label %sw.bb7
    i32 9963779, label %sw.bb9
    i32 10094873, label %sw.bb11
    i32 10094868, label %sw.bb14
    i32 10094875, label %sw.bb17
    i32 10094872, label %sw.bb19
    i32 9963800, label %sw.bb22
    i32 9963807, label %sw.bb25
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %6) #9
  br label %land.lhs.true

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val2, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %8) #9
  br label %land.lhs.true

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val4, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 4, i32 noundef %10) #9
  br label %land.lhs.true

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %12) #9
  br label %land.lhs.true

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef %14) #9
  br label %land.lhs.true

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val10, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %16) #9
  br label %land.lhs.true

sw.bb11:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %switch.lookup, label %sw.bb11.do.end_crit_edge

sw.bb11.do.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

switch.lookup:                                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.fimc_is_s_ctrl, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @__is_set_isp_metering(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %switch.load) #9
  br label %land.lhs.true

sw.bb14:                                          ; preds = %entry
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val15, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %22, label %sw.bb14.do.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 6, label %sw.bb1.i70
    i32 8, label %sw.bb2.i71
    i32 2, label %sw.bb3.i72
    i32 3, label %sw.bb4.i
  ]

sw.bb14.do.end_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb.i:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_awb(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #9
  br label %land.lhs.true

sw.bb1.i70:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_awb(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0) #9
  br label %land.lhs.true

sw.bb2.i71:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_awb(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1) #9
  br label %land.lhs.true

sw.bb3.i72:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_awb(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2) #9
  br label %land.lhs.true

sw.bb4.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_awb(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 3) #9
  br label %land.lhs.true

sw.bb17:                                          ; preds = %entry
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %and2.i = and i32 %25, 1
  %is_p_region.i = getelementptr i8, ptr %1, i32 10160
  %26 = ptrtoint ptr %is_p_region.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %is_p_region.i, align 4
  %aa.i = getelementptr inbounds %struct.is_param_region, ptr %27, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %aa.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %and2.i, ptr %aa.i, align 1
  %target.i = getelementptr inbounds %struct.is_param_region, ptr %27, i32 0, i32 3, i32 4, i32 1
  %29 = ptrtoint ptr %target.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 2, ptr %target.i, align 1
  %config_index.i.i = getelementptr i8, ptr %1, i32 10156
  %30 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config_index.i.i, align 8
  %p_region_index.i.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %31, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %p_region_index.i.i) #9
  %ae_lock_state.i = getelementptr i8, ptr %1, i32 10184
  %32 = ptrtoint ptr %ae_lock_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and2.i, ptr %ae_lock_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %call.i = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb17.do.end_crit_edge, label %sw.epilog

sw.bb17.do.end_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb19:                                          ; preds = %entry
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i75 = icmp eq i32 %34, 1
  br i1 %cmp.i75, label %if.then.i, label %if.end.i77

if.then.i:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_iso(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #9
  br label %land.lhs.true

if.end.i77:                                       ; preds = %sw.bb19
  %iso1.i = getelementptr i8, ptr %1, i32 192
  %35 = ptrtoint ptr %iso1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iso1.i, align 4
  %val.i76 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val.i76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp2.i = icmp ugt i32 %38, 4
  br i1 %cmp2.i, label %if.end.i77.do.end_crit_edge, label %if.end4.i

if.end.i77.do.end_crit_edge:                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [5 x i64], ptr @iso_qmenu, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %40 to i32
  tail call void @__is_set_isp_iso(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %conv.i) #9
  br label %land.lhs.true

sw.bb22:                                          ; preds = %entry
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val23, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %42, label %sw.bb22.do.end_crit_edge [
    i32 0, label %sw.bb.i79
    i32 1, label %sw.bb1.i80
    i32 2, label %sw.bb2.i81
    i32 3, label %sw.bb3.i82
  ]

sw.bb22.do.end_crit_edge:                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb.i79:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_afc(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #9
  br label %land.lhs.true

sw.bb1.i80:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_afc(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 50) #9
  br label %land.lhs.true

sw.bb2.i81:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_afc(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 60) #9
  br label %land.lhs.true

sw.bb3.i82:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__is_set_isp_afc(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0) #9
  br label %land.lhs.true

sw.bb25:                                          ; preds = %entry
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val26, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %45, label %sw.bb25.land.lhs.true_crit_edge [
    i32 0, label %sw.bb25.if.end.i84_crit_edge
    i32 1, label %sw.bb25.if.end.i84_crit_edge96
    i32 2, label %sw.bb25.if.end.i84_crit_edge97
    i32 3, label %sw.bb25.if.end.i84_crit_edge98
    i32 16, label %if.end.fold.split6.i
  ]

sw.bb25.if.end.i84_crit_edge98:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

sw.bb25.if.end.i84_crit_edge97:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

sw.bb25.if.end.i84_crit_edge96:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

sw.bb25.if.end.i84_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

sw.bb25.land.lhs.true_crit_edge:                  ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.fold.split6.i:                             ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.end.fold.split6.i, %sw.bb25.if.end.i84_crit_edge, %sw.bb25.if.end.i84_crit_edge96, %sw.bb25.if.end.i84_crit_edge97, %sw.bb25.if.end.i84_crit_edge98
  %i.02.lcssa.i = phi i32 [ %45, %sw.bb25.if.end.i84_crit_edge ], [ 4, %if.end.fold.split6.i ], [ %45, %sw.bb25.if.end.i84_crit_edge96 ], [ %45, %sw.bb25.if.end.i84_crit_edge97 ], [ %45, %sw.bb25.if.end.i84_crit_edge98 ]
  %arrayidx5.i = getelementptr [5 x [2 x i8]], ptr @__ctrl_set_image_effect.effects, i32 0, i32 %i.02.lcssa.i, i32 1
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %48 to i32
  tail call void @__is_set_isp_effect(ptr noundef %add.ptr.i, i32 noundef %conv6.i) #9
  br label %land.lhs.true

sw.epilog:                                        ; preds = %sw.bb17
  %and.i = lshr i32 %25, 1
  %and.lobit.i = and i32 %and.i, 1
  %49 = ptrtoint ptr %aa.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %and.lobit.i, ptr %aa.i, align 1
  %50 = ptrtoint ptr %target.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 2, ptr %target.i, align 1
  %51 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config_index.i.i, align 8
  %p_region_index.i45.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %52, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %p_region_index.i45.i) #9
  %awb_lock_state.i = getelementptr i8, ptr %1, i32 10188
  %53 = ptrtoint ptr %awb_lock_state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.lobit.i, ptr %awb_lock_state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %call24.i = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %sw.epilog.do.end_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.bb22.do.end_crit_edge, %if.end.i77.do.end_crit_edge, %sw.bb17.do.end_crit_edge, %sw.bb14.do.end_crit_edge, %sw.bb11.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.094 = phi i32 [ %call24.i, %sw.epilog.do.end_crit_edge ], [ -22, %sw.bb22.do.end_crit_edge ], [ -22, %if.end.i77.do.end_crit_edge ], [ %call.i, %sw.bb17.do.end_crit_edge ], [ -22, %sw.bb14.do.end_crit_edge ], [ -22, %sw.bb11.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %name = getelementptr i8, ptr %1, i32 -276
  %name29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %54 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name29, align 4
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %55, i32 noundef %57) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end.i84, %sw.bb25.land.lhs.true_crit_edge, %sw.bb3.i82, %sw.bb2.i81, %sw.bb1.i80, %sw.bb.i79, %if.end4.i, %if.then.i, %sw.bb4.i, %sw.bb3.i72, %sw.bb2.i71, %sw.bb1.i70, %sw.bb.i, %switch.lookup, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %state = getelementptr i8, ptr %1, i32 3112
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state, align 4
  %60 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool33.not = icmp eq i32 %60, 0
  br i1 %tobool33.not, label %land.lhs.true.cleanup_crit_edge, label %if.then34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true.cleanup_crit_edge, %do.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.094, %do.end ], [ %call35, %if.then34 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_adjust(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_metering(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_awb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_iso(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_afc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_effect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_isp_subdev_s_power.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_isp_subdev_s_power, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_isp_subdev_s_power.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 308, i32 noundef %on) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then6
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !102
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %state = getelementptr i8, ptr %1, i32 3508
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #9
  %call10 = tail call i32 @fimc_is_start_firmware(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end21

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name) #12
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i112 = tail call i32 @__pm_runtime_idle(ptr noundef %dev19, i32 noundef 5) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state) #9
  %call23 = tail call i32 @fimc_is_hw_initialize(ptr noundef %add.ptr.i) #9
  br label %cleanup

if.else:                                          ; preds = %do.end
  %state24 = getelementptr i8, ptr %1, i32 3508
  %7 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state24, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then27:                                        ; preds = %if.else
  tail call void @fimc_is_hw_close_sensor(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %call28 = tail call i32 @fimc_is_wait_event(ptr noundef %add.ptr.i, i32 noundef 4, i32 noundef 0, i32 noundef 3000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %name35 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name35) #12
  br label %cleanup

if.end39:                                         ; preds = %if.then27.if.end39_crit_edge, %if.else.if.end39_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end39_crit_edge ], [ %call28, %if.then27.if.end39_crit_edge ]
  %10 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state24, align 4
  %12 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool42.not = icmp eq i32 %12, 0
  br i1 %tobool42.not, label %if.end39.if.end55_crit_edge, label %if.then43

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then43:                                        ; preds = %if.end39
  tail call void @fimc_is_hw_subip_power_off(ptr noundef %add.ptr.i) #9
  %call44 = tail call i32 @fimc_is_wait_event(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef 0, i32 noundef 3000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.then43.if.end55_crit_edge

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %name51 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name51) #12
  br label %cleanup

if.end55:                                         ; preds = %if.then43.if.end55_crit_edge, %if.end39.if.end55_crit_edge
  %ret.1 = phi i32 [ %call44, %if.then43.if.end55_crit_edge ], [ %ret.0, %if.end39.if.end55_crit_edge ]
  %call56 = tail call i32 @fimc_is_cpu_set_power(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i113 = tail call i32 @__pm_runtime_idle(ptr noundef %dev58, i32 noundef 4) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state24) #9
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state24) #9
  %15 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state24, align 4
  %config_index = getelementptr i8, ptr %1, i32 10552
  %16 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config_index, align 8
  %p_region_index = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %17, i32 5
  %18 = ptrtoint ptr %p_region_index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %p_region_index, align 8
  %19 = load i32, ptr %config_index, align 8
  %arrayidx68 = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %19, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx68, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end49, %do.end33, %if.end21, %do.end15, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call44, %do.end49 ], [ %call28, %do.end33 ], [ %call23, %if.end21 ], [ %ret.1, %if.end55 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_start_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_close_sensor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_wait_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_subip_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_cpu_set_power(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef %on) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %state = getelementptr i8, ptr %1, i32 3508
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool9.not = icmp eq i32 %on, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @__get_pending_param_count(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.do.body19_crit_edge, label %if.then13

if.then10.do.body19_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.then13:                                        ; preds = %if.then10
  %call14 = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then13.cleanup_crit_edge, label %if.then13.do.body19_crit_edge

if.then13.do.body19_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body19:                                        ; preds = %if.then13.do.body19_crit_edge, %if.then10.do.body19_crit_edge
  %6 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20 = icmp sgt i32 %6, 0
  br i1 %cmp20, label %do.end24, label %do.body19.do.end31_crit_edge

do.body19.do.end31_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end24:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %config_index = getelementptr i8, ptr %1, i32 10552
  %7 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config_index, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name26, i32 noundef %8) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end24, %do.body19.do.end31_crit_edge
  %call32 = tail call i32 @fimc_is_itf_mode_change(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #9
  tail call void @fimc_is_hw_stream_on(ptr noundef %add.ptr.i) #9
  %call37 = tail call i32 @fimc_is_wait_event(ptr noundef %add.ptr.i, i32 noundef 7, i32 noundef 1, i32 noundef 3000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %name44 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name44) #12
  br label %cleanup

if.else:                                          ; preds = %if.end8
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #9
  tail call void @fimc_is_hw_stream_off(ptr noundef %add.ptr.i) #9
  %call49 = tail call i32 @fimc_is_wait_event(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 1, i32 noundef 3000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end59

do.end54:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %name56 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name56) #12
  br label %cleanup

if.end59:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub_index = getelementptr i8, ptr %1, i32 3028
  %9 = ptrtoint ptr %sub_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sub_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end54, %do.end42, %if.end35.cleanup_crit_edge, %do.end31.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end42 ], [ %call49, %do.end54 ], [ -16, %do.end5.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ -22, %do.end31.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_pending_param_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_mode_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_subdev_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp sgt i32 %1, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp11.2.i = icmp eq i32 %1, 2
  br i1 %cmp11.2.i, label %for.cond.preheader.i.if.end_crit_edge, label %fimc_isp_find_format.exit

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

fimc_isp_find_format.exit:                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp11.1.i = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %cmp11.i, ptr @fimc_isp_formats, ptr null
  %spec.select.1.i = select i1 %cmp11.1.i, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), ptr %spec.select.i
  %tobool.not = icmp eq ptr %spec.select.1.i, null
  br i1 %tobool.not, label %fimc_isp_find_format.exit.cleanup_crit_edge, label %fimc_isp_find_format.exit.if.end_crit_edge

fimc_isp_find_format.exit.if.end_crit_edge:       ; preds = %fimc_isp_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

fimc_isp_find_format.exit.cleanup_crit_edge:      ; preds = %fimc_isp_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %fimc_isp_find_format.exit.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %retval.0.i9 = phi ptr [ %spec.select.1.i, %fimc_isp_find_format.exit.if.end_crit_edge ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %for.cond.preheader.i.if.end_crit_edge ]
  %2 = ptrtoint ptr %retval.0.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retval.0.i9, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fimc_isp_find_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %fimc_isp_find_format.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !106

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %colorspace, align 4
  %subdev_lock = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %subdev_lock, i32 noundef 0) #9
  %pad2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %12 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sink_fmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %format, ptr %sink_fmt, i32 48)
  br label %if.end10

if.else:                                          ; preds = %if.end
  %src_fmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %format, ptr %src_fmt, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %colorspace, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8214, ptr %code, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then4
  tail call void @mutex_unlock(ptr noundef %subdev_lock) #9
  %18 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp12 = icmp sgt i32 %18, 0
  br i1 %cmp12, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %19 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad2, align 4
  %code16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code16, align 4
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef nonnull @.str.29, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  %format14.sroa.20 = alloca [60 x i8], align 4
  %format26.sroa.14 = alloca [60 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %subdev_lock = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %subdev_lock, i32 noundef 0) #9
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %colorspace.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %12 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 24, i32 noundef 3984, i32 noundef 0, ptr noundef %height.i, i32 noundef 20, i32 noundef 4012, i32 noundef 0, i32 noundef 0) #9
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12298, ptr %code.i, align 4
  br label %__isp_subdev_try_format.exit

if.else.i:                                        ; preds = %do.end5
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.i = icmp eq i32 %16, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else4.i

if.then3.i:                                       ; preds = %if.else.i
  %num_pads.i.i = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.not.i = icmp eq i16 %18, 0
  br i1 %cmp.not.i.not.i, label %do.end.i.i, label %if.then3.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !107

if.then3.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then3.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %if.end.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sink_fmt.i = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else4.i, %v4l2_subdev_get_try_format.exit.i
  %format1.0.i = phi ptr [ %20, %v4l2_subdev_get_try_format.exit.i ], [ %sink_fmt.i, %if.else4.i ]
  %21 = ptrtoint ptr %format1.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format1.0.i, align 4
  %sub.i = add i32 %22, -16
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %format, align 4
  %height7.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height7.i, align 4
  %sub8.i = add i32 %25, -12
  %height9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub8.i, ptr %height9.i, align 4
  %27 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp11.i = icmp eq i32 %28, 1
  br i1 %cmp11.i, label %if.then12.i, label %if.else15.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %code13.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %code13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8214, ptr %code13.i, align 4
  %30 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %colorspace.i, align 4
  br label %__isp_subdev_try_format.exit

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %code16.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %code16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code16.i, align 4
  %code17.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %code17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %code17.i, align 4
  br label %__isp_subdev_try_format.exit

__isp_subdev_try_format.exit:                     ; preds = %if.else15.i, %if.then12.i, %if.then.i
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6 = icmp eq i32 %35, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %__isp_subdev_try_format.exit
  %36 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pad.i, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %38 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %37, %conv.i
  br i1 %cmp.not.i, label %if.then7.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !106

if.then7.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then7.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %37, %if.then7.v4l2_subdev_get_try_format.exit_crit_edge ]
  %40 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %41, i32 %spec.select.i
  %42 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  %43 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp12 = icmp eq i32 %44, 0
  br i1 %cmp12, label %if.then13, label %v4l2_subdev_get_try_format.exit.if.end35_crit_edge

v4l2_subdev_get_try_format.exit.if.end35_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then13:                                        ; preds = %v4l2_subdev_get_try_format.exit
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %format14.sroa.20)
  %45 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %format14.sroa.0.0.copyload = load i32, ptr %fmt, align 4
  %format14.sroa.16.0.fmt.sroa_idx = getelementptr inbounds i8, ptr %fmt, i32 20
  %46 = ptrtoint ptr %format14.sroa.16.0.fmt.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %format14.sroa.16.0.copyload = load i32, ptr %format14.sroa.16.0.fmt.sroa_idx, align 4
  %format14.sroa.20.0.fmt.sroa_idx = getelementptr inbounds i8, ptr %fmt, i32 28
  %47 = call ptr @memcpy(ptr %format14.sroa.20, ptr %format14.sroa.20.0.fmt.sroa_idx, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format14.sroa.0.0.copyload)
  %cmp2.i80 = icmp eq i32 %format14.sroa.0.0.copyload, 0
  %sink_fmt.i87 = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 4
  %num_pads.i.i82 = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 1, i32 0, i32 5
  br i1 %cmp2.i80, label %if.then3.i84, label %if.then13.__isp_subdev_try_format.exit101_crit_edge

if.then13.__isp_subdev_try_format.exit101_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %__isp_subdev_try_format.exit101

if.then3.i84:                                     ; preds = %if.then13
  %48 = ptrtoint ptr %num_pads.i.i82 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_pads.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp.not.i.not.i83 = icmp eq i16 %49, 0
  br i1 %cmp.not.i.not.i83, label %do.end.i.i85, label %if.then3.i84.v4l2_subdev_get_try_format.exit.i86_crit_edge, !prof !107

if.then3.i84.v4l2_subdev_get_try_format.exit.i86_crit_edge: ; preds = %if.then3.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i86

do.end.i.i85:                                     ; preds = %if.then3.i84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i86

v4l2_subdev_get_try_format.exit.i86:              ; preds = %do.end.i.i85, %if.then3.i84.v4l2_subdev_get_try_format.exit.i86_crit_edge
  %50 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd_state, align 4
  br label %__isp_subdev_try_format.exit101

__isp_subdev_try_format.exit101:                  ; preds = %v4l2_subdev_get_try_format.exit.i86, %if.then13.__isp_subdev_try_format.exit101_crit_edge
  %format1.0.i89 = phi ptr [ %51, %v4l2_subdev_get_try_format.exit.i86 ], [ %sink_fmt.i87, %if.then13.__isp_subdev_try_format.exit101_crit_edge ]
  %52 = ptrtoint ptr %format1.0.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format1.0.i89, align 4
  %sub.i90 = add i32 %53, -16
  %height7.i91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i89, i32 0, i32 1
  %54 = ptrtoint ptr %height7.i91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height7.i91, align 4
  %sub8.i92 = add i32 %55, -12
  %56 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %57)
  %cmp.not.i104 = icmp ugt i16 %57, 1
  br i1 %cmp.not.i104, label %__isp_subdev_try_format.exit101.v4l2_subdev_get_try_format.exit109_crit_edge, label %do.end.i105, !prof !106

__isp_subdev_try_format.exit101.v4l2_subdev_get_try_format.exit109_crit_edge: ; preds = %__isp_subdev_try_format.exit101
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit109

do.end.i105:                                      ; preds = %__isp_subdev_try_format.exit101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit109

v4l2_subdev_get_try_format.exit109:               ; preds = %do.end.i105, %__isp_subdev_try_format.exit101.v4l2_subdev_get_try_format.exit109_crit_edge
  %spec.select.i106 = phi i32 [ 0, %do.end.i105 ], [ 1, %__isp_subdev_try_format.exit101.v4l2_subdev_get_try_format.exit109_crit_edge ]
  %58 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sd_state, align 4
  %arrayidx.i107 = getelementptr %struct.v4l2_subdev_pad_config, ptr %59, i32 %spec.select.i106
  %60 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i90, ptr %arrayidx.i107, align 4
  %format14.sroa.10.8.arrayidx.i107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107, i32 4
  %61 = ptrtoint ptr %format14.sroa.10.8.arrayidx.i107.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub8.i92, ptr %format14.sroa.10.8.arrayidx.i107.sroa_idx, align 4
  %format14.sroa.12.8.arrayidx.i107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107, i32 8
  %62 = ptrtoint ptr %format14.sroa.12.8.arrayidx.i107.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8214, ptr %format14.sroa.12.8.arrayidx.i107.sroa_idx, align 4
  %format14.sroa.16.8.arrayidx.i107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107, i32 12
  %63 = ptrtoint ptr %format14.sroa.16.8.arrayidx.i107.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %format14.sroa.16.0.copyload, ptr %format14.sroa.16.8.arrayidx.i107.sroa_idx, align 4
  %format14.sroa.16145.8.arrayidx.i107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107, i32 16
  %64 = ptrtoint ptr %format14.sroa.16145.8.arrayidx.i107.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %format14.sroa.16145.8.arrayidx.i107.sroa_idx, align 4
  %format14.sroa.20.8.arrayidx.i107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107, i32 20
  %65 = call ptr @memcpy(ptr %format14.sroa.20.8.arrayidx.i107.sroa_idx, ptr %format14.sroa.20, i32 28)
  br i1 %cmp2.i80, label %if.then3.i84.1, label %v4l2_subdev_get_try_format.exit109.__isp_subdev_try_format.exit101.1_crit_edge

v4l2_subdev_get_try_format.exit109.__isp_subdev_try_format.exit101.1_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit109
  call void @__sanitizer_cov_trace_pc() #11
  br label %__isp_subdev_try_format.exit101.1

if.then3.i84.1:                                   ; preds = %v4l2_subdev_get_try_format.exit109
  %66 = ptrtoint ptr %num_pads.i.i82 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_pads.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.not.i.not.i83.1 = icmp eq i16 %67, 0
  br i1 %cmp.not.i.not.i83.1, label %do.end.i.i85.1, label %if.then3.i84.1.v4l2_subdev_get_try_format.exit.i86.1_crit_edge, !prof !107

if.then3.i84.1.v4l2_subdev_get_try_format.exit.i86.1_crit_edge: ; preds = %if.then3.i84.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i86.1

do.end.i.i85.1:                                   ; preds = %if.then3.i84.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i86.1

v4l2_subdev_get_try_format.exit.i86.1:            ; preds = %do.end.i.i85.1, %if.then3.i84.1.v4l2_subdev_get_try_format.exit.i86.1_crit_edge
  %68 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_state, align 4
  br label %__isp_subdev_try_format.exit101.1

__isp_subdev_try_format.exit101.1:                ; preds = %v4l2_subdev_get_try_format.exit.i86.1, %v4l2_subdev_get_try_format.exit109.__isp_subdev_try_format.exit101.1_crit_edge
  %format1.0.i89.1 = phi ptr [ %69, %v4l2_subdev_get_try_format.exit.i86.1 ], [ %sink_fmt.i87, %v4l2_subdev_get_try_format.exit109.__isp_subdev_try_format.exit101.1_crit_edge ]
  %70 = ptrtoint ptr %format1.0.i89.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format1.0.i89.1, align 4
  %sub.i90.1 = add i32 %71, -16
  %height7.i91.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i89.1, i32 0, i32 1
  %72 = ptrtoint ptr %height7.i91.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height7.i91.1, align 4
  %sub8.i92.1 = add i32 %73, -12
  %code16.i98.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i89.1, i32 0, i32 2
  %74 = ptrtoint ptr %code16.i98.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %code16.i98.1, align 4
  %76 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %77)
  %cmp.not.i104.1 = icmp ugt i16 %77, 2
  br i1 %cmp.not.i104.1, label %__isp_subdev_try_format.exit101.1.v4l2_subdev_get_try_format.exit109.1_crit_edge, label %do.end.i105.1, !prof !106

__isp_subdev_try_format.exit101.1.v4l2_subdev_get_try_format.exit109.1_crit_edge: ; preds = %__isp_subdev_try_format.exit101.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit109.1

do.end.i105.1:                                    ; preds = %__isp_subdev_try_format.exit101.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit109.1

v4l2_subdev_get_try_format.exit109.1:             ; preds = %do.end.i105.1, %__isp_subdev_try_format.exit101.1.v4l2_subdev_get_try_format.exit109.1_crit_edge
  %spec.select.i106.1 = phi i32 [ 0, %do.end.i105.1 ], [ 2, %__isp_subdev_try_format.exit101.1.v4l2_subdev_get_try_format.exit109.1_crit_edge ]
  %78 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sd_state, align 4
  %arrayidx.i107.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %79, i32 %spec.select.i106.1
  %80 = ptrtoint ptr %arrayidx.i107.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub.i90.1, ptr %arrayidx.i107.1, align 4
  %format14.sroa.10.8.arrayidx.i107.1.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107.1, i32 4
  %81 = ptrtoint ptr %format14.sroa.10.8.arrayidx.i107.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub8.i92.1, ptr %format14.sroa.10.8.arrayidx.i107.1.sroa_idx, align 4
  %format14.sroa.12.8.arrayidx.i107.1.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107.1, i32 8
  %82 = ptrtoint ptr %format14.sroa.12.8.arrayidx.i107.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %75, ptr %format14.sroa.12.8.arrayidx.i107.1.sroa_idx, align 4
  %format14.sroa.16.8.arrayidx.i107.1.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107.1, i32 12
  %83 = ptrtoint ptr %format14.sroa.16.8.arrayidx.i107.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %format14.sroa.16.0.copyload, ptr %format14.sroa.16.8.arrayidx.i107.1.sroa_idx, align 4
  %format14.sroa.16145.8.arrayidx.i107.1.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107.1, i32 16
  %84 = ptrtoint ptr %format14.sroa.16145.8.arrayidx.i107.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %format14.sroa.16145.8.arrayidx.i107.1.sroa_idx, align 4
  %format14.sroa.20.8.arrayidx.i107.1.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i107.1, i32 20
  %85 = call ptr @memcpy(ptr %format14.sroa.20.8.arrayidx.i107.1.sroa_idx, ptr %format14.sroa.20, i32 28)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %format14.sroa.20)
  br label %if.end35

if.else:                                          ; preds = %__isp_subdev_try_format.exit
  %stream_count = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 12
  %86 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp21 = icmp eq i32 %87, 0
  br i1 %cmp21, label %if.then22, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then22:                                        ; preds = %if.else
  %88 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp24 = icmp eq i32 %89, 0
  br i1 %cmp24, label %if.else.i118, label %if.else30

if.else.i118:                                     ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %format26.sroa.14)
  %90 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %90)
  %format26.sroa.0.0.copyload = load i32, ptr %fmt, align 4
  %format26.sroa.12.0.fmt.sroa_idx = getelementptr inbounds i8, ptr %fmt, i32 20
  %91 = ptrtoint ptr %format26.sroa.12.0.fmt.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %format26.sroa.12.0.copyload = load i32, ptr %format26.sroa.12.0.fmt.sroa_idx, align 4
  %format26.sroa.14.0.fmt.sroa_idx = getelementptr inbounds i8, ptr %fmt, i32 28
  %92 = call ptr @memcpy(ptr %format26.sroa.14, ptr %format26.sroa.14.0.fmt.sroa_idx, i32 60)
  %sink_fmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 4
  %93 = call ptr @memcpy(ptr %sink_fmt, ptr %format, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format26.sroa.0.0.copyload)
  %cmp2.i117 = icmp eq i32 %format26.sroa.0.0.copyload, 0
  br i1 %cmp2.i117, label %if.then3.i121, label %if.else.i118.__isp_subdev_try_format.exit138_crit_edge

if.else.i118.__isp_subdev_try_format.exit138_crit_edge: ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %__isp_subdev_try_format.exit138

if.then3.i121:                                    ; preds = %if.else.i118
  %num_pads.i.i119 = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 1, i32 0, i32 5
  %94 = ptrtoint ptr %num_pads.i.i119 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_pads.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp.not.i.not.i120 = icmp eq i16 %95, 0
  br i1 %cmp.not.i.not.i120, label %do.end.i.i122, label %if.then3.i121.v4l2_subdev_get_try_format.exit.i123_crit_edge, !prof !107

if.then3.i121.v4l2_subdev_get_try_format.exit.i123_crit_edge: ; preds = %if.then3.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i123

do.end.i.i122:                                    ; preds = %if.then3.i121
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i123

v4l2_subdev_get_try_format.exit.i123:             ; preds = %do.end.i.i122, %if.then3.i121.v4l2_subdev_get_try_format.exit.i123_crit_edge
  %96 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd_state, align 4
  br label %__isp_subdev_try_format.exit138

__isp_subdev_try_format.exit138:                  ; preds = %v4l2_subdev_get_try_format.exit.i123, %if.else.i118.__isp_subdev_try_format.exit138_crit_edge
  %format1.0.i126 = phi ptr [ %97, %v4l2_subdev_get_try_format.exit.i123 ], [ %sink_fmt, %if.else.i118.__isp_subdev_try_format.exit138_crit_edge ]
  %98 = ptrtoint ptr %format1.0.i126 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %format1.0.i126, align 4
  %sub.i127 = add i32 %99, -16
  %height7.i128 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i126, i32 0, i32 1
  %100 = ptrtoint ptr %height7.i128 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height7.i128, align 4
  %sub8.i129 = add i32 %101, -12
  %code16.i135 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format1.0.i126, i32 0, i32 2
  %102 = ptrtoint ptr %code16.i135 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %code16.i135, align 4
  %src_fmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3
  %104 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub.i127, ptr %src_fmt, align 8
  %format26.sroa.9.8.src_fmt.sroa_idx = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %format26.sroa.9.8.src_fmt.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub8.i129, ptr %format26.sroa.9.8.src_fmt.sroa_idx, align 4
  %format26.sroa.10.8.src_fmt.sroa_idx = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3, i32 2
  %106 = ptrtoint ptr %format26.sroa.10.8.src_fmt.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %103, ptr %format26.sroa.10.8.src_fmt.sroa_idx, align 8
  %format26.sroa.12.8.src_fmt.sroa_idx = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %format26.sroa.12.8.src_fmt.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %format26.sroa.12.0.copyload, ptr %format26.sroa.12.8.src_fmt.sroa_idx, align 4
  %format26.sroa.12140.8.src_fmt.sroa_idx = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3, i32 4
  %108 = ptrtoint ptr %format26.sroa.12140.8.src_fmt.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 8, ptr %format26.sroa.12140.8.src_fmt.sroa_idx, align 8
  %format26.sroa.14.8.src_fmt.sroa_idx = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3, i32 5
  %109 = call ptr @memcpy(ptr %format26.sroa.14.8.src_fmt.sroa_idx, ptr %format26.sroa.14, i32 28)
  tail call void @__is_set_frame_size(ptr noundef %add.ptr.i, ptr noundef %src_fmt) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %format26.sroa.14)
  br label %if.end35

if.else30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %src_fmt31 = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 3
  %110 = call ptr @memcpy(ptr %src_fmt31, ptr %format, i32 48)
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %__isp_subdev_try_format.exit138, %if.else.if.end35_crit_edge, %v4l2_subdev_get_try_format.exit109.1, %v4l2_subdev_get_try_format.exit.if.end35_crit_edge
  %ret.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit109.1 ], [ 0, %v4l2_subdev_get_try_format.exit.if.end35_crit_edge ], [ 0, %__isp_subdev_try_format.exit138 ], [ 0, %if.else30 ], [ -16, %if.else.if.end35_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %subdev_lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_frame_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  %2 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_priv.i, align 4
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pipe, align 8
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2_dev, align 4
  %call2 = tail call i32 @fimc_isp_video_device_register(ptr noundef %1, ptr noundef %6, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pipe, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_isp_subdev_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  tail call void @fimc_isp_video_device_unregister(ptr noundef %1, i32 noundef 9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !107

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1296, ptr %5, align 4
  %fmt.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %fmt.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 732, ptr %fmt.sroa.8.0..sroa_idx, align 4
  %fmt.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %8 = ptrtoint ptr %fmt.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12290, ptr %fmt.sroa.10.0..sroa_idx, align 4
  %fmt.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 12
  %9 = ptrtoint ptr %fmt.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %fmt.sroa.11.0..sroa_idx, align 4
  %fmt.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 16
  %10 = ptrtoint ptr %fmt.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %fmt.sroa.12.0..sroa_idx, align 4
  %fmt.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 20
  %11 = call ptr @memset(ptr %fmt.sroa.13.0..sroa_idx, i32 0, i32 28)
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %14 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.not.i70 = icmp ugt i16 %15, 1
  br i1 %cmp.not.i70, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit72_crit_edge, label %do.end.i71, !prof !106

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit72_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit72

do.end.i71:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit72

v4l2_subdev_get_try_format.exit72:                ; preds = %do.end.i71, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit72_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i71 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit72_crit_edge ]
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %17, i32 %spec.select.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1280, ptr %arrayidx.i, align 4
  %fmt.sroa.8.0..sroa_idx9 = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %19 = ptrtoint ptr %fmt.sroa.8.0..sroa_idx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 720, ptr %fmt.sroa.8.0..sroa_idx9, align 4
  %fmt.sroa.10.0..sroa_idx13 = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %20 = ptrtoint ptr %fmt.sroa.10.0..sroa_idx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12290, ptr %fmt.sroa.10.0..sroa_idx13, align 4
  %fmt.sroa.11.0..sroa_idx17 = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %21 = ptrtoint ptr %fmt.sroa.11.0..sroa_idx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fmt.sroa.11.0..sroa_idx17, align 4
  %fmt.sroa.12.0..sroa_idx21 = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %22 = ptrtoint ptr %fmt.sroa.12.0..sroa_idx21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %fmt.sroa.12.0..sroa_idx21, align 4
  %fmt.sroa.13.0..sroa_idx25 = getelementptr inbounds i8, ptr %arrayidx.i, i32 20
  %23 = call ptr @memset(ptr %fmt.sroa.13.0..sroa_idx25, i32 0, i32 28)
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %26 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp.not.i75 = icmp ugt i16 %27, 2
  br i1 %cmp.not.i75, label %v4l2_subdev_get_try_format.exit72.v4l2_subdev_get_try_format.exit79_crit_edge, label %do.end.i76, !prof !106

v4l2_subdev_get_try_format.exit72.v4l2_subdev_get_try_format.exit79_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit79

do.end.i76:                                       ; preds = %v4l2_subdev_get_try_format.exit72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit79

v4l2_subdev_get_try_format.exit79:                ; preds = %do.end.i76, %v4l2_subdev_get_try_format.exit72.v4l2_subdev_get_try_format.exit79_crit_edge
  %spec.select.i77 = phi i32 [ 0, %do.end.i76 ], [ 2, %v4l2_subdev_get_try_format.exit72.v4l2_subdev_get_try_format.exit79_crit_edge ]
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %arrayidx.i78 = getelementptr %struct.v4l2_subdev_pad_config, ptr %29, i32 %spec.select.i77
  %30 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1280, ptr %arrayidx.i78, align 4
  %fmt.sroa.8.0..sroa_idx11 = getelementptr inbounds i8, ptr %arrayidx.i78, i32 4
  %31 = ptrtoint ptr %fmt.sroa.8.0..sroa_idx11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 720, ptr %fmt.sroa.8.0..sroa_idx11, align 4
  %fmt.sroa.10.0..sroa_idx15 = getelementptr inbounds i8, ptr %arrayidx.i78, i32 8
  %32 = ptrtoint ptr %fmt.sroa.10.0..sroa_idx15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12290, ptr %fmt.sroa.10.0..sroa_idx15, align 4
  %fmt.sroa.11.0..sroa_idx19 = getelementptr inbounds i8, ptr %arrayidx.i78, i32 12
  %33 = ptrtoint ptr %fmt.sroa.11.0..sroa_idx19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %fmt.sroa.11.0..sroa_idx19, align 4
  %fmt.sroa.12.0..sroa_idx23 = getelementptr inbounds i8, ptr %arrayidx.i78, i32 16
  %34 = ptrtoint ptr %fmt.sroa.12.0..sroa_idx23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %fmt.sroa.12.0..sroa_idx23, align 4
  %fmt.sroa.13.0..sroa_idx27 = getelementptr inbounds i8, ptr %arrayidx.i78, i32 20
  %35 = call ptr @memset(ptr %fmt.sroa.13.0..sroa_idx27, i32 0, i32 28)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_isp_video_device_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_video_device_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_link_setup(ptr nocapture noundef readnone %entity, ptr nocapture noundef readnone %local, ptr nocapture noundef readnone %remote, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__param_debug_isp, !1, !"__param_debug_isp", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_isptype299, !1, !"__UNIQUE_ID_debug_isptype299", i1 false, i1 false}
!3 = !{ptr @fimc_isp_subdev_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 701, i32 2}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 708, i32 39}
!8 = !{ptr @fimc_isp_subdev_create._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 719, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fimc_isp_debug, !12, !"fimc_isp_debug", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 31, i32 5}
!13 = !{ptr @__param_str_debug_isp, !1, !"__param_str_debug_isp", i1 false, i1 false}
!14 = !{ptr @fimc_isp_formats, !15, !"fimc_isp_formats", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 34, i32 30}
!16 = !{ptr @fimc_isp_ctrl_ops, !17, !"fimc_isp_ctrl_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 673, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 662, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fimc_is_s_ctrl._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @fimc_is_s_ctrl._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ctrl_set_image_effect.effects, !25, !"effects", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 573, i32 18}
!26 = !{ptr @fimc_is_subdev_ops, !27, !"fimc_is_subdev_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 438, i32 37}
!28 = !{ptr @fimc_is_core_ops, !29, !"fimc_is_core_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 434, i32 42}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 308, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fimc_isp_subdev_s_power.__UNIQUE_ID_ddebug300, !31, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!35 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 319, i32 4}
!38 = !{ptr @fimc_isp_subdev_s_power._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @fimc_isp_subdev_s_power._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 334, i32 5}
!42 = !{ptr @fimc_isp_subdev_s_power._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @fimc_isp_subdev_s_power._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 345, i32 5}
!46 = !{ptr @fimc_isp_subdev_s_power._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @fimc_isp_subdev_s_power._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @fimc_is_subdev_video_ops, !49, !"fimc_is_subdev_video_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 430, i32 43}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 259, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fimc_isp_subdev_s_stream._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @fimc_isp_subdev_s_stream._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 273, i32 3}
!57 = !{ptr @fimc_isp_subdev_s_stream._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @fimc_isp_subdev_s_stream._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 284, i32 4}
!61 = !{ptr @fimc_isp_subdev_s_stream._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @fimc_isp_subdev_s_stream._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 293, i32 4}
!65 = !{ptr @fimc_isp_subdev_s_stream._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fimc_isp_subdev_s_stream._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @fimc_is_subdev_pad_ops, !68, !"fimc_is_subdev_pad_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 424, i32 41}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 152, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @fimc_isp_subdev_get_fmt._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @fimc_isp_subdev_get_fmt._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 203, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fimc_isp_subdev_set_fmt._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @fimc_isp_subdev_set_fmt._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @iso_qmenu, !82, !"iso_qmenu", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 503, i32 18}
!83 = !{ptr @fimc_is_subdev_internal_ops, !84, !"fimc_is_subdev_internal_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 418, i32 46}
!85 = !{ptr @fimc_is_subdev_media_ops, !86, !"fimc_is_subdev_media_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/exynos4-is/fimc-isp.c", i32 104, i32 45}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 7322615}
!97 = !{i64 2156734720}
!98 = !{i64 2156761083}
!99 = !{i64 2156761237}
!100 = !{i64 2148295963, i64 2148295968, i64 2148295981, i64 2148296025, i64 2148296059, i64 2148296080}
!101 = !{i64 2148481989}
!102 = !{i64 968589, i64 968614, i64 968636, i64 968652, i64 968664, i64 968684, i64 968708, i64 968724, i64 968736}
!103 = !{i64 2148482177}
!104 = !{i64 2156760796}
!105 = !{i64 2156733063}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{!"branch_weights", i32 1, i32 2000}
