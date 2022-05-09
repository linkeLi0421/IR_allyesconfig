; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-is.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-is.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.is_region = type { %struct.is_param_region, %struct.is_tune_region, [8 x %struct.is_frame_header], [16 x %struct.is_face_marker], [500 x i32] }
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
%struct.is_tune_region = type { %struct.is_tune_sensor, %struct.is_tune_isp }
%struct.is_tune_sensor = type { i32, i32, i32, i32 }
%struct.is_tune_isp = type { i32, i32, i32, i32, [4 x %struct.is_tune_gammacurve], i32, i32, i32, i32, i32 }
%struct.is_tune_gammacurve = type { [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.is_frame_header = type { i32, i32, i32, i32, %struct.exif_attribute }
%struct.exif_attribute = type { %struct.rational, %struct.srational, i32, i32, %struct.srational }
%struct.rational = type { i32, i32 }
%struct.srational = type { i32, i32 }
%struct.is_face_marker = type { i32, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, i32, i32, i32, i32, i32 }
%struct.is_fd_rect = type { i32, i32, i32, i32 }
%struct.sensor_drv_data = type { i32, i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.98 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.99 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.100 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.is_share_region = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [600 x %struct.is_debug_frame_descriptor], i32, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.is_debug_frame_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/exynos4-is/fimc-is.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s: %s() timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.fimc_is_wait_event = private unnamed_addr constant [19 x i8] c"fimc_is_wait_event\00", align 1
@fimc_is_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware is not loaded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fimc_is_start_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fimc_is_start_firmware._entry_ptr = internal global ptr @fimc_is_start_firmware._entry, section ".printk_index", align 4
@fimc_is_start_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FIMC-IS CPU power on failed\0A\00", [35 x i8] zeroinitializer }, align 32
@fimc_is_start_firmware._entry_ptr.8 = internal global ptr @fimc_is_start_firmware._entry.6, section ".printk_index", align 4
@fimc_is_hw_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get setfile address timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fimc_is_hw_initialize\00", [42 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr = internal global ptr @fimc_is_hw_initialize._entry, section ".printk_index", align 4
@fimc_is_hw_initialize.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str, ptr @.str.12, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos_fimc_is\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setfile.base: %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d setfile.base: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos4_s5k6a3_setfile.bin\00", [37 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loading setfile timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr.17 = internal global ptr @fimc_is_hw_initialize._entry.15, section ".printk_index", align 4
@fimc_is_hw_initialize.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str, ptr @.str.18, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setfile: base: %#x, size: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d setfile: base: %#x, size: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:%d FIMC-IS Setfile info: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr.22 = internal global ptr @fimc_is_hw_initialize._entry.20, section ".printk_index", align 4
@fimc_is_hw_initialize._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"magic number error!\0A\00", [43 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr.25 = internal global ptr @fimc_is_hw_initialize._entry.23, section ".printk_index", align 4
@fimc_is_hw_initialize.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str, ptr @.str.26, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"shared region: %pad, parameter region: %pad\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d shared region: %pad, parameter region: %pad\0A\00", [45 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stream off timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr.30 = internal global ptr @fimc_is_hw_initialize._entry.28, section ".printk_index", align 4
@fimc_is_hw_initialize._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str, i32 732, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initialization sequence completed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fimc_is_hw_initialize._entry_ptr.34 = internal global ptr @fimc_is_hw_initialize._entry.31, section ".printk_index", align 4
@__initcall__kmod_exynos_fimc_is__315_980_fimc_is_module_init6 = internal global ptr @fimc_is_module_init, section ".initcall6.init", align 4
@__exitcall_fimc_is_module_exit = internal global ptr @fimc_is_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias316 = internal constant [46 x i8] c"exynos_fimc_is.alias=platform:exynos4-fimc-is\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [60 x i8] c"exynos_fimc_is.author=Younghwan Joo <yhwan.joo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [66 x i8] c"exynos_fimc_is.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [69 x i8] c"exynos_fimc_is.file=drivers/media/platform/exynos4-is/exynos-fimc-is\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [30 x i8] c"exynos_fimc_is.license=GPL v2\00", section ".modinfo", align 1
@fimc_is_load_setfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_is_load_setfile\00", [43 x i8] zeroinitializer }, align 32
@fimc_is_load_setfile._entry_ptr = internal global ptr @fimc_is_load_setfile._entry, section ".printk_index", align 4
@fimc_is_load_setfile.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.36, ptr @.str, ptr @.str.37, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mem vaddr: %p, setfile buf: %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d mem vaddr: %p, setfile buf: %p\0A\00", [58 x i8] zeroinitializer }, align 32
@fimc_is_load_setfile.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.36, ptr @.str, ptr @.str.39, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FIMC-IS setfile loaded: base: %#x, size: %zu B\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d FIMC-IS setfile loaded: base: %#x, size: %zu B\0A\00", [42 x i8] zeroinitializer }, align 32
@fimc_is_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fimc_is_probe, ptr @fimc_is_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.41, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_is_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_is_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos4-fimc-is\00", [16 x i8] zeroinitializer }, align 32
@fimc_is_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc-is\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fimc_is_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_is_runtime_suspend, ptr @fimc_is_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fimc_is_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&is->irq_queue\00", [17 x i8] zeroinitializer }, align 32
@fimc_is_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&is->slock\00", [21 x i8] zeroinitializer }, align 32
@fimc_is_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&is->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@fimc_is_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no irq found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fimc_is_probe\00", [18 x i8] zeroinitializer }, align 32
@fimc_is_probe._entry_ptr = internal global ptr @fimc_is_probe._entry, section ".printk_index", align 4
@fimc_is_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@fimc_is_probe._entry_ptr.52 = internal global ptr @fimc_is_probe._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos4_fimc_is_fw.bin\00", [41 x i8] zeroinitializer }, align 32
@fimc_is_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.49, ptr @.str, ptr @.str.54, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FIMC-IS registered successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@fimc_is_clocks = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [44 x i8] zeroinitializer }, align 32
@fimc_is_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fimc_is_get_clocks\00", [45 x i8] zeroinitializer }, align 32
@fimc_is_get_clocks._entry_ptr = internal global ptr @fimc_is_get_clocks._entry, section ".printk_index", align 4
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ppmuispx\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ppmuispmx\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lite0\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lite1\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drc\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcuisp\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gicisp\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_isp\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcuctl_isp\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ispdiv0\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ispdiv1\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcuispdiv0\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcuispdiv1\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk200\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"div_aclk200\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk400mcuisp\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"div_aclk400mcuisp\00", [46 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.79, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fimc_is_general_irq_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ISP FW version: %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ISP FW version: %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:%d unknown command: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry_ptr = internal global ptr @fimc_is_general_irq_handler._entry, section ".printk_index", align 4
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.82, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AA_DONE - %d, %d, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d AA_DONE - %d, %d, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.84, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ISR_DONE: args[0]: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d ISR_DONE: args[0]: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.86, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CAC margin (x,y): (%d,%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d CAC margin (x,y): (%d,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.88, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIC_SET_PARAMETER\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d HIC_SET_PARAMETER\0A\00", [39 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.90, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data lanes: %d, settle line: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d data lanes: %d, settle line: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.78, ptr @.str, ptr @.str.92, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"config MSG level completed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d config MSG level completed\0A\00", [62 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.78, ptr @.str, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:%d ISR_NDONE: %d: %#x, %s\0A\00", [32 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry_ptr.96 = internal global ptr @fimc_is_general_irq_handler._entry.94, section ".printk_index", align 4
@fimc_is_general_irq_handler._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.78, ptr @.str, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:%d IS_ERROR_TIME_OUT\0A\00", [37 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry_ptr.99 = internal global ptr @fimc_is_general_irq_handler._entry.97, section ".printk_index", align 4
@fimc_is_general_irq_handler._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.78, ptr @.str, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d IS control sequence error: Not Ready\0A\00", [50 x i8] zeroinitializer }, align 32
@fimc_is_general_irq_handler._entry_ptr.102 = internal global ptr @fimc_is_general_irq_handler._entry.100, section ".printk_index", align 4
@fimc_is_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock %s enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fimc_is_enable_clocks\00", [42 x i8] zeroinitializer }, align 32
@fimc_is_enable_clocks._entry_ptr = internal global ptr @fimc_is_enable_clocks._entry, section ".printk_index", align 4
@fimc_is_enable_clocks.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.104, ptr @.str, ptr @.str.105, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enabled clock: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d enabled clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos4212-i2c-isp\00", [37 x i8] zeroinitializer }, align 32
@fimc_is_parse_sensor_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no driver data found for: %pOF\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fimc_is_parse_sensor_config\00", [36 x i8] zeroinitializer }, align 32
@fimc_is_parse_sensor_config._entry_ptr = internal global ptr @fimc_is_parse_sensor_config._entry, section ".printk_index", align 4
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@fimc_is_parse_sensor_config._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.109, ptr @.str, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg property not found at: %pOF\0A\00", [63 x i8] zeroinitializer }, align 32
@fimc_is_parse_sensor_config._entry_ptr.113 = internal global ptr @fimc_is_parse_sensor_config._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fimc_is\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_log\00", [25 x i8] zeroinitializer }, align 32
@fimc_is_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fimc_is_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fimc_is_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware memory is not initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fimc_is_show\00", [19 x i8] zeroinitializer }, align 32
@fimc_is_show._entry_ptr = internal global ptr @fimc_is_show._entry, section ".printk_index", align 4
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@fimc_is_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fimc_is_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@fimc_is_load_firmware._entry_ptr = internal global ptr @fimc_is_load_firmware._entry, section ".printk_index", align 4
@fimc_is_load_firmware._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong firmware size: %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@fimc_is_load_firmware._entry_ptr.123 = internal global ptr @fimc_is_load_firmware._entry.121, section ".printk_index", align 4
@fimc_is_load_firmware._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate FIMC-IS CPU memory\0A\00", [57 x i8] zeroinitializer }, align 32
@fimc_is_load_firmware._entry_ptr.126 = internal global ptr @fimc_is_load_firmware._entry.124, section ".printk_index", align 4
@fimc_is_load_firmware._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.120, ptr @.str, i32 417, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"loaded firmware: %s, rev. %s\0A\00", [34 x i8] zeroinitializer }, align 32
@fimc_is_load_firmware._entry_ptr.129 = internal global ptr @fimc_is_load_firmware._entry.127, section ".printk_index", align 4
@fimc_is_load_firmware.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.120, ptr @.str, ptr @.str.130, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FW size: %zu, DMA addr: %pad\0A\00", [34 x i8] zeroinitializer }, align 32
@fimc_is_alloc_cpu_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str, i32 344, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FIMC-IS CPU memory base: %pad\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_is_alloc_cpu_memory\00", [39 x i8] zeroinitializer }, align 32
@fimc_is_alloc_cpu_memory._entry_ptr = internal global ptr @fimc_is_alloc_cpu_memory._entry, section ".printk_index", align 4
@fimc_is_alloc_cpu_memory._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid firmware memory alignment: %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@fimc_is_alloc_cpu_memory._entry_ptr.135 = internal global ptr @fimc_is_alloc_cpu_memory._entry.133, section ".printk_index", align 4
@fimc_is_disable_clocks.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.136, ptr @.str, ptr @.str.137, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fimc_is_disable_clocks\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disabled clock: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d disabled clock: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 4096, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 8192, i64 8193]
@__sancov_gen_cov_switch_values.139 = internal global [8 x i64] [i64 6, i64 32, i64 4096, i64 4098, i64 4100, i64 4101, i64 8192, i64 8193]
@__sancov_gen_cov_switch_values.140 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 12, i64 13, i64 17, i64 18, i64 19, i64 21]
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 297, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 301, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 313, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 327, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 673, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 676, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 679, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 685, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 689, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 691, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 696, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 700, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 711, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 731, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 238, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 246, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 255, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [15 x i8] c"fimc_is_driver\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 948, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 953, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"fimc_is_of_match\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 936, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant [15 x i8] c"fimc_is_pm_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 942, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 784, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 785, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 786, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 796, i32 44 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 807, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 820, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 851, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 857, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [15 x i8] c"fimc_is_clocks\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 41, i32 14 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 95, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 42, i32 24 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 43, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 44, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 45, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 46, i32 21 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 47, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 48, i32 20 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 49, i32 19 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 50, i32 22 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 51, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 52, i32 23 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 53, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 54, i32 21 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 55, i32 24 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 56, i32 24 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 57, i32 27 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 58, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 59, i32 23 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 60, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 61, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 62, i32 32 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 453, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 470, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 494, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 499, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 507, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 525, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 539, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 549, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 568, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 573, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 590, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 140, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 146, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 210, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 173, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 188, i32 35 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 190, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 760, i32 41 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 762, i32 22 }
@___asan_gen_.495 = private unnamed_addr constant [13 x i8] c"fimc_is_fops\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 750, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 742, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 746, i32 16 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 384, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 390, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 398, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 416, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 418, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 344, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 347, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.562 = private constant [47 x i8] c"../drivers/media/platform/exynos4-is/fimc-is.c\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 158, i32 4 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_fimc_is_module_exit, ptr @__initcall__kmod_exynos_fimc_is__315_980_fimc_is_module_init6, ptr @fimc_is_alloc_cpu_memory._entry, ptr @fimc_is_alloc_cpu_memory._entry.133, ptr @fimc_is_alloc_cpu_memory._entry_ptr, ptr @fimc_is_alloc_cpu_memory._entry_ptr.135, ptr @fimc_is_enable_clocks._entry, ptr @fimc_is_enable_clocks._entry_ptr, ptr @fimc_is_general_irq_handler._entry, ptr @fimc_is_general_irq_handler._entry.100, ptr @fimc_is_general_irq_handler._entry.94, ptr @fimc_is_general_irq_handler._entry.97, ptr @fimc_is_general_irq_handler._entry_ptr, ptr @fimc_is_general_irq_handler._entry_ptr.102, ptr @fimc_is_general_irq_handler._entry_ptr.96, ptr @fimc_is_general_irq_handler._entry_ptr.99, ptr @fimc_is_get_clocks._entry, ptr @fimc_is_get_clocks._entry_ptr, ptr @fimc_is_hw_initialize._entry, ptr @fimc_is_hw_initialize._entry.15, ptr @fimc_is_hw_initialize._entry.20, ptr @fimc_is_hw_initialize._entry.23, ptr @fimc_is_hw_initialize._entry.28, ptr @fimc_is_hw_initialize._entry.31, ptr @fimc_is_hw_initialize._entry_ptr, ptr @fimc_is_hw_initialize._entry_ptr.17, ptr @fimc_is_hw_initialize._entry_ptr.22, ptr @fimc_is_hw_initialize._entry_ptr.25, ptr @fimc_is_hw_initialize._entry_ptr.30, ptr @fimc_is_hw_initialize._entry_ptr.34, ptr @fimc_is_load_firmware._entry, ptr @fimc_is_load_firmware._entry.121, ptr @fimc_is_load_firmware._entry.124, ptr @fimc_is_load_firmware._entry.127, ptr @fimc_is_load_firmware._entry_ptr, ptr @fimc_is_load_firmware._entry_ptr.123, ptr @fimc_is_load_firmware._entry_ptr.126, ptr @fimc_is_load_firmware._entry_ptr.129, ptr @fimc_is_load_setfile._entry, ptr @fimc_is_load_setfile._entry_ptr, ptr @fimc_is_parse_sensor_config._entry, ptr @fimc_is_parse_sensor_config._entry.111, ptr @fimc_is_parse_sensor_config._entry_ptr, ptr @fimc_is_parse_sensor_config._entry_ptr.113, ptr @fimc_is_probe._entry, ptr @fimc_is_probe._entry.50, ptr @fimc_is_probe._entry_ptr, ptr @fimc_is_probe._entry_ptr.52, ptr @fimc_is_show._entry, ptr @fimc_is_show._entry_ptr, ptr @fimc_is_start_firmware._entry, ptr @fimc_is_start_firmware._entry.6, ptr @fimc_is_start_firmware._entry_ptr, ptr @fimc_is_start_firmware._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @fimc_is_driver, ptr @.str.41, ptr @fimc_is_of_match, ptr @fimc_is_pm_ops, ptr @fimc_is_probe.__key, ptr @.str.42, ptr @fimc_is_probe.__key.43, ptr @.str.44, ptr @fimc_is_probe.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @fimc_is_clocks, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @fimc_is_fops, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_start_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_hw_initialize._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_load_setfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_clocks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_general_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_general_irq_handler._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_general_irq_handler._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_general_irq_handler._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_parse_sensor_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_parse_sensor_config._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_load_firmware._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_load_firmware._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_load_firmware._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_alloc_cpu_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_is_alloc_cpu_memory._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_is_cpu_set_power(ptr nocapture noundef readonly %is, i32 noundef %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1507328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !290
  %memory = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 4
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %6, i32 1572868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %4) #9, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  tail call void @arm_heavy_mb() #9
  %pmu_regs.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 13
  %7 = ptrtoint ptr %pmu_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmu_regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 8388864) #9, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %pmu_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu_regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 16777216) #9, !srcloc !290
  br label %cleanup

if.else:                                          ; preds = %entry
  %pmu_regs.i17 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 13
  %11 = ptrtoint ptr %pmu_regs.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmu_regs.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 256) #9, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %pmu_regs.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmu_regs.i17, align 4
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #9, !srcloc !290
  %15 = ptrtoint ptr %pmu_regs.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmu_regs.i17, align 4
  %add.ptr.i2223 = getelementptr i8, ptr %16, i32 8836
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2223) #9, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not24 = icmp eq i32 %18, 0
  br i1 %tobool1.not24, label %if.else.cleanup_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.else.while.body_crit_edge
  %timeout.025 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 1000, %if.else.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.025)
  %cmp = icmp eq i32 %timeout.025, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %timeout.025, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %20 = ptrtoint ptr %pmu_regs.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmu_regs.i17, align 4
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 8836
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #9, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %23 = and i32 %22, 16777216
  %tobool1.not = icmp eq i32 %23, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.else.cleanup_crit_edge ], [ -62, %while.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef %bit, i32 noundef %state, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 299) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %state4 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  %div3.i = lshr i32 %bit, 5
  %arrayidx.i = getelementptr i32, ptr %state4, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %bit, 31
  %shr.i = lshr i32 %1, %and.i
  %and1.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %lnot.ext)
  %tobool5.not = icmp eq i32 %and1.i, %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool7.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool7.not, i32 1, i32 %timeout
  %__ret.0 = select i1 %tobool5.not, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool9.not = icmp ne i32 %__ret.0, 0
  %2 = and i1 %tobool5.not, %tobool9.not
  br i1 %2, label %if.then13, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %irq_queue = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 15
  %call15103 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i97104 = lshr i32 %5, %and.i
  %and1.i98105 = and i32 %shr.i97104, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i98105, i32 %lnot.ext)
  %tobool23.not106 = icmp eq i32 %and1.i98105, %lnot.ext
  %__ret14.1109 = select i1 %tobool23.not106, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1109)
  %tobool33.not110 = icmp ne i32 %__ret14.1109, 0
  %6 = and i1 %tobool23.not106, %tobool33.not110
  br i1 %6, label %if.then13.cleanup_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.1112 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ %__ret14.1109, %if.then13.cleanup_crit_edge ]
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret14.1112) #9
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i97 = lshr i32 %8, %and.i
  %and1.i98 = and i32 %shr.i97, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i98, i32 %lnot.ext)
  %tobool23.not = icmp eq i32 %and1.i98, %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool27.not = icmp eq i32 %call41, 0
  %spec.store.select77 = select i1 %tobool27.not, i32 1, i32 %call41
  %__ret14.1 = select i1 %tobool23.not, i32 %call41, i32 %spec.store.select77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool33.not = icmp eq i32 %__ret14.1, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %9 = select i1 %not.tobool23.not, i1 true, i1 %tobool33.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  %__ret14.1.lcssa = phi i32 [ %__ret14.1109, %if.then13.for.end_crit_edge ], [ %__ret14.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end44

if.end44:                                         ; preds = %for.end, %entry.if.end44_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end44_crit_edge ], [ %__ret14.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp eq i32 %__ret.1, 0
  br i1 %cmp, label %do.end57, label %if.end44.cleanup76_crit_edge

if.end44.cleanup76_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup76

do.end57:                                         ; preds = %if.end44
  %10 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call58 = call ptr @dev_driver_string(ptr noundef %dev) #9
  %12 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end57.dev_name.exit_crit_edge

do.end57.dev_name.exit_crit_edge:                 ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev60, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end57.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %do.end57.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call58, ptr noundef %retval.0.i, ptr noundef nonnull @__func__.fimc_is_wait_event) #9
  br label %cleanup76

cleanup76:                                        ; preds = %dev_name.exit, %if.end44.cleanup76_crit_edge
  %retval.0 = phi i32 [ -62, %dev_name.exit ], [ 0, %if.end44.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_is_start_firmware(ptr noundef %is) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %fw = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 3
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end11

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %entry
  %vaddr = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = call ptr @memcpy(ptr %5, ptr %7, i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 12
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1507328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !290
  %memory.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 4
  %13 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %memory.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %17, i32 1572868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %15) #9, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  tail call void @arm_heavy_mb() #9
  %pmu_regs.i.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 13
  %18 = ptrtoint ptr %pmu_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmu_regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %19, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 8388864) #9, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %pmu_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmu_regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %21, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 16777216) #9, !srcloc !290
  %call13 = tail call i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef 2, i32 noundef 1, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup.sink.split_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.2, %entry.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end11.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call13, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.7.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_is_hw_initialize(ptr noundef %is) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %sensor = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6
  %is_p_region.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 24
  %2 = ptrtoint ptr %is_p_region.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_p_region.i, align 4
  %shared.i = getelementptr inbounds %struct.is_region, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef %is) #9
  %self_calibration_mode.i = getelementptr inbounds %struct.is_region, ptr %3, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %self_calibration_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %self_calibration_mode.i, align 4
  %i2c_sclk.i = getelementptr inbounds %struct.is_region, ptr %3, i32 0, i32 4, i32 6
  %5 = call ptr @memset(ptr %shared.i, i32 0, i32 20)
  %6 = ptrtoint ptr %i2c_sclk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 88000000, ptr %i2c_sclk.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 12
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1572992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 201326592) #9, !srcloc !290
  %sensor_index.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 18
  %10 = ptrtoint ptr %sensor_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sensor_index.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %14, i32 1572996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %12) #9, !srcloc !290
  %15 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sensor, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %21, i32 1573000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %19) #9, !srcloc !290
  %i2c_bus.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2c_bus.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %26, i32 1573004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %24) #9, !srcloc !290
  %is_dma_p_region.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 25
  %27 = ptrtoint ptr %is_dma_p_region.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_dma_p_region.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %31, i32 1573008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %29) #9, !srcloc !290
  tail call void @fimc_is_hw_set_intgr0_gd0(ptr noundef %is) #9
  %32 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensor, align 4
  %open_timeout.i = getelementptr inbounds %struct.sensor_drv_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %open_timeout.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %open_timeout.i, align 4
  %conv.i = zext i16 %35 to i32
  %call2.i = tail call i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef 4, i32 noundef 1, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @fimc_is_hw_get_setfile_addr(ptr noundef %is) #9
  %call2 = tail call i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef 5, i32 noundef 1, i32 noundef 3000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_hw_initialize, %if.then10)) #9
          to label %do.end13 [label %if.then10], !srcloc !297

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_hw_initialize.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, i32 noundef 676, i32 noundef %37) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body6
  tail call fastcc void @fimc_is_load_setfile(ptr noundef %is)
  %state = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #9
  tail call void @fimc_is_hw_load_setfile(ptr noundef %is) #9
  %call15 = tail call i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef 5, i32 noundef 1, i32 noundef 3000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %do.body22

do.end20:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %cleanup

do.body22:                                        ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_hw_initialize, %if.then34)) #9
          to label %do.end43 [label %if.then34], !srcloc !297

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %base36 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base36, align 8
  %size = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_hw_initialize.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef 690, i32 noundef %39, i32 noundef %41) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then34, %do.body22
  %setfile_info = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 3, i32 6
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10, i32 noundef 691, ptr noundef %setfile_info) #12
  %42 = ptrtoint ptr %is_p_region.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %is_p_region.i, align 4
  %arrayidx46 = getelementptr %struct.is_region, ptr %43, i32 0, i32 4, i32 499
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16909060, i32 %45)
  %cmp47.not = icmp eq i32 %45, 16909060
  br i1 %cmp47.not, label %do.body53, label %do.end51

do.end51:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #12
  br label %cleanup

do.body53:                                        ; preds = %do.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_hw_initialize, %if.then65)) #9
          to label %do.end68 [label %if.then65], !srcloc !297

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.fimc_is, ptr %is, i32 3418, i32 22, i32 0, i32 2, i32 9, i32 7, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_hw_initialize.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.10, i32 noundef 702, ptr noundef %add.ptr, ptr noundef %is_dma_p_region.i) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body53
  %sub_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %sub_index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sub_index, align 4
  tail call void @fimc_is_hw_stream_off(ptr noundef %is) #9
  %call70 = tail call i32 @fimc_is_wait_event(ptr noundef %is, i32 noundef 8, i32 noundef 1, i32 noundef 3000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end76

do.end75:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end76:                                         ; preds = %do.end68
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %47 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %config_index, align 8
  store i32 0, ptr %config_index, align 8
  tail call void @fimc_is_set_initial_params(ptr noundef %is) #9
  %call80 = tail call i32 @fimc_is_itf_s_param(ptr noundef %is, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end76.if.then82_crit_edge, label %for.cond

if.end76.if.then82_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.cond:                                         ; preds = %if.end76
  %49 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %config_index, align 8
  tail call void @fimc_is_set_initial_params(ptr noundef %is) #9
  %call80.1 = tail call i32 @fimc_is_itf_s_param(ptr noundef %is, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.1)
  %cmp81.1 = icmp slt i32 %call80.1, 0
  br i1 %cmp81.1, label %for.cond.if.then82_crit_edge, label %for.cond.1

for.cond.if.then82_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.cond.1:                                       ; preds = %for.cond
  %50 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %config_index, align 8
  tail call void @fimc_is_set_initial_params(ptr noundef %is) #9
  %call80.2 = tail call i32 @fimc_is_itf_s_param(ptr noundef %is, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.2)
  %cmp81.2 = icmp slt i32 %call80.2, 0
  br i1 %cmp81.2, label %for.cond.1.if.then82_crit_edge, label %for.cond.2

for.cond.1.if.then82_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.cond.2:                                       ; preds = %for.cond.1
  %51 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %config_index, align 8
  tail call void @fimc_is_set_initial_params(ptr noundef %is) #9
  %call80.3 = tail call i32 @fimc_is_itf_s_param(ptr noundef %is, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.3)
  %cmp81.3 = icmp slt i32 %call80.3, 0
  br i1 %cmp81.3, label %for.cond.2.if.then82_crit_edge, label %for.cond.3

for.cond.2.if.then82_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %48, ptr %config_index, align 8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state) #9
  %53 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %config_index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %54) #12
  br label %cleanup

if.then82:                                        ; preds = %for.cond.2.if.then82_crit_edge, %for.cond.1.if.then82_crit_edge, %for.cond.if.then82_crit_edge, %if.end76.if.then82_crit_edge
  %call80.lcssa = phi i32 [ %call80, %if.end76.if.then82_crit_edge ], [ %call80.1, %for.cond.if.then82_crit_edge ], [ %call80.2, %for.cond.1.if.then82_crit_edge ], [ %call80.3, %for.cond.2.if.then82_crit_edge ]
  %55 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %48, ptr %config_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %for.cond.3, %do.end75, %do.end51, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call15, %do.end20 ], [ -5, %do.end51 ], [ %call70, %do.end75 ], [ %call80.lcssa, %if.then82 ], [ 0, %for.cond.3 ], [ %call2.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_get_setfile_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_is_load_setfile(ptr nocapture noundef %is) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !298
  %1 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %is, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.14, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.35, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vaddr = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr, align 4
  %base = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %12, i32 %14)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %size5 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_load_setfile.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_load_setfile, %if.then10)) #9
          to label %do.end15 [label %if.then10], !srcloc !297

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_load_setfile.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 246, ptr noundef %22, ptr noundef %add.ptr) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %if.end
  %setfile_info = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  %data17 = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data17, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %add.ptr19 = getelementptr i8, ptr %26, i32 %28
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 -39
  %29 = call ptr @memcpy(ptr %setfile_info, ptr %add.ptr20, i32 38)
  %arrayidx = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 3, i32 6, i32 38
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx, align 2
  %state = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_load_setfile.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_load_setfile, %if.then36)) #9
          to label %do.end42 [label %if.then36], !srcloc !297

if.then36:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base, align 8
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_load_setfile.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36, i32 noundef 256, i32 noundef %33, i32 noundef %37) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.end15
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_load_setfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_set_initial_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_module_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fimc_is_register_i2c_driver() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_is_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fimc_is_unregister_i2c_driver() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_is_module_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fimc_is_unregister_i2c_driver() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_is_driver) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_intgr0_gd0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_register_i2c_driver() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_unregister_i2c_driver() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 10736, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 8
  %isp = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %isp, align 8
  %irq_queue = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.42, ptr noundef nonnull @fimc_is_probe.__key) #9
  %slock = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.44, ptr noundef nonnull @fimc_is_probe.__key.43, i16 noundef signext 3) #9
  %lock = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @fimc_is_probe.__key.45) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call12 = call i32 @of_address_to_resource(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #9
  %regs = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call23 = call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.47) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call27 = call ptr @of_iomap(ptr noundef nonnull %call23, i32 noundef 0) #9
  %pmu_regs = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %pmu_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %pmu_regs, align 4
  call void @of_node_put(ptr noundef nonnull %call23) #9
  %10 = ptrtoint ptr %pmu_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmu_regs, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call33 = call i32 @irq_of_parse_and_map(ptr noundef %13, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call33, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool35.not = icmp eq i32 %call33, 0
  br i1 %tobool35.not, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48) #12
  br label %err_iounmap

if.end40:                                         ; preds = %if.end31
  %arrayidx.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 4
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 7
  %22 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 8
  %23 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 9
  %24 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 10
  %25 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 11
  %26 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 12
  %27 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 13
  %28 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 14
  %29 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 15
  %30 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.15.i, align 4
  %arrayidx.16.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 16
  %31 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.16.i, align 4
  %arrayidx.17.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 17
  %32 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.17.i, align 4
  %arrayidx.18.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 18
  %33 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.18.i, align 4
  %arrayidx.19.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 19
  %34 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.19.i, align 4
  %arrayidx.20.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 20
  %35 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.20.i, align 4
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc15.i = add nuw nsw i32 %i.137.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 21
  br i1 %exitcond.not.i, label %for.cond1.i.if.end44_crit_edge, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.cond1.i.if.end44_crit_edge:                   ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %if.end40
  %i.137.i = phi i32 [ %inc15.i, %for.cond1.i.for.body3.i_crit_edge ], [ 0, %if.end40 ]
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %arrayidx4.i = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %i.137.i
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx4.i, align 4
  %call5.i = call ptr @clk_get(ptr noundef %dev.i, ptr noundef %39) #9
  %arrayidx7.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 %i.137.i
  %40 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i, ptr %arrayidx7.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body3.i.for.body.i.i_crit_edge, label %for.cond1.i

for.body3.i.for.body.i.i_crit_edge:               ; preds = %for.body3.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body3.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body3.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 %i.012.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_put(ptr noundef %42) #9
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 21
  br i1 %exitcond.not.i.i, label %fimc_is_get_clocks.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

fimc_is_get_clocks.exit:                          ; preds = %for.inc.i.i
  %44 = ptrtoint ptr %call5.i to i32
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 8
  %dev18.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.55, ptr noundef %39) #12
  %cmp42 = icmp slt ptr %call5.i, null
  br i1 %cmp42, label %fimc_is_get_clocks.exit.err_iounmap_crit_edge, label %fimc_is_get_clocks.exit.if.end44_crit_edge

fimc_is_get_clocks.exit.if.end44_crit_edge:       ; preds = %fimc_is_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

fimc_is_get_clocks.exit.err_iounmap_crit_edge:    ; preds = %fimc_is_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_iounmap

if.end44:                                         ; preds = %fimc_is_get_clocks.exit.if.end44_crit_edge, %for.cond1.i.if.end44_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.dev_name.exit_crit_edge

if.end44.dev_name.exit_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end44.dev_name.exit_crit_edge
  %retval.0.i158 = phi ptr [ %53, %if.end.i ], [ %51, %if.end44.dev_name.exit_crit_edge ]
  %call.i159 = call i32 @request_threaded_irq(i32 noundef %49, ptr noundef nonnull @fimc_is_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i158, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp48 = icmp slt i32 %call.i159, 0
  br i1 %cmp48, label %do.end52, label %if.end53

do.end52:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51) #12
  br label %err_clk

if.end53:                                         ; preds = %dev_name.exit
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %54 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i160 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i160, label %if.end53.if.end60_crit_edge, label %if.then55

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then55:                                        ; preds = %if.end53
  %call56 = call i32 @fimc_is_runtime_resume(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then55.err_irq_crit_edge, label %if.then55.if.end60_crit_edge

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then55.err_irq_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end53.if.end60_crit_edge
  %call.i161 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp.i162 = icmp slt i32 %call.i161, 0
  br i1 %cmp.i162, label %if.then.i163, label %if.end64

if.then.i163:                                     ; preds = %if.end60
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !299
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !300
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i163.err_irq_crit_edge, label %do.end11.i.i.i.i.i

if.then.i163.err_irq_crit_edge:                   ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq

do.end11.i.i.i.i.i:                               ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !301
  br label %err_irq

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #9
  %call66 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end64.err_pm_crit_edge, label %if.end69

if.end64.err_pm_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm

if.end69:                                         ; preds = %if.end64
  %call70 = call fastcc i32 @fimc_is_register_subdevs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.err_pm_crit_edge, label %if.end73

if.end69.err_pm_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm

if.end73:                                         ; preds = %if.end69
  call fastcc void @fimc_is_debugfs_create(ptr noundef nonnull %call.i)
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  %dev.i165 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %call.i166 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.53, ptr noundef %dev.i165, i32 noundef 3264, ptr noundef %call.i, ptr noundef nonnull @fimc_is_load_firmware) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp75 = icmp slt i32 %call.i166, 0
  br i1 %cmp75, label %err_dfs, label %if.end77

if.end77:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %call.i167 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_probe, %if.then84)) #9
          to label %cleanup [label %if.then84], !srcloc !297

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fimc_is_probe.__UNIQUE_ID_ddebug314, ptr noundef %dev1, ptr noundef nonnull @.str.54) #9
  br label %cleanup

err_dfs:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %debugfs_entry.i = getelementptr inbounds %struct.fimc_is, ptr %call.i, i32 0, i32 28
  %58 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debugfs_entry.i, align 8
  call void @debugfs_remove(ptr noundef %59) #9
  %60 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %debugfs_entry.i, align 8
  call void @fimc_isp_subdev_destroy(ptr noundef %isp) #9
  br label %err_pm

err_pm:                                           ; preds = %err_dfs, %if.end69.err_pm_crit_edge, %if.end64.err_pm_crit_edge
  %ret.0 = phi i32 [ %call66, %if.end64.err_pm_crit_edge ], [ %call70, %if.end69.err_pm_crit_edge ], [ %call.i166, %err_dfs ]
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  %61 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i169 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i169)
  %tobool.not.i170 = icmp ult i16 %bf.load.i169, 8192
  br i1 %tobool.not.i170, label %err_pm.err_irq_crit_edge, label %if.then90

err_pm.err_irq_crit_edge:                         ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq

if.then90:                                        ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = call i32 @fimc_is_runtime_suspend(ptr noundef %dev1)
  br label %err_irq

err_irq:                                          ; preds = %if.then90, %err_pm.err_irq_crit_edge, %do.end11.i.i.i.i.i, %if.then.i163.err_irq_crit_edge, %if.then55.err_irq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm.err_irq_crit_edge ], [ %ret.0, %if.then90 ], [ %call56, %if.then55.err_irq_crit_edge ], [ %call.i161, %if.then.i163.err_irq_crit_edge ], [ %call.i161, %do.end11.i.i.i.i.i ]
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 8
  %call94 = call ptr @free_irq(i32 noundef %63, ptr noundef nonnull %call.i) #9
  br label %err_clk

err_clk:                                          ; preds = %err_irq, %do.end52
  %ret.2 = phi i32 [ %call.i159, %do.end52 ], [ %ret.1, %err_irq ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_clk
  %i.012.i = phi i32 [ 0, %err_clk ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i171 = getelementptr %struct.fimc_is, ptr %call.i, i32 0, i32 11, i32 %i.012.i
  %64 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i171, align 4
  %cmp.i.i172 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i172, label %for.body.i.for.inc.i_crit_edge, label %if.end.i173

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i173:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_put(ptr noundef %65) #9
  %66 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i171, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i173, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i174, label %for.inc.i.err_iounmap_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.err_iounmap_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_iounmap

err_iounmap:                                      ; preds = %for.inc.i.err_iounmap_crit_edge, %fimc_is_get_clocks.exit.err_iounmap_crit_edge, %do.end39
  %ret.3 = phi i32 [ %44, %fimc_is_get_clocks.exit.err_iounmap_crit_edge ], [ -22, %do.end39 ], [ %ret.2, %for.inc.i.err_iounmap_crit_edge ]
  %67 = ptrtoint ptr %pmu_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pmu_regs, align 4
  call void @iounmap(ptr noundef %68) #9
  br label %cleanup

cleanup:                                          ; preds = %err_iounmap, %if.then84, %if.end77, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then18 ], [ %ret.3, %err_iounmap ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ 0, %if.then84 ], [ 0, %if.end77 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then
  %i.015.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fimc_is, ptr %5, i32 0, i32 11, i32 %i.015.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_disable_clocks.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_remove, %if.then6.i.i)) #9
          to label %for.inc.i.i [label %if.then6.i.i], !srcloc !297

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7.i.i = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %i.015.i.i
  %8 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_disable_clocks.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136, i32 noundef 158, ptr noundef %9) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  %call5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #9
  %isp.i = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 5
  tail call void @fimc_isp_subdev_destroy(ptr noundef %isp.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.012.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_put(ptr noundef %13) #9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %fimc_is_put_clocks.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

fimc_is_put_clocks.exit:                          ; preds = %for.inc.i
  %pmu_regs = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %pmu_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmu_regs, align 4
  tail call void @iounmap(ptr noundef %16) #9
  %debugfs_entry.i = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_entry.i, align 8
  tail call void @debugfs_remove(ptr noundef %18) #9
  %19 = ptrtoint ptr %debugfs_entry.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %debugfs_entry.i, align 8
  %fw = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %21) #9
  %vaddr.i = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr.i, align 4
  %cmp.i19 = icmp eq ptr %23, null
  br i1 %cmp.i19, label %fimc_is_put_clocks.exit.fimc_is_free_cpu_memory.exit_crit_edge, label %if.end.i20

fimc_is_put_clocks.exit.fimc_is_free_cpu_memory.exit_crit_edge: ; preds = %fimc_is_put_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fimc_is_free_cpu_memory.exit

if.end.i20:                                       ; preds = %fimc_is_put_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  %memory.i = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 8
  %28 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %memory.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %27, ptr noundef nonnull %23, i32 noundef %29, i32 noundef 0) #9
  br label %fimc_is_free_cpu_memory.exit

fimc_is_free_cpu_memory.exit:                     ; preds = %if.end.i20, %fimc_is_put_clocks.exit.fimc_is_free_cpu_memory.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_irq_handler(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.fimc_is, ptr %priv, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %regs.i = getelementptr inbounds %struct.fimc_is, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1572904
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !293
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fimc_is_general_irq_handler(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fimc_isp_irq_handler(ptr noundef %priv) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 17
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 18
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call i32 @clk_set_parent(ptr noundef %3, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %arrayidx4.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 19
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 20
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call i32 @clk_set_parent(ptr noundef %7, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx12.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 13
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 100000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end10.i.cleanup_crit_edge, label %if.end16.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %if.end10.i
  %arrayidx18.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 14
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18.i, align 4
  %call19.i = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 100000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end16.i.cleanup_crit_edge, label %if.end22.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.i:                                       ; preds = %if.end16.i
  %arrayidx24.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 15
  %14 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24.i, align 4
  %call25.i = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef 100000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end22.i.cleanup_crit_edge, label %fimc_is_setup_clocks.exit

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fimc_is_setup_clocks.exit:                        ; preds = %if.end22.i
  %arrayidx30.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 16
  %16 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx30.i, align 4
  %call31.i = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 100000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool.not = icmp eq i32 %call31.i, 0
  br i1 %tobool.not, label %if.end, label %fimc_is_setup_clocks.exit.cleanup_crit_edge

fimc_is_setup_clocks.exit.cleanup_crit_edge:      ; preds = %fimc_is_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %fimc_is_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @fimc_is_enable_clocks(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fimc_is_setup_clocks.exit.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call31.i, %fimc_is_setup_clocks.exit.cleanup_crit_edge ], [ %call25.i, %if.end22.i.cleanup_crit_edge ], [ %call19.i, %if.end16.i.cleanup_crit_edge ], [ %call13.i, %if.end10.i.cleanup_crit_edge ], [ %call7.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_is_register_subdevs(ptr noundef %is) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %isp = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5
  %call = tail call i32 @fimc_isp_subdev_create(ptr noundef %isp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107) #9
  %tobool.not50 = icmp eq ptr %call1, null
  br i1 %tobool.not50, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %if.end.for.body_crit_edge
  %index.053 = phi i32 [ %index.1.lcssa, %for.inc12.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i2c_bus.051 = phi ptr [ %call13, %for.inc12.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %call2 = call ptr @of_get_next_available_child(ptr noundef nonnull %i2c_bus.051, ptr noundef null) #9
  %cmp4.not47 = icmp eq ptr %call2, null
  br i1 %cmp4.not47, label %for.body.for.inc12_crit_edge, label %for.body5.preheader

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

for.body5.preheader:                              ; preds = %for.body
  %smax = call i32 @llvm.smax.i32(i32 %index.053, i32 2)
  br label %for.body5

for.body5:                                        ; preds = %if.end10.for.body5_crit_edge, %for.body5.preheader
  %index.149 = phi i32 [ %inc, %if.end10.for.body5_crit_edge ], [ %index.053, %for.body5.preheader ]
  %child.048 = phi ptr [ %call11, %if.end10.for.body5_crit_edge ], [ %call2, %for.body5.preheader ]
  %arrayidx.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 6, i32 %index.149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp.i, align 4
  %call.i = call ptr @fimc_is_sensor_get_drvdata(ptr noundef nonnull %child.048) #9
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, ptr noundef nonnull %child.048) #12
  br label %fimc_is_parse_sensor_config.exit.thread

if.end.i:                                         ; preds = %for.body5
  %call3.i = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %child.048, ptr noundef null) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.fimc_is_parse_sensor_config.exit.thread_crit_edge, label %if.end6.i

if.end.i.fimc_is_parse_sensor_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fimc_is_parse_sensor_config.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @of_graph_get_remote_port(ptr noundef nonnull %call3.i) #9
  call void @of_node_put(ptr noundef nonnull %call3.i) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.fimc_is_parse_sensor_config.exit.thread_crit_edge, label %if.end10.i

if.end6.i.fimc_is_parse_sensor_config.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fimc_is_parse_sensor_config.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.110, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end15.i, label %fimc_is_parse_sensor_config.exit

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is, align 8
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.112, ptr noundef nonnull %call7.i) #12
  call void @of_node_put(ptr noundef nonnull %call7.i) #9
  br label %fimc_is_parse_sensor_config.exit.thread

fimc_is_parse_sensor_config.exit.thread:          ; preds = %do.end15.i, %if.end6.i.fimc_is_parse_sensor_config.exit.thread_crit_edge, %if.end.i.fimc_is_parse_sensor_config.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ %call.i.i.i, %do.end15.i ], [ -6, %if.end6.i.fimc_is_parse_sensor_config.exit.thread_crit_edge ], [ -6, %if.end.i.fimc_is_parse_sensor_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %if.then9

fimc_is_parse_sensor_config.exit:                 ; preds = %if.end10.i
  call void @of_node_put(ptr noundef nonnull %call7.i) #9
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp.i, align 4
  %sub.i = add i32 %7, -3
  %i2c_bus.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 6, i32 %index.149, i32 1
  %8 = ptrtoint ptr %i2c_bus.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %i2c_bus.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %index.149, i32 %smax)
  %exitcond = icmp eq i32 %index.149, %smax
  br i1 %exitcond, label %fimc_is_parse_sensor_config.exit.if.then9_crit_edge, label %if.end10

fimc_is_parse_sensor_config.exit.if.then9_crit_edge: ; preds = %fimc_is_parse_sensor_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %fimc_is_parse_sensor_config.exit.if.then9_crit_edge, %fimc_is_parse_sensor_config.exit.thread
  %retval.0.i34 = phi i32 [ %retval.0.i.ph, %fimc_is_parse_sensor_config.exit.thread ], [ 0, %fimc_is_parse_sensor_config.exit.if.then9_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.048) #9
  br label %cleanup

if.end10:                                         ; preds = %fimc_is_parse_sensor_config.exit
  %inc = add i32 %index.149, 1
  %call11 = call ptr @of_get_next_available_child(ptr noundef nonnull %i2c_bus.051, ptr noundef nonnull %child.048) #9
  %cmp4.not = icmp eq ptr %call11, null
  br i1 %cmp4.not, label %if.end10.for.inc12_crit_edge, label %if.end10.for.body5_crit_edge

if.end10.for.body5_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

if.end10.for.inc12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

for.inc12:                                        ; preds = %if.end10.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %index.1.lcssa = phi i32 [ %index.053, %for.body.for.inc12_crit_edge ], [ %inc, %if.end10.for.inc12_crit_edge ]
  %call13 = call ptr @of_find_compatible_node(ptr noundef nonnull %i2c_bus.051, ptr noundef null, ptr noundef nonnull @.str.107) #9
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %for.inc12.cleanup_crit_edge, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc12.cleanup_crit_edge:                      ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i34, %if.then9 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_is_debugfs_create(ptr noundef %is) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.114, ptr noundef null) #9
  %debugfs_entry = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 28
  %0 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %debugfs_entry, align 8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.115, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %is, ptr noundef nonnull @fimc_is_fops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !300
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !301
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 11, i32 %i.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_disable_clocks.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_runtime_suspend, %if.then6.i)) #9
          to label %for.inc.i [label %if.then6.i], !srcloc !297

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7.i = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_disable_clocks.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136, i32 noundef 158, ptr noundef %5) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %fimc_is_disable_clocks.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

fimc_is_disable_clocks.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_is_general_irq_handler(ptr noundef %is) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 12
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1573032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !293
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %i2h_cmd = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19
  %4 = ptrtoint ptr %i2h_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i2h_cmd, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end16 [
    i32 4096, label %sw.bb
    i32 4098, label %entry.sw.bb9_crit_edge
    i32 4099, label %entry.sw.bb9_crit_edge329
    i32 4097, label %entry.sw.bb11_crit_edge
    i32 4100, label %entry.sw.bb11_crit_edge330
    i32 8192, label %entry.sw.bb11_crit_edge331
    i32 8193, label %sw.bb13
    i32 4101, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb11_crit_edge331:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge330:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb9_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @fimc_is_hw_get_params(ptr noundef %is, i32 noundef 1) #9
  %call4 = tail call i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef %is) #9
  tail call void @fimc_is_hw_set_sensor_num(ptr noundef %is) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !297

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %args = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef 453, i32 noundef %7) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge329
  %call10 = tail call i32 @fimc_is_hw_get_params(ptr noundef %is, i32 noundef 2) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge330, %entry.sw.bb11_crit_edge331
  %call12 = tail call i32 @fimc_is_hw_get_params(ptr noundef %is, i32 noundef 3) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @fimc_is_hw_get_params(ptr noundef %is, i32 noundef 4) #9
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78, i32 noundef 470, i32 noundef %3) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %sw.bb13, %sw.bb11, %sw.bb9, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @fimc_is_fw_clear_irq1(ptr noundef %is, i32 noundef 0) #9
  %8 = ptrtoint ptr %i2h_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2h_cmd, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %9, label %sw.epilog.sw.epilog240_crit_edge [
    i32 4096, label %sw.bb23
    i32 4101, label %do.end237
    i32 4098, label %sw.bb24
    i32 8193, label %do.end191
    i32 4100, label %do.body34
    i32 8192, label %do.body59
  ]

sw.epilog.sw.epilog240_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fimc_is_hw_set_intgr0_gd0(ptr noundef %is) #9
  %state = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #9
  br label %sw.epilog240

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %args26 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %11 = ptrtoint ptr %args26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args26, align 4
  %fd_header = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 21
  %count = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 21, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count, align 4
  %arrayidx30 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx30, align 4
  %index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 21, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %index, align 8
  %17 = ptrtoint ptr %fd_header to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fd_header, align 8
  br label %sw.epilog240

do.body34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then46)) #9
          to label %sw.epilog240 [label %if.then46], !srcloc !297

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %args48 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %18 = ptrtoint ptr %args48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %args48, align 4
  %arrayidx52 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx52, align 4
  %arrayidx55 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx55, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, i32 noundef 495, i32 noundef %19, i32 noundef %21, i32 noundef %23) #9
  br label %sw.epilog240

do.body59:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then71)) #9
          to label %do.end76 [label %if.then71], !srcloc !297

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %args73 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %24 = ptrtoint ptr %args73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args73, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.78, i32 noundef 499, i32 noundef %25) #9
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body59
  %args78 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %26 = ptrtoint ptr %args78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %args78, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %27, label %do.end76.sw.epilog240_crit_edge [
    i32 1, label %do.end76.sw.bb80_crit_edge
    i32 2, label %do.end76.sw.bb80_crit_edge332
    i32 3, label %do.end76.sw.bb80_crit_edge333
    i32 4, label %do.end76.sw.bb80_crit_edge334
    i32 5, label %sw.bb108
    i32 6, label %sw.bb111
    i32 7, label %sw.bb114
    i32 19, label %sw.bb186
    i32 18, label %sw.bb181
    i32 17, label %sw.bb179
    i32 12, label %sw.bb138
    i32 13, label %sw.bb161
    i32 21, label %do.body164
  ]

do.end76.sw.bb80_crit_edge334:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb80

do.end76.sw.bb80_crit_edge333:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb80

do.end76.sw.bb80_crit_edge332:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb80

do.end76.sw.bb80_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb80

do.end76.sw.epilog240_crit_edge:                  ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240

sw.bb80:                                          ; preds = %do.end76.sw.bb80_crit_edge, %do.end76.sw.bb80_crit_edge332, %do.end76.sw.bb80_crit_edge333, %do.end76.sw.bb80_crit_edge334
  %state81 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state81) #9
  %arrayidx84 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx84, align 4
  %cac_margin_x = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5, i32 9
  %31 = ptrtoint ptr %cac_margin_x to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cac_margin_x, align 4
  %arrayidx87 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx87, align 4
  %cac_margin_y = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5, i32 10
  %34 = ptrtoint ptr %cac_margin_y to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cac_margin_y, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then101)) #9
          to label %sw.epilog240 [label %if.then101], !srcloc !297

if.then101:                                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %cac_margin_x to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cac_margin_x, align 4
  %37 = ptrtoint ptr %cac_margin_y to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cac_margin_y, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.78, i32 noundef 508, i32 noundef %36, i32 noundef %38) #9
  br label %sw.epilog240

sw.bb108:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state109 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state109) #9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state109) #9
  br label %sw.epilog240

sw.bb111:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state112 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state112) #9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state112) #9
  br label %sw.epilog240

sw.bb114:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %39 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config_index, align 8
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %40, i32 5
  %41 = ptrtoint ptr %p_region_index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %p_region_index, align 8
  %42 = load i32, ptr %config_index, align 8
  %arrayidx121 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %42, i32 5, i32 1
  %43 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx121, align 4
  %state122 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state122) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then135)) #9
          to label %sw.epilog240 [label %if.then135], !srcloc !297

if.then135:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.78, i32 noundef 525) #9
  br label %sw.epilog240

sw.bb138:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state139 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state139) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then152)) #9
          to label %sw.epilog240 [label %if.then152], !srcloc !297

if.then152:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx155 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx155, align 4
  %arrayidx158 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx158, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.78, i32 noundef 540, i32 noundef %45, i32 noundef %47) #9
  br label %sw.epilog240

sw.bb161:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state162 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state162) #9
  %sensor_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 18
  %48 = ptrtoint ptr %sensor_index to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sensor_index, align 8
  br label %sw.epilog240

do.body164:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_general_irq_handler, %if.then176)) #9
          to label %sw.epilog240 [label %if.then176], !srcloc !297

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.78, i32 noundef 549) #9
  br label %sw.epilog240

sw.bb179:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state180 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %state180) #9
  br label %sw.epilog240

sw.bb181:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx184 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx184, align 4
  %base = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %base, align 8
  %state185 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state185) #9
  br label %sw.epilog240

sw.bb186:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %state187 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state187) #9
  br label %sw.epilog240

do.end191:                                        ; preds = %sw.epilog
  %args194 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3
  %52 = ptrtoint ptr %args194 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %args194, align 4
  %arrayidx198 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx198, align 4
  %call202 = tail call ptr @fimc_is_strerr(i32 noundef %55) #9
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.78, i32 noundef 570, i32 noundef %53, i32 noundef %55, ptr noundef %call202) #12
  %56 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %tobool207.not = icmp sgt i32 %57, -1
  br i1 %tobool207.not, label %do.end191.if.end213_crit_edge, label %do.end210

do.end191.if.end213_crit_edge:                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

do.end210:                                        ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #11
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.78, i32 noundef 573) #12
  %58 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %arrayidx198, align 4
  br label %if.end213

if.end213:                                        ; preds = %do.end210, %do.end191.if.end213_crit_edge
  %59 = phi i32 [ %.pr, %do.end210 ], [ %57, %do.end191.if.end213_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cond = icmp eq i32 %59, 9
  br i1 %cond, label %sw.bb217, label %if.end213.sw.epilog218_crit_edge

if.end213.sw.epilog218_crit_edge:                 ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

sw.bb217:                                         ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog218

sw.epilog218:                                     ; preds = %sw.bb217, %if.end213.sw.epilog218_crit_edge
  %60 = ptrtoint ptr %args194 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %args194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %cond241 = icmp eq i32 %61, 7
  br i1 %cond241, label %sw.bb222, label %sw.epilog218.sw.epilog240_crit_edge

sw.epilog218.sw.epilog240_crit_edge:              ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240

sw.bb222:                                         ; preds = %sw.epilog218
  call void @__sanitizer_cov_trace_pc() #11
  %config_index224 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %62 = ptrtoint ptr %config_index224 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %config_index224, align 8
  %p_region_index226 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %63, i32 5
  %64 = ptrtoint ptr %p_region_index226 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %p_region_index226, align 8
  %65 = load i32, ptr %config_index224, align 8
  %arrayidx232 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %65, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx232, align 4
  %state233 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state233) #9
  br label %sw.epilog240

do.end237:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.78, i32 noundef 590) #12
  br label %sw.epilog240

sw.epilog240:                                     ; preds = %do.end237, %sw.bb222, %sw.epilog218.sw.epilog240_crit_edge, %sw.bb186, %sw.bb181, %sw.bb179, %if.then176, %do.body164, %sw.bb161, %if.then152, %sw.bb138, %if.then135, %sw.bb114, %sw.bb111, %sw.bb108, %if.then101, %sw.bb80, %do.end76.sw.epilog240_crit_edge, %if.then46, %do.body34, %sw.bb24, %sw.bb23, %sw.epilog.sw.epilog240_crit_edge
  %irq_queue = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_irq_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_get_params(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_sensor_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_fw_clear_irq1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_is_strerr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_is_enable_clocks(ptr nocapture noundef readonly %is) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 11, i32 %i.045
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc23_crit_edge, label %if.end

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23

if.end:                                           ; preds = %for.body
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body14_crit_edge, label %if.then3.i

if.end.i.do.body14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39)
  %cmp4 = icmp slt i32 %retval.0.i39, 0
  br i1 %cmp4, label %do.end, label %clk_prepare_enable.exit.do.body14_crit_edge

clk_prepare_enable.exit.do.body14_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.end:                                           ; preds = %clk_prepare_enable.exit
  %2 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %arrayidx6 = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %i.045
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.045)
  %cmp849.not = icmp eq i32 %i.045, 0
  br i1 %cmp849.not, label %do.end.cleanup_crit_edge, label %do.end.for.body9_crit_edge

do.end.for.body9_crit_edge:                       ; preds = %do.end
  br label %for.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %do.end.for.body9_crit_edge
  %i.150.in = phi i32 [ %i.150, %for.body9.for.body9_crit_edge ], [ %i.045, %do.end.for.body9_crit_edge ]
  %i.150 = add nsw i32 %i.150.in, -1
  %arrayidx11 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 11, i32 %i.150
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  %cmp8 = icmp sgt i32 %i.150.in, 1
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

do.body14:                                        ; preds = %clk_prepare_enable.exit.do.body14_crit_edge, %if.end.i.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_enable_clocks.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_enable_clocks, %if.then18)) #9
          to label %for.inc23 [label %if.then18], !srcloc !297

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %i.045
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_is_enable_clocks.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, i32 noundef 146, ptr noundef %9) #9
  br label %for.inc23

for.inc23:                                        ; preds = %if.then18, %do.body14, %for.body.for.inc23_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.cleanup_crit_edge, %for.body9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %do.end.cleanup_crit_edge ], [ %retval.0.i39, %for.body9.cleanup_crit_edge ], [ 0, %for.inc23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_isp_subdev_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_is_sensor_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @fimc_is_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_is_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vaddr = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %3, i32 8695808
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.118, ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_is_load_firmware(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %cmp = icmp eq ptr %fw, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %4 = add i32 %3, -4194305
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4161537, i32 %4)
  %5 = icmp ult i32 %4, -4161537
  br i1 %5, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.122, i32 noundef %3) #12
  br label %done

if.end10:                                         ; preds = %if.end
  %fw12 = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 3
  %size13 = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %size13, align 4
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %memory.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 10485760, ptr noundef %memory.i, i32 noundef 3264, i32 noundef 0) #9
  %vaddr.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %vaddr.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end10.do.end18_crit_edge, label %if.end.i

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.end.i:                                         ; preds = %if.end10
  %size.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10485760, ptr %size.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.131, ptr noundef %memory.i) #12
  %11 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %memory.i, align 8
  %and.i = and i32 %12, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end19, label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.134, i32 noundef %12) #12
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 8
  %15 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr.i, align 4
  %17 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memory.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end13.i, %if.end10.do.end18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.125) #12
  br label %done

if.end19:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %20, i32 10465280
  %is_p_region.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 24
  %21 = ptrtoint ptr %is_p_region.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr25.i, ptr %is_p_region.i, align 4
  %sub.i = add nuw i32 %12, 10465280
  %is_dma_p_region.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 25
  %22 = ptrtoint ptr %is_dma_p_region.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %is_dma_p_region.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %20, i32 9175040
  %is_shared_region.i = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 26
  %23 = ptrtoint ptr %is_shared_region.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr30.i, ptr %is_shared_region.i, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw, align 4
  %28 = call ptr @memcpy(ptr %20, ptr %25, i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr.i, align 4
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %32
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 -38
  %info = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 3, i32 4
  %33 = call ptr @memcpy(ptr %info, ptr %add.ptr27, i32 31)
  %arrayidx = getelementptr %struct.fimc_is, ptr %context, i32 0, i32 3, i32 4, i32 31
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx, align 1
  %35 = load i32, ptr %fw, align 4
  %add.ptr34 = getelementptr i8, ptr %30, i32 %35
  %add.ptr35 = getelementptr i8, ptr %add.ptr34, i32 -7
  %version = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 3, i32 5
  %36 = call ptr @memcpy(ptr %version, ptr %add.ptr35, i32 7)
  %arrayidx39 = getelementptr %struct.fimc_is, ptr %context, i32 0, i32 3, i32 5, i32 6
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx39, align 2
  %state = getelementptr inbounds %struct.fimc_is, ptr %context, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.128, ptr noundef %info, ptr noundef %version) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_is_load_firmware.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_is_load_firmware, %if.then53)) #9
          to label %do.end58 [label %if.then53], !srcloc !297

if.then53:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fimc_is_load_firmware.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.130, i32 noundef %40, ptr noundef %memory.i) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %if.end19
  %41 = ptrtoint ptr %is_shared_region.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %is_shared_region.i, align 4
  %chip_id = getelementptr inbounds %struct.is_share_region, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %chip_id to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 934930, ptr %chip_id, align 1
  %44 = load ptr, ptr %is_shared_region.i, align 4
  %chip_rev_no = getelementptr inbounds %struct.is_share_region, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %chip_rev_no to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 1, ptr %chip_rev_no, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %fw12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw12, align 4
  tail call void @release_firmware(ptr noundef %47) #9
  %48 = ptrtoint ptr %fw12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fw, ptr %fw12, align 4
  br label %done

done:                                             ; preds = %do.end58, %do.end18, %do.end8
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_subdev_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_suspend(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_resume(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !94, !95, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !224, !226, !228, !229, !230, !232, !234, !236, !238, !239, !240, !241, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 297, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 301, i32 3}
!4 = !{ptr @__func__.fimc_is_wait_event, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 313, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @fimc_is_start_firmware._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @fimc_is_start_firmware._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 327, i32 3}
!14 = !{ptr @fimc_is_start_firmware._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @fimc_is_start_firmware._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"config_ids", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 654, i32 19}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 673, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fimc_is_hw_initialize._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @fimc_is_hw_initialize._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 676, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug311, !24, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 679, i32 27}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 685, i32 3}
!32 = !{ptr @fimc_is_hw_initialize._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @fimc_is_hw_initialize._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 689, i32 2}
!36 = !{ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug312, !35, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 691, i32 2}
!40 = !{ptr @fimc_is_hw_initialize._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fimc_is_hw_initialize._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 696, i32 3}
!44 = !{ptr @fimc_is_hw_initialize._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fimc_is_hw_initialize._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 700, i32 2}
!48 = !{ptr @fimc_is_hw_initialize.__UNIQUE_ID_ddebug313, !47, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!49 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 711, i32 3}
!52 = !{ptr @fimc_is_hw_initialize._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fimc_is_hw_initialize._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 731, i32 2}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fimc_is_hw_initialize._entry.31, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @fimc_is_hw_initialize._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__initcall__kmod_exynos_fimc_is__315_980_fimc_is_module_init6, !60, !"__initcall__kmod_exynos_fimc_is__315_980_fimc_is_module_init6", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 980, i32 1}
!61 = !{ptr @__exitcall_fimc_is_module_exit, !62, !"__exitcall_fimc_is_module_exit", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 981, i32 1}
!63 = !{ptr @__UNIQUE_ID_alias316, !64, !"__UNIQUE_ID_alias316", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 983, i32 1}
!65 = !{ptr @__UNIQUE_ID_author317, !66, !"__UNIQUE_ID_author317", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 984, i32 1}
!67 = !{ptr @__UNIQUE_ID_author318, !68, !"__UNIQUE_ID_author318", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 985, i32 1}
!69 = !{ptr @__UNIQUE_ID_file319, !70, !"__UNIQUE_ID_file319", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 986, i32 1}
!71 = !{ptr @__UNIQUE_ID_license320, !70, !"__UNIQUE_ID_license320", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 238, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fimc_is_load_setfile._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @fimc_is_load_setfile._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 246, i32 2}
!79 = !{ptr @fimc_is_load_setfile.__UNIQUE_ID_ddebug301, !78, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!80 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 255, i32 2}
!83 = !{ptr @fimc_is_load_setfile.__UNIQUE_ID_ddebug302, !82, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!84 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 953, i32 12}
!87 = !{ptr @fimc_is_driver, !88, !"fimc_is_driver", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 948, i32 31}
!89 = !{ptr @fimc_is_probe.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 784, i32 2}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fimc_is_probe.__key.43, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 785, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fimc_is_probe.__key.45, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 786, i32 2}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 796, i32 44}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 807, i32 3}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @fimc_is_probe._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @fimc_is_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 820, i32 3}
!107 = !{ptr @fimc_is_probe._entry.50, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @fimc_is_probe._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 851, i32 37}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 857, i32 2}
!113 = !{ptr @fimc_is_probe.__UNIQUE_ID_ddebug314, !112, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 95, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fimc_is_get_clocks._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @fimc_is_get_clocks._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 42, i32 24}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 43, i32 25}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 44, i32 22}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 45, i32 22}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 46, i32 21}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 47, i32 20}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 48, i32 20}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 49, i32 19}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 50, i32 22}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 51, i32 22}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 52, i32 23}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 53, i32 26}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 54, i32 21}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 55, i32 24}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 56, i32 24}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 57, i32 27}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 58, i32 27}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 59, i32 23}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 60, i32 27}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 61, i32 29}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 62, i32 32}
!161 = !{ptr @fimc_is_clocks, !162, !"fimc_is_clocks", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 41, i32 14}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 453, i32 3}
!165 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug304, !164, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!167 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 470, i32 3}
!170 = !{ptr @fimc_is_general_irq_handler._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @fimc_is_general_irq_handler._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 494, i32 3}
!174 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug305, !173, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!175 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 499, i32 3}
!178 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug306, !177, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!179 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 507, i32 4}
!182 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug307, !181, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!183 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 525, i32 4}
!186 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug308, !185, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!187 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 539, i32 4}
!190 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug309, !189, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!191 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 549, i32 4}
!194 = !{ptr @fimc_is_general_irq_handler.__UNIQUE_ID_ddebug310, !193, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!195 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 568, i32 3}
!198 = !{ptr @fimc_is_general_irq_handler._entry.94, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @fimc_is_general_irq_handler._entry_ptr.96, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 573, i32 4}
!202 = !{ptr @fimc_is_general_irq_handler._entry.97, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @fimc_is_general_irq_handler._entry_ptr.99, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 590, i32 3}
!206 = !{ptr @fimc_is_general_irq_handler._entry.100, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @fimc_is_general_irq_handler._entry_ptr.102, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 140, i32 4}
!210 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @fimc_is_enable_clocks._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @fimc_is_enable_clocks._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 146, i32 3}
!215 = !{ptr @fimc_is_enable_clocks.__UNIQUE_ID_ddebug299, !214, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!216 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 210, i32 2}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 173, i32 3}
!221 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @fimc_is_parse_sensor_config._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @fimc_is_parse_sensor_config._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 188, i32 35}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 190, i32 3}
!228 = !{ptr @fimc_is_parse_sensor_config._entry.111, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @fimc_is_parse_sensor_config._entry_ptr.113, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 760, i32 41}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 762, i32 22}
!234 = !{ptr @fimc_is_fops, !235, !"fimc_is_fops", i1 false, i1 false}
!235 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 750, i32 1}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 742, i32 3}
!238 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @fimc_is_show._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @fimc_is_show._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 746, i32 16}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 384, i32 3}
!245 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @fimc_is_load_firmware._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @fimc_is_load_firmware._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 390, i32 3}
!250 = !{ptr @fimc_is_load_firmware._entry.121, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @fimc_is_load_firmware._entry_ptr.123, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 398, i32 3}
!254 = !{ptr @fimc_is_load_firmware._entry.124, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @fimc_is_load_firmware._entry_ptr.126, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 416, i32 2}
!258 = !{ptr @fimc_is_load_firmware._entry.127, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @fimc_is_load_firmware._entry_ptr.129, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 418, i32 2}
!262 = !{ptr @fimc_is_load_firmware.__UNIQUE_ID_ddebug303, !261, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 344, i32 2}
!265 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @fimc_is_alloc_cpu_memory._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @fimc_is_alloc_cpu_memory._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 347, i32 3}
!270 = !{ptr @fimc_is_alloc_cpu_memory._entry.133, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @fimc_is_alloc_cpu_memory._entry_ptr.135, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 158, i32 4}
!274 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @fimc_is_disable_clocks.__UNIQUE_ID_ddebug300, !273, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!276 = !{ptr @.str.138, !273, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @fimc_is_of_match, !278, !"fimc_is_of_match", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 936, i32 34}
!279 = !{ptr @fimc_is_pm_ops, !280, !"fimc_is_pm_ops", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/exynos4-is/fimc-is.c", i32 942, i32 32}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 5660149}
!291 = !{i64 2156804596}
!292 = !{i64 2156805805}
!293 = !{i64 5660567}
!294 = !{i64 2156806649}
!295 = !{i64 2156838470}
!296 = !{i64 2156803763}
!297 = !{i64 2148298839, i64 2148298844, i64 2148298857, i64 2148298901, i64 2148298935, i64 2148298956}
!298 = !{!"auto-init"}
!299 = !{i64 2148484865}
!300 = !{i64 971465, i64 971490, i64 971512, i64 971528, i64 971540, i64 971560, i64 971584, i64 971600, i64 971612}
!301 = !{i64 2148485053}
!302 = !{i64 2156805420}
!303 = !{i64 2156849099}
