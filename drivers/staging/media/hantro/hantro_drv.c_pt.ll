; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_drv.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hantro_ctrl = type { i32, %struct.v4l2_ctrl_config }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.120 }
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
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.120 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.hantro_irq = type { ptr, ptr }
%struct.hantro_func = type { i32, %struct.video_device, %struct.media_pad, %struct.media_entity, %struct.media_pad, %struct.media_entity, [2 x %struct.media_pad], ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
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
%struct.v4l2_ctrl_vp9_frame = type { %struct.v4l2_vp9_loop_filter, %struct.v4l2_vp9_quantization, %struct.v4l2_vp9_segmentation, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_loop_filter = type { [4 x i8], [2 x i8], i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_quantization = type { i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_vp9_segmentation = type { [8 x [4 x i16]], [8 x i8], [7 x i8], [3 x i8], i8, [5 x i8] }

@__param_str_debug = internal constant [17 x i8] c"hantro_vpu.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hantro_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hantro_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [30 x i8] c"hantro_vpu.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug300 = internal constant [80 x i8] c"hantro_vpu.parm=debug:Debug level - higher value produces more verbose messages\00", section ".modinfo", align 1
@hantro_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s:%d: frame processing timed out!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hantro_watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/hantro/hantro_drv.c\00", [54 x i8] zeroinitializer }, align 32
@hantro_watchdog._entry_ptr = internal global ptr @hantro_watchdog._entry, section ".printk_index", align 4
@__initcall__kmod_hantro_vpu__301_1114_hantro_driver_init6 = internal global ptr @hantro_driver_init, section ".initcall6.init", align 4
@hantro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hantro_probe, ptr @hantro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_hantro_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hantro_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hantro_driver_exit = internal global ptr @hantro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [56 x i8] c"hantro_vpu.file=drivers/staging/media/hantro/hantro-vpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [26 x i8] c"hantro_vpu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [55 x i8] c"hantro_vpu.author=Alpha Lin <Alpha.Lin@Rock-Chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [51 x i8] c"hantro_vpu.author=Tomasz Figa <tfiga@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [59 x i8] c"hantro_vpu.author=Ezequiel Garcia <ezequiel@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [47 x i8] c"hantro_vpu.description=Hantro VPU codec driver\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hantro-vpu\00", [21 x i8] zeroinitializer }, align 32
@of_hantro_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mq-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mq_vpu_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mq-vpu-g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mq_vpu_g2_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama5d4-vdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_vdec_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-vpu-g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_vpu_variant }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@hantro_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hantro_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hantro_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vpu->vpu_mutex\00", [16 x i8] zeroinitializer }, align 32
@hantro_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vpu->irqlock\00", [18 x i8] zeroinitializer }, align 32
@hantro_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&vpu->watchdog_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@hantro_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&vpu->watchdog_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@hantro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 947, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not set DMA coherent mask.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hantro_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr = internal global ptr @hantro_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@hantro_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 978, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not request %s IRQ.\0A\00", [37 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.18 = internal global ptr @hantro_probe._entry.16, section ".printk_index", align 4
@hantro_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 986, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init VPU hardware\0A\00", [35 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.21 = internal global ptr @hantro_probe._entry.19, section ".printk_index", align 4
@hantro_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 997, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to deassert resets\0A\00", [37 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.24 = internal global ptr @hantro_probe._entry.22, section ".printk_index", align 4
@hantro_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 1003, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to prepare clocks\0A\00", [38 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.27 = internal global ptr @hantro_probe._entry.25, section ".printk_index", align 4
@hantro_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 1009, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.30 = internal global ptr @hantro_probe._entry.28, section ".printk_index", align 4
@vpu_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@hantro_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.33 = internal global ptr @hantro_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"platform: hantro-vpu\00", [43 x i8] zeroinitializer }, align 32
@hantro_m2m_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @vb2_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@hantro_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.12, ptr @.str.2, i32 1031, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register encoder\0A\00", [36 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.37 = internal global ptr @hantro_probe._entry.35, section ".printk_index", align 4
@hantro_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.12, ptr @.str.2, i32 1037, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register decoder\0A\00", [36 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.40 = internal global ptr @hantro_probe._entry.38, section ".printk_index", align 4
@hantro_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.12, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to register mem2mem media device\0A\00", [49 x i8] zeroinitializer }, align 32
@hantro_probe._entry_ptr.43 = internal global ptr @hantro_probe._entry.41, section ".printk_index", align 4
@hantro_add_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hantro_add_func\00", [16 x i8] zeroinitializer }, align 32
@hantro_add_func._entry_ptr = internal global ptr @hantro_add_func._entry, section ".printk_index", align 4
@hantro_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @hantro_open, ptr @hantro_release }, [60 x i8] zeroinitializer }, align 32
@hantro_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"enc\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dec\00", [28 x i8] zeroinitializer }, align 32
@hantro_add_func._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@hantro_add_func._entry_ptr.51 = internal global ptr @hantro_add_func._entry.49, section ".printk_index", align 4
@hantro_add_func._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: Failed to attach functionality to the media device\0A\00", [38 x i8] zeroinitializer }, align 32
@hantro_add_func._entry_ptr.54 = internal global ptr @hantro_add_func._entry.52, section ".printk_index", align 4
@hantro_add_func._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: registered %s as /dev/video%d\0A\00", [59 x i8] zeroinitializer }, align 32
@hantro_add_func._entry_ptr.57 = internal global ptr @hantro_add_func._entry.55, section ".printk_index", align 4
@hantro_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: Failed to set up controls\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hantro_open\00", [20 x i8] zeroinitializer }, align 32
@hantro_open._entry_ptr = internal global ptr @hantro_open._entry, section ".printk_index", align 4
@hantro_queue_ops = external dso_local constant %struct.vb2_ops, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@hantro_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hantro_drv:496:(&ctx->ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@controls = internal constant { [23 x %struct.hantro_ctrl], [696 x i8] } { [23 x %struct.hantro_ctrl] [%struct.hantro_ctrl { i32 1, %struct.v4l2_ctrl_config { ptr @hantro_jpeg_ctrl_ops, ptr null, i32 10291459, ptr null, i32 0, i64 5, i64 100, i64 1, i64 50, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 65536, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750428, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 65536, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750429, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 65536, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750430, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 131072, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750408, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750215, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr @hantro_ctrl_ops, ptr null, i32 10750210, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750211, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750212, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750208, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750209, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 262144, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029675, ptr null, i32 0, i64 0, i64 4, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 8, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030327, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030328, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029927, ptr null, i32 0, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029928, ptr null, i32 0, i64 0, i64 8, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr @hantro_ctrl_ops, ptr null, i32 10030320, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030321, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030324, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10030323, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 524288, %struct.v4l2_ctrl_config { ptr @hantro_hevc_ctrl_ops, ptr null, i32 10031616, ptr @.str.63, i32 1, i64 0, i64 256, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 1048576, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750508, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }, %struct.hantro_ctrl { i32 1048576, %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750509, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 } }], [696 x i8] zeroinitializer }, align 32
@hantro_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%d: Adding control (%d) failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_ctrls_setup\00", [45 x i8] zeroinitializer }, align 32
@hantro_ctrls_setup._entry_ptr = internal global ptr @hantro_ctrls_setup._entry, section ".printk_index", align 4
@hantro_jpeg_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hantro_jpeg_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@hantro_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @hantro_try_ctrl, ptr null }, [20 x i8] zeroinitializer }, align 32
@hantro_hevc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hantro_hevc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hantro HEVC slice header skip bytes\00", [60 x i8] zeroinitializer }, align 32
@hantro_jpeg_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:%d: s_ctrl: id = %d, val = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_jpeg_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@hantro_jpeg_s_ctrl._entry_ptr = internal global ptr @hantro_jpeg_s_ctrl._entry, section ".printk_index", align 4
@hantro_hevc_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.66, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_hevc_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@hantro_hevc_s_ctrl._entry_ptr = internal global ptr @hantro_hevc_s_ctrl._entry, section ".printk_index", align 4
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@hantro_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Removing %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hantro_remove\00", [18 x i8] zeroinitializer }, align 32
@hantro_remove._entry_ptr = internal global ptr @hantro_remove._entry, section ".printk_index", align 4
@px30_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@rk3036_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@rk3066_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@rk3288_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@rk3328_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@rk3399_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@imx8mq_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@imx8mq_vpu_g2_variant = external dso_local constant %struct.hantro_variant, align 4
@sama5d4_vdec_variant = external dso_local constant %struct.hantro_variant, align 4
@sunxi_vpu_variant = external dso_local constant %struct.hantro_variant, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16391, i64 16392]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 10030320, i64 10750210, i64 10750508]
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"hantro_debug\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 33, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 119, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"hantro_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1105, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1109, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"of_hantro_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 608, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"hantro_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1099, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 887, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 888, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 893, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 947, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 967, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 977, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 986, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 997, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1003, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1009, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"vpu_m2m_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 189, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1016, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1023, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"hantro_m2m_media_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 868, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1031, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1037, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1043, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 778, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"hantro_fops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 599, i32 42 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 792, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 793, i32 47 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 793, i32 55 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 804, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 810, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 815, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 566, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 496, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 335, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 505, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [21 x i8] c"hantro_jpeg_ctrl_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 327, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"hantro_ctrl_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 323, i32 35 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"hantro_hevc_ctrl_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 331, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 469, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 290, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 310, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 674, i32 57 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 682, i32 50 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 689, i32 50 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [45 x i8] c"../drivers/staging/media/hantro/hantro_drv.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1072, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_debug300, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_hantro_driver_exit, ptr @__initcall__kmod_hantro_vpu__301_1114_hantro_driver_init6, ptr @__param_debug, ptr @hantro_add_func._entry, ptr @hantro_add_func._entry.49, ptr @hantro_add_func._entry.52, ptr @hantro_add_func._entry.55, ptr @hantro_add_func._entry_ptr, ptr @hantro_add_func._entry_ptr.51, ptr @hantro_add_func._entry_ptr.54, ptr @hantro_add_func._entry_ptr.57, ptr @hantro_ctrls_setup._entry, ptr @hantro_ctrls_setup._entry_ptr, ptr @hantro_driver_exit, ptr @hantro_hevc_s_ctrl._entry, ptr @hantro_hevc_s_ctrl._entry_ptr, ptr @hantro_jpeg_s_ctrl._entry, ptr @hantro_jpeg_s_ctrl._entry_ptr, ptr @hantro_open._entry, ptr @hantro_open._entry_ptr, ptr @hantro_probe._entry, ptr @hantro_probe._entry.16, ptr @hantro_probe._entry.19, ptr @hantro_probe._entry.22, ptr @hantro_probe._entry.25, ptr @hantro_probe._entry.28, ptr @hantro_probe._entry.31, ptr @hantro_probe._entry.35, ptr @hantro_probe._entry.38, ptr @hantro_probe._entry.41, ptr @hantro_probe._entry_ptr, ptr @hantro_probe._entry_ptr.18, ptr @hantro_probe._entry_ptr.21, ptr @hantro_probe._entry_ptr.24, ptr @hantro_probe._entry_ptr.27, ptr @hantro_probe._entry_ptr.30, ptr @hantro_probe._entry_ptr.33, ptr @hantro_probe._entry_ptr.37, ptr @hantro_probe._entry_ptr.40, ptr @hantro_probe._entry_ptr.43, ptr @hantro_remove._entry, ptr @hantro_remove._entry_ptr, ptr @hantro_watchdog._entry, ptr @hantro_watchdog._entry_ptr, ptr @hantro_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hantro_driver, ptr @.str.3, ptr @of_hantro_match, ptr @hantro_pm_ops, ptr @hantro_probe.__key, ptr @.str.4, ptr @hantro_probe.__key.5, ptr @.str.6, ptr @hantro_probe.__key.7, ptr @.str.8, ptr @hantro_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @vpu_m2m_ops, ptr @.str.32, ptr @.str.34, ptr @hantro_m2m_media_ops, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @hantro_fops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @hantro_ctrls_setup._key, ptr @.str.60, ptr @controls, ptr @.str.61, ptr @.str.62, ptr @hantro_jpeg_ctrl_ops, ptr @hantro_ctrl_ops, ptr @hantro_hevc_ctrl_ops, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hantro_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_m2m_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_add_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_add_func._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_add_func._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_add_func._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 2760, i32 3456, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_jpeg_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_hevc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_jpeg_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_hevc_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 9
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef %id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %p_cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %p_cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_cur, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i, i64 noundef %ts, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp.i = icmp ugt i32 %3, %call1
  br i1 %cmp.i, label %if.then.i, label %if.end.vb2_get_buffer.exit_crit_edge

if.end.vb2_get_buffer.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_get_buffer.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i, i32 0, i32 20, i32 %call1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  br label %vb2_get_buffer.exit

vb2_get_buffer.exit:                              ; preds = %if.then.i, %if.end.vb2_get_buffer.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %if.end.vb2_get_buffer.exit_crit_edge ]
  %vpu_dst_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %vpu_dst_fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpu_dst_fmt.i, align 4
  %call.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %7) #9
  br i1 %call.i, label %if.then.i9, label %if.end.i

if.then.i9:                                       ; preds = %vb2_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %postproc.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %retval.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %dma.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i, i32 0, i32 %9, i32 1
  br label %hantro_get_dec_buf_addr.exit

if.end.i:                                         ; preds = %vb2_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %retval.0.i, i32 noundef 0) #9
  br label %hantro_get_dec_buf_addr.exit

hantro_get_dec_buf_addr.exit:                     ; preds = %if.end.i, %if.then.i9
  %retval.0.in.i = phi ptr [ %dma.i, %if.then.i9 ], [ %call.i.i, %if.end.i ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i10 = load i32, ptr %retval.0.in.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hantro_get_dec_buf_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i10, %hantro_get_dec_buf_addr.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_irq_done(ptr noundef %vpu, i32 noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 1
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #9
  %watchdog_work = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 16
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %watchdog_work) #9
  br i1 %call1, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %result)
  %cmp = icmp eq i32 %result, 5
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %codec_ops = getelementptr inbounds %struct.hantro_ctx, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec_ops, align 4
  %done = getelementptr inbounds %struct.hantro_codec_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i6.i = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #9
  %variant.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 15
  %11 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant.i, align 8
  %num_clocks.i = getelementptr inbounds %struct.hantro_variant, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clocks.i, align 4
  %clocks.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %15 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clocks.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %14, ptr noundef %16) #9
  tail call fastcc void @hantro_job_finish_no_pm(ptr noundef %call, i32 noundef %result) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_watchdog(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr i8, ptr %work, i32 -796
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call1 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119) #12
  %codec_ops = getelementptr inbounds %struct.hantro_ctx, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec_ops, align 4
  %reset = getelementptr inbounds %struct.hantro_codec_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void %5(ptr noundef nonnull %call1) #9
  %dev.i = getelementptr i8, ptr %work, i32 -168
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i6.i = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #9
  %variant.i = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant.i, align 8
  %num_clocks.i = getelementptr inbounds %struct.hantro_variant, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clocks.i, align 4
  %clocks.i = getelementptr i8, ptr %work, i32 -164
  %15 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clocks.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %14, ptr noundef %16) #9
  tail call fastcc void @hantro_job_finish_no_pm(ptr noundef nonnull %call1, i32 noundef 6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_start_prepare_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #9
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %ctrl_handler = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 9
  %call1 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %3, ptr noundef %ctrl_handler) #9
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_encoder, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 8
  %late_postproc = getelementptr inbounds %struct.hantro_variant, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %late_postproc to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %late_postproc, align 4
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %12 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vpu_dst_fmt, align 4
  %call3 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %13) #9
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hantro_postproc_enable(ptr noundef %ctx) #9
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hantro_postproc_disable(ptr noundef %ctx) #9
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_postproc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_postproc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_end_prepare_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 8
  %late_postproc = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %late_postproc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %late_postproc, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %if.then

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %land.lhs.true
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpu_dst_fmt, align 4
  %call = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %9) #9
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hantro_postproc_enable(ptr noundef %ctx) #9
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hantro_postproc_disable(ptr noundef %ctx) #9
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #9
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %ctrl_handler = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 9
  tail call void @v4l2_ctrl_request_complete(ptr noundef %13, ptr noundef %ctrl_handler) #9
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %watchdog_work = getelementptr inbounds %struct.hantro_dev, ptr %15, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i16 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %watchdog_work, i32 noundef 200) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hantro_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hantro_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @hantro_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hantro_job_finish_no_pm(ptr nocapture noundef %ctx, i32 noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #9
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i1 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !176

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 68, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end26:                                         ; preds = %entry
  %tobool28.not = icmp eq ptr %call.i1, null
  br i1 %tobool28.not, label %do.end46, label %if.end62, !prof !176

do.end46:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %sequence_out = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %sequence_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sequence_out, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %sequence_out, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sequence, align 8
  %sequence_cap = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sequence_cap, align 8
  %inc63 = add i32 %8, 1
  store i32 %inc63, ptr %sequence_cap, align 8
  %sequence64 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i1, i32 0, i32 4
  %9 = ptrtoint ptr %sequence64 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sequence64, align 8
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %m2m_dev = getelementptr inbounds %struct.hantro_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_dev, align 8
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_done_and_job_finish(ptr noundef %13, ptr noundef %15, i32 noundef %result) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end46, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_done_and_job_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1024, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup289_crit_edge, label %if.end

entry.cleanup289_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %pdev3 = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev3, align 8
  %vpu_mutex = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %vpu_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @hantro_probe.__key) #9
  %irqlock = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hantro_probe.__key.5, i16 noundef signext 3) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_match_node(ptr noundef nonnull @of_hantro_match, ptr noundef %3) #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %variant, align 8
  %watchdog_work = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #9
  %7 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @hantro_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry19 = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hantro_watchdog, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @hantro_probe.__key.9) #9
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 8
  %num_clocks = getelementptr inbounds %struct.hantro_variant, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clocks, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 8) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !176

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %clocks457 = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %clocks457 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %clocks457, align 8
  br label %cleanup289

devm_kcalloc.exit:                                ; preds = %if.end
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #9
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %clocks, align 8
  %tobool34.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool34.not, label %devm_kcalloc.exit.cleanup289_crit_edge, label %if.end36

devm_kcalloc.exit.cleanup289_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

if.end36:                                         ; preds = %devm_kcalloc.exit
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 8
  %num_clocks38 = getelementptr inbounds %struct.hantro_variant, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %num_clocks38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clocks38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp sgt i32 %23, 1
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end36
  %24 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant, align 8
  %num_clocks41474 = getelementptr inbounds %struct.hantro_variant, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %num_clocks41474 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_clocks41474, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42475 = icmp sgt i32 %27, 0
  br i1 %cmp42475, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %28 = phi ptr [ %37, %for.body.for.body_crit_edge ], [ %25, %for.cond.preheader.for.body_crit_edge ]
  %i.0476 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %clk_names = getelementptr inbounds %struct.hantro_variant, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_names, align 4
  %arrayidx = getelementptr ptr, ptr %30, i32 %i.0476
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clocks, align 8
  %arrayidx45 = getelementptr %struct.clk_bulk_data, ptr %34, i32 %i.0476
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %arrayidx45, align 4
  %inc = add nuw nsw i32 %i.0476, 1
  %36 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %variant, align 8
  %num_clocks41 = getelementptr inbounds %struct.hantro_variant, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %num_clocks41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clocks41, align 4
  %cmp42 = icmp slt i32 %inc, %39
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa473 = phi i32 [ %27, %for.cond.preheader.for.end_crit_edge ], [ %39, %for.body.for.end_crit_edge ]
  %40 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clocks, align 8
  %call50 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef %.lcssa473, ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.end.if.end68_crit_edge, label %for.end.cleanup289_crit_edge

for.end.cleanup289_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else:                                          ; preds = %if.end36
  %call55 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %42 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call55, ptr %clk, align 4
  %45 = load ptr, ptr %clocks, align 8
  %clk60 = getelementptr inbounds %struct.clk_bulk_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %clk60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk60, align 4
  %cmp.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.else.if.end68_crit_edge

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup289

if.end68:                                         ; preds = %if.else.if.end68_crit_edge, %for.end.if.end68_crit_edge
  %call70 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %resets = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %resets to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call70, ptr %resets, align 4
  %cmp.i439 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i439, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call70 to i32
  br label %cleanup289

if.end76:                                         ; preds = %if.end68
  %51 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %variant, align 8
  %num_regs = getelementptr inbounds %struct.hantro_variant, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool78.not = icmp eq i32 %54, 0
  %. = select i1 %tobool78.not, i32 1, i32 %54
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %., i32 4) #9
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %devm_kcalloc.exit443.thread, label %devm_kcalloc.exit443, !prof !176

devm_kcalloc.exit443.thread:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %reg_bases461 = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 9
  %57 = ptrtoint ptr %reg_bases461 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %reg_bases461, align 8
  br label %cleanup289

devm_kcalloc.exit443:                             ; preds = %if.end76
  %58 = extractvalue { i32, i1 } %55, 0
  %call5.i.i440 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %58, i32 noundef 3520) #9
  %reg_bases = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 9
  %59 = ptrtoint ptr %reg_bases to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i.i440, ptr %reg_bases, align 8
  %tobool82.not = icmp eq ptr %call5.i.i440, null
  br i1 %tobool82.not, label %devm_kcalloc.exit443.cleanup289_crit_edge, label %devm_kcalloc.exit443.for.body87_crit_edge

devm_kcalloc.exit443.for.body87_crit_edge:        ; preds = %devm_kcalloc.exit443
  br label %for.body87

devm_kcalloc.exit443.cleanup289_crit_edge:        ; preds = %devm_kcalloc.exit443
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

for.cond85:                                       ; preds = %cond.end99
  %inc114 = add nuw nsw i32 %i.1478, 1
  %exitcond.not = icmp eq i32 %inc114, %.
  br i1 %exitcond.not, label %for.end115, label %for.cond85.for.body87_crit_edge

for.cond85.for.body87_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body87

for.body87:                                       ; preds = %for.cond85.for.body87_crit_edge, %devm_kcalloc.exit443.for.body87_crit_edge
  %i.1478 = phi i32 [ %inc114, %for.cond85.for.body87_crit_edge ], [ 0, %devm_kcalloc.exit443.for.body87_crit_edge ]
  %60 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %variant, align 8
  %reg_names = getelementptr inbounds %struct.hantro_variant, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %reg_names to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_names, align 4
  %tobool89.not = icmp eq ptr %63, null
  %64 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev3, align 8
  br i1 %tobool89.not, label %cond.false96, label %cond.true90

cond.true90:                                      ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx94 = getelementptr ptr, ptr %63, i32 %i.1478
  %66 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx94, align 4
  %call95 = tail call ptr @platform_get_resource_byname(ptr noundef %65, i32 noundef 512, ptr noundef %67) #9
  br label %cond.end99

cond.false96:                                     ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = tail call ptr @platform_get_resource(ptr noundef %65, i32 noundef 512, i32 noundef 0) #9
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false96, %cond.true90
  %cond100 = phi ptr [ %call95, %cond.true90 ], [ %call98, %cond.false96 ]
  %68 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev2, align 4
  %call102 = tail call ptr @devm_ioremap_resource(ptr noundef %69, ptr noundef %cond100) #9
  %70 = ptrtoint ptr %reg_bases to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_bases, align 8
  %arrayidx104 = getelementptr ptr, ptr %71, i32 %i.1478
  %72 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call102, ptr %arrayidx104, align 4
  %73 = load ptr, ptr %reg_bases, align 8
  %arrayidx106 = getelementptr ptr, ptr %73, i32 %i.1478
  %74 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx106, align 4
  %cmp.i444 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i444, label %if.then108, label %for.cond85

if.then108:                                       ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %75 to i32
  br label %cleanup289

for.end115:                                       ; preds = %for.cond85
  %77 = ptrtoint ptr %reg_bases to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_bases, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %variant, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add.ptr = getelementptr i8, ptr %80, i32 %84
  %enc_base = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 10
  %85 = ptrtoint ptr %enc_base to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr, ptr %enc_base, align 4
  %86 = load ptr, ptr %78, align 4
  %dec_offset = getelementptr inbounds %struct.hantro_variant, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %dec_offset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dec_offset, align 4
  %add.ptr122 = getelementptr i8, ptr %86, i32 %88
  %dec_base = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 11
  %89 = ptrtoint ptr %dec_base to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr122, ptr %dec_base, align 8
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %call124 = tail call i32 @dma_set_coherent_mask(ptr noundef %91, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.11) #12
  br label %cleanup289

if.end131:                                        ; preds = %for.end115
  %call133 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev, i32 noundef -1) #9
  %94 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %variant, align 8
  %num_irqs480 = getelementptr inbounds %struct.hantro_variant, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %num_irqs480 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_irqs480, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp136481 = icmp sgt i32 %97, 0
  br i1 %cmp136481, label %if.end131.for.body137_crit_edge, label %if.end131.for.end177_crit_edge

if.end131.for.end177_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177

if.end131.for.body137_crit_edge:                  ; preds = %if.end131
  br label %for.body137

for.body137:                                      ; preds = %for.inc175.for.body137_crit_edge, %if.end131.for.body137_crit_edge
  %98 = phi i32 [ %127, %for.inc175.for.body137_crit_edge ], [ %97, %if.end131.for.body137_crit_edge ]
  %99 = phi ptr [ %125, %for.inc175.for.body137_crit_edge ], [ %95, %if.end131.for.body137_crit_edge ]
  %i.2482 = phi i32 [ %inc176, %for.inc175.for.body137_crit_edge ], [ 0, %if.end131.for.body137_crit_edge ]
  %irqs = getelementptr inbounds %struct.hantro_variant, ptr %99, i32 0, i32 13
  %100 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %irqs, align 4
  %arrayidx139 = getelementptr %struct.hantro_irq, ptr %101, i32 %i.2482
  %handler = getelementptr %struct.hantro_irq, ptr %101, i32 %i.2482, i32 1
  %102 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %handler, align 4
  %tobool140.not = icmp eq ptr %103, null
  br i1 %tobool140.not, label %for.body137.for.inc175_crit_edge, label %if.end142

for.body137.for.inc175_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc175

if.end142:                                        ; preds = %for.body137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp145 = icmp sgt i32 %98, 1
  br i1 %cmp145, label %if.then146, label %if.else152

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx139, align 4
  %106 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev3, align 8
  %call151 = tail call i32 @platform_get_irq_byname(ptr noundef %107, ptr noundef %105) #9
  br label %if.end155

if.else152:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev3, align 8
  %call154 = tail call i32 @platform_get_irq(ptr noundef %109, i32 noundef 0) #9
  br label %if.end155

if.end155:                                        ; preds = %if.else152, %if.then146
  %irq_name.0 = phi ptr [ %105, %if.then146 ], [ @.str.15, %if.else152 ]
  %irq.0 = phi i32 [ %call151, %if.then146 ], [ %call154, %if.else152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq.0)
  %cmp156 = icmp slt i32 %irq.0, 1
  br i1 %cmp156, label %if.end155.cleanup289_crit_edge, label %if.end158

if.end155.cleanup289_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

if.end158:                                        ; preds = %if.end155
  %110 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev2, align 4
  %112 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %variant, align 8
  %irqs161 = getelementptr inbounds %struct.hantro_variant, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %irqs161 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %irqs161, align 4
  %handler163 = getelementptr %struct.hantro_irq, ptr %115, i32 %i.2482, i32 1
  %116 = ptrtoint ptr %handler163 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %handler163, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 3
  %118 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end158.dev_name.exit_crit_edge

if.end158.dev_name.exit_crit_edge:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %111, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end158.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %121, %if.end.i ], [ %119, %if.end158.dev_name.exit_crit_edge ]
  %call.i445 = tail call i32 @devm_request_threaded_irq(ptr noundef %111, i32 noundef %irq.0, ptr noundef %117, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445)
  %tobool167.not = icmp eq i32 %call.i445, 0
  br i1 %tobool167.not, label %dev_name.exit.for.inc175_crit_edge, label %do.end171

dev_name.exit.for.inc175_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc175

do.end171:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.17, ptr noundef %irq_name.0) #12
  br label %cleanup289

for.inc175:                                       ; preds = %dev_name.exit.for.inc175_crit_edge, %for.body137.for.inc175_crit_edge
  %inc176 = add nuw nsw i32 %i.2482, 1
  %124 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %variant, align 8
  %num_irqs = getelementptr inbounds %struct.hantro_variant, ptr %125, i32 0, i32 14
  %126 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_irqs, align 4
  %cmp136 = icmp slt i32 %inc176, %127
  br i1 %cmp136, label %for.inc175.for.body137_crit_edge, label %for.inc175.for.end177_crit_edge

for.inc175.for.end177_crit_edge:                  ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177

for.inc175.for.body137_crit_edge:                 ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body137

for.end177:                                       ; preds = %for.inc175.for.end177_crit_edge, %if.end131.for.end177_crit_edge
  %.lcssa = phi ptr [ %95, %if.end131.for.end177_crit_edge ], [ %125, %for.inc175.for.end177_crit_edge ]
  %init = getelementptr inbounds %struct.hantro_variant, ptr %.lcssa, i32 0, i32 11
  %128 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %init, align 4
  %tobool179.not = icmp eq ptr %129, null
  br i1 %tobool179.not, label %for.end177.if.end191_crit_edge, label %if.then180

for.end177.if.end191_crit_edge:                   ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then180:                                       ; preds = %for.end177
  %call183 = tail call i32 %129(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then180.if.end191_crit_edge, label %do.end188

if.then180.if.end191_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

do.end188:                                        ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %cleanup289

if.end191:                                        ; preds = %if.then180.if.end191_crit_edge, %for.end177.if.end191_crit_edge
  %130 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %131, i32 noundef 100) #9
  %132 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %133, i1 noundef zeroext true) #9
  %134 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_enable(ptr noundef %135) #9
  %136 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %resets, align 4
  %call196 = tail call i32 @reset_control_deassert(ptr noundef %137) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end203, label %do.end201

do.end201:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %err_pm_disable

if.end203:                                        ; preds = %if.end191
  %138 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %variant, align 8
  %num_clocks205 = getelementptr inbounds %struct.hantro_variant, ptr %139, i32 0, i32 16
  %140 = ptrtoint ptr %num_clocks205 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_clocks205, align 4
  %142 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %clocks, align 8
  %call207 = tail call i32 @clk_bulk_prepare(i32 noundef %141, ptr noundef %143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end214, label %do.end212

do.end212:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %err_rst_assert

if.end214:                                        ; preds = %if.end203
  %call216 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end223, label %do.end221

do.end221:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %err_clk_unprepare

if.end223:                                        ; preds = %if.end214
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %144 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call224 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @vpu_m2m_ops) #9
  %m2m_dev = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 1
  %145 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call224, ptr %m2m_dev, align 8
  %cmp.i446 = icmp ugt ptr %call224, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i446, label %do.end230, label %if.end236

do.end230:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  %name232 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name232) #12
  %146 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %m2m_dev, align 8
  %148 = ptrtoint ptr %147 to i32
  br label %err_v4l2_unreg

if.end236:                                        ; preds = %if.end223
  %149 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev2, align 4
  %mdev = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 2
  %151 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 2, i32 2
  %call241 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.3, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 2, i32 5
  %call244 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.34, i32 noundef 32) #9
  tail call void @media_device_init(ptr noundef %mdev) #9
  %ops = getelementptr inbounds %struct.hantro_dev, ptr %call.i, i32 0, i32 2, i32 21
  %152 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @hantro_m2m_media_ops, ptr %ops, align 8
  %mdev249 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 1
  %153 = ptrtoint ptr %mdev249 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %mdev, ptr %mdev249, align 4
  %154 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %variant, align 8
  %enc_fmts.i = getelementptr inbounds %struct.hantro_variant, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %enc_fmts.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %enc_fmts.i, align 4
  %tobool.not.i447 = icmp eq ptr %157, null
  br i1 %tobool.not.i447, label %if.end236.if.end257_crit_edge, label %hantro_add_enc_func.exit

if.end236.if.end257_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end257

hantro_add_enc_func.exit:                         ; preds = %if.end236
  %call.i448 = tail call fastcc i32 @hantro_add_func(ptr noundef %call.i, i32 noundef 16391) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i448)
  %tobool251.not = icmp eq i32 %call.i448, 0
  br i1 %tobool251.not, label %hantro_add_enc_func.exit.if.end257_crit_edge, label %do.end255

hantro_add_enc_func.exit.if.end257_crit_edge:     ; preds = %hantro_add_enc_func.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end257

do.end255:                                        ; preds = %hantro_add_enc_func.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %err_m2m_rel

if.end257:                                        ; preds = %hantro_add_enc_func.exit.if.end257_crit_edge, %if.end236.if.end257_crit_edge
  %158 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %variant, align 8
  %dec_fmts.i = getelementptr inbounds %struct.hantro_variant, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %dec_fmts.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dec_fmts.i, align 4
  %tobool.not.i452 = icmp eq ptr %161, null
  br i1 %tobool.not.i452, label %if.end257.if.end265_crit_edge, label %hantro_add_dec_func.exit

if.end257.if.end265_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

hantro_add_dec_func.exit:                         ; preds = %if.end257
  %call.i453 = tail call fastcc i32 @hantro_add_func(ptr noundef %call.i, i32 noundef 16392) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i453)
  %tobool259.not = icmp eq i32 %call.i453, 0
  br i1 %tobool259.not, label %hantro_add_dec_func.exit.if.end265_crit_edge, label %do.end263

hantro_add_dec_func.exit.if.end265_crit_edge:     ; preds = %hantro_add_dec_func.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

do.end263:                                        ; preds = %hantro_add_dec_func.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %err_rm_enc_func

if.end265:                                        ; preds = %hantro_add_dec_func.exit.if.end265_crit_edge, %if.end257.if.end265_crit_edge
  %call267 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end265.cleanup289_crit_edge, label %do.end272

if.end265.cleanup289_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup289

do.end272:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %name275 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name275) #12
  tail call fastcc void @hantro_remove_func(ptr noundef %call.i, i32 noundef 16392) #9
  br label %err_rm_enc_func

err_rm_enc_func:                                  ; preds = %do.end272, %do.end263
  %ret.0 = phi i32 [ %call.i453, %do.end263 ], [ %call267, %do.end272 ]
  tail call fastcc void @hantro_remove_func(ptr noundef %call.i, i32 noundef 16391) #9
  br label %err_m2m_rel

err_m2m_rel:                                      ; preds = %err_rm_enc_func, %do.end255
  %ret.1 = phi i32 [ %call.i448, %do.end255 ], [ %ret.0, %err_rm_enc_func ]
  tail call void @media_device_cleanup(ptr noundef %mdev) #9
  %162 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %163) #9
  br label %err_v4l2_unreg

err_v4l2_unreg:                                   ; preds = %err_m2m_rel, %do.end230
  %ret.2 = phi i32 [ %148, %do.end230 ], [ %ret.1, %err_m2m_rel ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #9
  br label %err_clk_unprepare

err_clk_unprepare:                                ; preds = %err_v4l2_unreg, %do.end221
  %ret.3 = phi i32 [ %call216, %do.end221 ], [ %ret.2, %err_v4l2_unreg ]
  %164 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %variant, align 8
  %num_clocks283 = getelementptr inbounds %struct.hantro_variant, ptr %165, i32 0, i32 16
  %166 = ptrtoint ptr %num_clocks283 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_clocks283, align 4
  %168 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %clocks, align 8
  tail call void @clk_bulk_unprepare(i32 noundef %167, ptr noundef %169) #9
  br label %err_rst_assert

err_rst_assert:                                   ; preds = %err_clk_unprepare, %do.end212
  %ret.4 = phi i32 [ %call207, %do.end212 ], [ %ret.3, %err_clk_unprepare ]
  %170 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %resets, align 4
  %call286 = tail call i32 @reset_control_assert(ptr noundef %171) #9
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_rst_assert, %do.end201
  %ret.5 = phi i32 [ %call196, %do.end201 ], [ %ret.4, %err_rst_assert ]
  %172 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %173, i1 noundef zeroext false) #9
  %174 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %175, i1 noundef zeroext true) #9
  br label %cleanup289

cleanup289:                                       ; preds = %err_pm_disable, %if.end265.cleanup289_crit_edge, %do.end188, %do.end171, %if.end155.cleanup289_crit_edge, %do.end129, %if.then108, %devm_kcalloc.exit443.cleanup289_crit_edge, %devm_kcalloc.exit443.thread, %if.then73, %if.then62, %for.end.cleanup289_crit_edge, %devm_kcalloc.exit.cleanup289_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup289_crit_edge
  %retval.2 = phi i32 [ %50, %if.then73 ], [ %76, %if.then108 ], [ %call124, %do.end129 ], [ %call183, %do.end188 ], [ %ret.5, %err_pm_disable ], [ %48, %if.then62 ], [ -12, %entry.cleanup289_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup289_crit_edge ], [ %call50, %for.end.cleanup289_crit_edge ], [ -12, %devm_kcalloc.exit443.cleanup289_crit_edge ], [ 0, %if.end265.cleanup289_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit443.thread ], [ %call.i445, %do.end171 ], [ -6, %if.end155.cleanup289_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name, ptr noundef %3) #12
  %mdev = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev) #9
  tail call fastcc void @hantro_remove_func(ptr noundef %1, i32 noundef 16392) #9
  tail call fastcc void @hantro_remove_func(ptr noundef %1, i32 noundef 16391) #9
  tail call void @media_device_cleanup(ptr noundef %mdev) #9
  %m2m_dev = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %5) #9
  tail call void @v4l2_device_unregister(ptr noundef %1) #9
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 8
  %num_clocks = getelementptr inbounds %struct.hantro_variant, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clocks, align 8
  tail call void @clk_bulk_unprepare(i32 noundef %9, ptr noundef %11) #9
  %resets = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resets, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %13) #9
  %dev = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %15, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %priv, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #9
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i.i27 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %dev2 = getelementptr inbounds %struct.hantro_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !178
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_cancel_job_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_cancel_job_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cancel_job

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !179
  br label %err_cancel_job

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 8
  %num_clocks = getelementptr inbounds %struct.hantro_variant, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clocks, align 8
  %call6 = tail call i32 @clk_bulk_enable(i32 noundef %14, ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.err_cancel_job_crit_edge

if.end.err_cancel_job_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cancel_job

if.end8:                                          ; preds = %if.end
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i.i, ptr noundef %call.i.i27, i1 noundef zeroext true) #9
  %codec_ops = getelementptr inbounds %struct.hantro_ctx, ptr %priv, i32 0, i32 11
  %17 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codec_ops, align 4
  %run = getelementptr inbounds %struct.hantro_codec_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %run, align 4
  %call9 = tail call i32 %20(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.err_cancel_job_crit_edge

if.end8.err_cancel_job_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cancel_job

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_cancel_job:                                   ; preds = %if.end8.err_cancel_job_crit_edge, %if.end.err_cancel_job_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.err_cancel_job_crit_edge
  tail call fastcc void @hantro_job_finish_no_pm(ptr noundef %priv, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %err_cancel_job, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hantro_add_func(ptr noundef %vpu, i32 noundef %funcid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @of_hantro_match, ptr noundef %3) #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1656, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %vpu, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %funcid, ptr %call.i, align 8
  %vdev = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1
  %fops = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hantro_fops, ptr %fops, align 4
  %release = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 23
  %8 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @video_device_release_empty, ptr %release, align 8
  %vpu_mutex = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 13
  %lock = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 26
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vpu_mutex, ptr %lock, align 8
  %v4l2_dev5 = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %v4l2_dev5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vpu, ptr %v4l2_dev5, align 4
  %vfl_dir = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 14
  %11 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67125248, ptr %device_caps, align 8
  %ioctl_ops = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 24
  %13 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hantro_ioctl_ops, ptr %ioctl_ops, align 4
  %name6 = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 12
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16391, i32 %funcid)
  %cmp = icmp eq i32 %funcid, 16391
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6, i32 noundef 32, ptr noundef nonnull @.str.46, ptr noundef %compatible, ptr noundef nonnull %cond)
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %encoder = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 3
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %encoder, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %decoder = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 4
  %15 = ptrtoint ptr %decoder to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %decoder, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %driver_data.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vpu, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i83 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool14.not = icmp eq i32 %call.i83, 0
  br i1 %tobool14.not, label %if.end24, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %name21 = getelementptr inbounds %struct.v4l2_device, ptr %vpu, i32 0, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name21) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %mdev1.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %flags.i, align 4
  %obj_type.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %obj_type.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 0, i32 15
  %23 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 81, ptr %info.i.i, align 4
  %minor.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 15
  %24 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minor.i.i, align 8
  %minor2.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 0, i32 15, i32 0, i32 1
  %26 = ptrtoint ptr %minor2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %minor2.i.i, align 4
  %27 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev1.i, align 8
  %call.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %28, i32 noundef 3264, ptr noundef nonnull @.str.46, ptr noundef %name6, ptr noundef nonnull @.str.67) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end24.do.end30_crit_edge, label %if.end5.i.i

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.end5.i.i:                                      ; preds = %if.end24
  %source_pad.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 2
  %name6.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %name6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %name6.i.i, align 4
  %function7.i.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %function7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 65537, ptr %function7.i.i, align 4
  %call8.i.i = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %source_pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %hantro_register_entity.exit.i, label %if.end5.i.i.do.end30_crit_edge

if.end5.i.i.do.end30_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

hantro_register_entity.exit.i:                    ; preds = %if.end5.i.i
  %call12.i.i = tail call i32 @media_device_register_entity(ptr noundef %mdev1.i, ptr noundef %vdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hantro_register_entity.exit.i.do.end30_crit_edge

hantro_register_entity.exit.i.do.end30_crit_edge: ; preds = %hantro_register_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.end.i:                                         ; preds = %hantro_register_entity.exit.i
  %proc_pads.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 6
  %flags4.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 6, i32 0, i32 4
  %31 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %flags4.i, align 4
  %flags7.i = getelementptr %struct.hantro_func, ptr %call.i, i32 0, i32 6, i32 1, i32 4
  %32 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags7.i, align 4
  %proc.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i, align 8
  %obj_type.i106.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %obj_type.i106.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %obj_type.i106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 65537
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %info.i107.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5, i32 15
  %36 = ptrtoint ptr %info.i107.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 81, ptr %info.i107.i, align 4
  %37 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minor.i.i, align 8
  %minor2.i109.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5, i32 15, i32 0, i32 1
  %39 = ptrtoint ptr %minor2.i109.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %minor2.i109.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev1.i, align 8
  %call.i111.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %41, i32 noundef 3264, ptr noundef nonnull @.str.46, ptr noundef %name6, ptr noundef nonnull @.str.68) #9
  %tobool.not.i112.i = icmp eq ptr %call.i111.i, null
  br i1 %tobool.not.i112.i, label %if.end.i.i.err_rel_entity0.i_crit_edge, label %if.end5.i117.i

if.end.i.i.err_rel_entity0.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity0.i

if.end5.i117.i:                                   ; preds = %if.end.i.i
  %name6.i113.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %name6.i113.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i111.i, ptr %name6.i113.i, align 4
  %function7.i114.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %function7.i114.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %34, ptr %function7.i114.i, align 4
  %call8.i115.i = tail call i32 @media_entity_pads_init(ptr noundef %proc.i, i16 noundef zeroext 2, ptr noundef %proc_pads.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i115.i)
  %tobool9.not.i116.i = icmp eq i32 %call8.i115.i, 0
  br i1 %tobool9.not.i116.i, label %hantro_register_entity.exit121.i, label %if.end5.i117.i.err_rel_entity0.i_crit_edge

if.end5.i117.i.err_rel_entity0.i_crit_edge:       ; preds = %if.end5.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity0.i

hantro_register_entity.exit121.i:                 ; preds = %if.end5.i117.i
  %call12.i118.i = tail call i32 @media_device_register_entity(ptr noundef %mdev1.i, ptr noundef %proc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i118.i)
  %tobool11.not.i = icmp eq i32 %call12.i118.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %hantro_register_entity.exit121.i.err_rel_entity0.i_crit_edge

hantro_register_entity.exit121.i.err_rel_entity0.i_crit_edge: ; preds = %hantro_register_entity.exit121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity0.i

if.end13.i:                                       ; preds = %hantro_register_entity.exit121.i
  %flags14.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %flags14.i, align 4
  %sink.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3
  %obj_type.i122.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %obj_type.i122.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %obj_type.i122.i, align 4
  %info.i123.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3, i32 15
  %46 = ptrtoint ptr %info.i123.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 81, ptr %info.i123.i, align 4
  %47 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %minor.i.i, align 8
  %minor2.i125.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3, i32 15, i32 0, i32 1
  %49 = ptrtoint ptr %minor2.i125.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %minor2.i125.i, align 4
  %50 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdev1.i, align 8
  %call.i128.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %51, i32 noundef 3264, ptr noundef nonnull @.str.46, ptr noundef %name6, ptr noundef nonnull @.str.69) #9
  %tobool.not.i129.i = icmp eq ptr %call.i128.i, null
  br i1 %tobool.not.i129.i, label %if.end13.i.err_rel_entity1.i_crit_edge, label %if.end5.i135.i

if.end13.i.err_rel_entity1.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity1.i

if.end5.i135.i:                                   ; preds = %if.end13.i
  %sink_pad.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 4
  %name6.i131.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %name6.i131.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i128.i, ptr %name6.i131.i, align 4
  %function7.i132.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %function7.i132.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65537, ptr %function7.i132.i, align 4
  %call8.i133.i = tail call i32 @media_entity_pads_init(ptr noundef %sink.i, i16 noundef zeroext 1, ptr noundef %sink_pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i133.i)
  %tobool9.not.i134.i = icmp eq i32 %call8.i133.i, 0
  br i1 %tobool9.not.i134.i, label %hantro_register_entity.exit139.i, label %if.end5.i135.i.err_rel_entity1.i_crit_edge

if.end5.i135.i.err_rel_entity1.i_crit_edge:       ; preds = %if.end5.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity1.i

hantro_register_entity.exit139.i:                 ; preds = %if.end5.i135.i
  %call12.i136.i = tail call i32 @media_device_register_entity(ptr noundef %mdev1.i, ptr noundef %sink.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i136.i)
  %tobool18.not.i = icmp eq i32 %call12.i136.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %hantro_register_entity.exit139.i.err_rel_entity1.i_crit_edge

hantro_register_entity.exit139.i.err_rel_entity1.i_crit_edge: ; preds = %hantro_register_entity.exit139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity1.i

if.end20.i:                                       ; preds = %hantro_register_entity.exit139.i
  %call24.i = tail call i32 @media_create_pad_link(ptr noundef %vdev, i16 noundef zeroext 0, ptr noundef %proc.i, i16 noundef zeroext 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end20.i.err_rel_entity2.i_crit_edge

if.end20.i.err_rel_entity2.i_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_entity2.i

if.end27.i:                                       ; preds = %if.end20.i
  %call30.i = tail call i32 @media_create_pad_link(ptr noundef %proc.i, i16 noundef zeroext 1, ptr noundef %sink.i, i16 noundef zeroext 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end27.i.err_rm_links0.i_crit_edge

if.end27.i.err_rm_links0.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_links0.i

if.end33.i:                                       ; preds = %if.end27.i
  %54 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %minor.i.i, align 8
  %call35.i = tail call ptr @media_devnode_create(ptr noundef %mdev1.i, i32 noundef 512, i32 noundef 0, i32 noundef 81, i32 noundef %55) #9
  %intf_devnode.i = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call35.i, ptr %intf_devnode.i, align 8
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %if.end33.i.err_rm_links1.i_crit_edge, label %if.end39.i

if.end33.i.err_rm_links1.i_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_links1.i

if.end39.i:                                       ; preds = %if.end33.i
  %call43.i = tail call ptr @media_create_intf_link(ptr noundef %vdev, ptr noundef nonnull %call35.i, i32 noundef 3) #9
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.end39.i.err_rm_devnode.i_crit_edge, label %if.end46.i

if.end39.i.err_rm_devnode.i_crit_edge:            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_devnode.i

if.end46.i:                                       ; preds = %if.end39.i
  %57 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf_devnode.i, align 8
  %call50.i = tail call ptr @media_create_intf_link(ptr noundef %sink.i, ptr noundef %58, i32 noundef 3) #9
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %if.end46.i.err_rm_devnode.i_crit_edge, label %do.end39

if.end46.i.err_rm_devnode.i_crit_edge:            ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rm_devnode.i

err_rm_devnode.i:                                 ; preds = %if.end46.i.err_rm_devnode.i_crit_edge, %if.end39.i.err_rm_devnode.i_crit_edge
  %59 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intf_devnode.i, align 8
  tail call void @media_devnode_remove(ptr noundef %60) #9
  br label %err_rm_links1.i

err_rm_links1.i:                                  ; preds = %err_rm_devnode.i, %if.end33.i.err_rm_links1.i_crit_edge
  tail call void @media_entity_remove_links(ptr noundef %sink.i) #9
  br label %err_rm_links0.i

err_rm_links0.i:                                  ; preds = %err_rm_links1.i, %if.end27.i.err_rm_links0.i_crit_edge
  %ret.2.i = phi i32 [ %call30.i, %if.end27.i.err_rm_links0.i_crit_edge ], [ -12, %err_rm_links1.i ]
  tail call void @media_entity_remove_links(ptr noundef %proc.i) #9
  tail call void @media_entity_remove_links(ptr noundef %vdev) #9
  br label %err_rel_entity2.i

err_rel_entity2.i:                                ; preds = %err_rm_links0.i, %if.end20.i.err_rel_entity2.i_crit_edge
  %ret.3.i = phi i32 [ %call24.i, %if.end20.i.err_rel_entity2.i_crit_edge ], [ %ret.2.i, %err_rm_links0.i ]
  tail call void @media_device_unregister_entity(ptr noundef %sink.i) #9
  br label %err_rel_entity1.i

err_rel_entity1.i:                                ; preds = %err_rel_entity2.i, %hantro_register_entity.exit139.i.err_rel_entity1.i_crit_edge, %if.end5.i135.i.err_rel_entity1.i_crit_edge, %if.end13.i.err_rel_entity1.i_crit_edge
  %ret.4.i = phi i32 [ %call12.i136.i, %hantro_register_entity.exit139.i.err_rel_entity1.i_crit_edge ], [ %ret.3.i, %err_rel_entity2.i ], [ %call8.i133.i, %if.end5.i135.i.err_rel_entity1.i_crit_edge ], [ -12, %if.end13.i.err_rel_entity1.i_crit_edge ]
  tail call void @media_device_unregister_entity(ptr noundef %proc.i) #9
  br label %err_rel_entity0.i

err_rel_entity0.i:                                ; preds = %err_rel_entity1.i, %hantro_register_entity.exit121.i.err_rel_entity0.i_crit_edge, %if.end5.i117.i.err_rel_entity0.i_crit_edge, %if.end.i.i.err_rel_entity0.i_crit_edge
  %ret.5.i = phi i32 [ %call12.i118.i, %hantro_register_entity.exit121.i.err_rel_entity0.i_crit_edge ], [ %ret.4.i, %err_rel_entity1.i ], [ %call8.i115.i, %if.end5.i117.i.err_rel_entity0.i_crit_edge ], [ -12, %if.end.i.i.err_rel_entity0.i_crit_edge ]
  tail call void @media_device_unregister_entity(ptr noundef %vdev) #9
  br label %do.end30

do.end30:                                         ; preds = %err_rel_entity0.i, %hantro_register_entity.exit.i.do.end30_crit_edge, %if.end5.i.i.do.end30_crit_edge, %if.end24.do.end30_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end24.do.end30_crit_edge ], [ %call8.i.i, %if.end5.i.i.do.end30_crit_edge ], [ %call12.i.i, %hantro_register_entity.exit.i.do.end30_crit_edge ], [ %ret.5.i, %err_rel_entity0.i ]
  %name33 = getelementptr inbounds %struct.v4l2_device, ptr %vpu, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name33) #12
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  br label %cleanup

do.end39:                                         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %vpu, i32 0, i32 4
  %num = getelementptr inbounds %struct.hantro_func, ptr %call.i, i32 0, i32 1, i32 16
  %61 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num, align 4
  %conv = zext i16 %62 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name42, ptr noundef %name6, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end30, %do.end18, %do.end
  %retval.0 = phi i32 [ %call.i83, %do.end18 ], [ %retval.0.i.ph, %do.end30 ], [ 0, %do.end39 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_open(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #9
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 18888, i32 noundef 3520, i32 noundef 3) #13
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -8
  %2 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call1.i.i.i, align 4096
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.err_ctx_free_crit_edge [
    i32 16391, label %if.end.if.end14_crit_edge
    i32 16392, label %if.then7
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.err_ctx_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ctx_free

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %.sink72 = phi i32 [ -65536, %if.then7 ], [ 65535, %if.end.if.end14_crit_edge ]
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.end.if.end14_crit_edge ]
  %variant8 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %variant8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant8, align 8
  %codec9 = getelementptr inbounds %struct.hantro_variant, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %codec9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec9, align 4
  %and10 = and i32 %9, %.sink72
  %is_encoder11 = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %is_encoder11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %is_encoder11, align 4
  %m2m_dev = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev, align 8
  %call15 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %12, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @queue_init) #9
  %fh = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 1
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %m2m_ctx, align 64
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call15 to i32
  br label %err_ctx_free

if.end23:                                         ; preds = %if.end14
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #9
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #9
  tail call void @hantro_reset_fmts(ptr noundef nonnull %call1.i.i.i) #9
  %ctrl_handler.i = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 9
  %call.i67 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 23, ptr noundef nonnull @hantro_ctrls_setup._key, ptr noundef nonnull @.str.60) #9
  %error.i = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 9, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23
  %i.02.i = phi i32 [ 0, %if.end23 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x %struct.hantro_ctrl], ptr @controls, i32 0, i32 %i.02.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %17, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %cfg.i = getelementptr [23 x %struct.hantro_ctrl], ptr @controls, i32 0, i32 %i.02.i, i32 1
  %call3.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef %cfg.i, ptr noundef null) #9
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.end.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr [23 x %struct.hantro_ctrl], ptr @controls, i32 0, i32 %i.02.i, i32 1, i32 2
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 507, i32 noundef %21, i32 noundef %19) #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #9
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i, align 4
  br label %hantro_ctrls_setup.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #9
  br label %hantro_ctrls_setup.exit

hantro_ctrls_setup.exit:                          ; preds = %for.end.i, %do.end.i
  %retval.0.i = phi i32 [ %23, %do.end.i ], [ %call18.i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool28.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool28.not, label %if.end31, label %do.end

do.end:                                           ; preds = %hantro_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 566) #12
  tail call void @v4l2_fh_del(ptr noundef %fh) #9
  tail call void @v4l2_fh_exit(ptr noundef %fh) #9
  br label %err_ctx_free

if.end31:                                         ; preds = %hantro_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler33 = getelementptr inbounds %struct.hantro_ctx, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %ctrl_handler33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctrl_handler.i, ptr %ctrl_handler33, align 16
  br label %cleanup

err_ctx_free:                                     ; preds = %do.end, %if.then19, %if.end.err_ctx_free_crit_edge
  %ret.0 = phi i32 [ %14, %if.then19 ], [ %retval.0.i, %do.end ], [ -19, %if.end.err_ctx_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_ctx_free, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_ctx_free ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_release(ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %3) #9
  tail call void @v4l2_fh_del(ptr noundef %1) #9
  tail call void @v4l2_fh_exit(ptr noundef %1) #9
  %ctrl_handler = getelementptr i8, ptr %1, i32 596
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hantro_queue_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %dma_attrs = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 3
  %5 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 144, ptr %dma_attrs, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %timestamp_flags, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %vpu_mutex = getelementptr inbounds %struct.hantro_dev, ptr %9, i32 0, i32 13
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vpu_mutex, ptr %lock, align 4
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev3, align 4
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %15 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_encoder, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.else, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bidirectional = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %18 = ptrtoint ptr %bidirectional to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load7 = load i16, ptr %bidirectional, align 4
  %bf.set9 = or i16 %bf.load7, -32768
  store i16 %bf.set9, ptr %bidirectional, align 4
  %dma_attrs11 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 3
  %19 = ptrtoint ptr %dma_attrs11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 144, ptr %dma_attrs11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end.if.end12_crit_edge
  %vb2_vmalloc_memops.sink = phi ptr [ @vb2_dma_contig_memops, %if.else ], [ @vb2_vmalloc_memops, %if.end.if.end12_crit_edge ]
  %20 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vb2_vmalloc_memops.sink, ptr %20, align 4
  %22 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %dst_vq, align 4
  %io_modes14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %23 = ptrtoint ptr %io_modes14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 17, ptr %io_modes14, align 4
  %drv_priv15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %24 = ptrtoint ptr %drv_priv15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %priv, ptr %drv_priv15, align 4
  %ops16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %25 = ptrtoint ptr %ops16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hantro_queue_ops, ptr %ops16, align 4
  %buf_struct_size17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %26 = ptrtoint ptr %buf_struct_size17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 752, ptr %buf_struct_size17, align 4
  %timestamp_flags18 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %27 = ptrtoint ptr %timestamp_flags18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16384, ptr %timestamp_flags18, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %vpu_mutex20 = getelementptr inbounds %struct.hantro_dev, ptr %29, i32 0, i32 13
  %lock21 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %30 = ptrtoint ptr %lock21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vpu_mutex20, ptr %lock21, align 4
  %31 = load ptr, ptr %priv, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev25 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %34 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %dev25, align 4
  %call26 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end12 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_reset_fmts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_jpeg_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %2 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 290, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %id5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291459, i32 %8)
  %cond = icmp eq i32 %8, 10291459
  br i1 %cond, label %sw.bb, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  %jpeg_quality = getelementptr i8, ptr %1, i32 184
  %11 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %jpeg_quality, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hantro_try_ctrl(ptr nocapture noundef readonly %ctrl) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %entry.if.end55_crit_edge [
    i32 10750210, label %if.then
    i32 10030320, label %if.then19
    i32 10750508, label %if.then43
  ]

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

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
  %cmp1 = icmp ugt i8 %6, 1
  br i1 %cmp1, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

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
  br i1 %12, label %if.end.if.end55_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then19:                                        ; preds = %entry
  %p_new21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %13 = ptrtoint ptr %p_new21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_new21, align 8
  %bit_depth_luma_minus822 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bit_depth_luma_minus822 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bit_depth_luma_minus822, align 4
  %bit_depth_chroma_minus824 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %bit_depth_chroma_minus824 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bit_depth_chroma_minus824, align 1
  %19 = or i8 %18, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %if.then19.if.end55_crit_edge, label %if.then19.return_crit_edge

if.then19.return_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then19.if.end55_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then43:                                        ; preds = %entry
  %p_new44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %21 = ptrtoint ptr %p_new44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_new44, align 8
  %profile = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %profile, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp46.not = icmp eq i8 %24, 0
  br i1 %cmp46.not, label %if.then43.if.end55_crit_edge, label %if.then43.return_crit_edge

if.then43.return_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %if.then43.if.end55_crit_edge, %if.then19.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  br label %return

return:                                           ; preds = %if.end55, %if.then43.return_crit_edge, %if.then19.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.3 = phi i32 [ 0, %if.end55 ], [ -22, %if.then43.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.then19.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_hevc_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %2 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66, i32 noundef 310, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %id5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10031616, i32 %8)
  %cond = icmp eq i32 %8, 10031616
  br i1 %cond, label %sw.bb, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  %hevc_hdr_skip_length = getelementptr i8, ptr %1, i32 1144
  %11 = ptrtoint ptr %hevc_hdr_skip_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hevc_hdr_skip_length, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_devnode_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_create_intf_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_devnode_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_remove_links(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hantro_remove_func(ptr nocapture noundef readonly %vpu, i32 noundef %funcid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16391, i32 %funcid)
  %cmp = icmp eq i32 %funcid, 16391
  %encoder = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 3
  %decoder = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 4
  %func.0.in = select i1 %cmp, ptr %encoder, ptr %decoder
  %0 = ptrtoint ptr %func.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %func.0 = load ptr, ptr %func.0.in, align 4
  %tobool.not = icmp eq ptr %func.0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf_devnode.i = getelementptr inbounds %struct.hantro_func, ptr %func.0, i32 0, i32 7
  %1 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf_devnode.i, align 8
  tail call void @media_devnode_remove(ptr noundef %2) #9
  %sink.i = getelementptr inbounds %struct.hantro_func, ptr %func.0, i32 0, i32 3
  tail call void @media_entity_remove_links(ptr noundef %sink.i) #9
  %proc.i = getelementptr inbounds %struct.hantro_func, ptr %func.0, i32 0, i32 5
  tail call void @media_entity_remove_links(ptr noundef %proc.i) #9
  %vdev.i = getelementptr inbounds %struct.hantro_func, ptr %func.0, i32 0, i32 1
  tail call void @media_entity_remove_links(ptr noundef %vdev.i) #9
  tail call void @media_device_unregister_entity(ptr noundef %sink.i) #9
  tail call void @media_device_unregister_entity(ptr noundef %proc.i) #9
  tail call void @media_device_unregister_entity(ptr noundef %vdev.i) #9
  tail call void @video_unregister_device(ptr noundef %vdev.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %runtime_resume = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime_resume, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 %5(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !149, !150, !151, !153, !155, !157, !159, !160, !161, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug300, !4, !"__UNIQUE_ID_debug300", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 35, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 119, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hantro_watchdog._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @hantro_watchdog._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_hantro_vpu__301_1114_hantro_driver_init6, !12, !"__initcall__kmod_hantro_vpu__301_1114_hantro_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1114, i32 1}
!13 = !{ptr @__exitcall_hantro_driver_exit, !12, !"__exitcall_hantro_driver_exit", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file302, !15, !"__UNIQUE_ID_file302", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1116, i32 1}
!16 = !{ptr @__UNIQUE_ID_license303, !15, !"__UNIQUE_ID_license303", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author304, !18, !"__UNIQUE_ID_author304", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1117, i32 1}
!19 = !{ptr @__UNIQUE_ID_author305, !20, !"__UNIQUE_ID_author305", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1118, i32 1}
!21 = !{ptr @__UNIQUE_ID_author306, !22, !"__UNIQUE_ID_author306", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1119, i32 1}
!23 = !{ptr @__UNIQUE_ID_description307, !24, !"__UNIQUE_ID_description307", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1120, i32 1}
!25 = !{ptr @hantro_debug, !26, !"hantro_debug", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 33, i32 5}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1109, i32 14}
!30 = !{ptr @hantro_driver, !31, !"hantro_driver", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1105, i32 31}
!32 = !{ptr @hantro_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 887, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hantro_probe.__key.5, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 888, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hantro_probe.__key.7, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 893, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hantro_probe.__key.9, !39, !"__key", i1 false, i1 false}
!42 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 947, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hantro_probe._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @hantro_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 967, i32 15}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 977, i32 4}
!54 = !{ptr @hantro_probe._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hantro_probe._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 986, i32 4}
!58 = !{ptr @hantro_probe._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hantro_probe._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 997, i32 3}
!62 = !{ptr @hantro_probe._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hantro_probe._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1003, i32 3}
!66 = !{ptr @hantro_probe._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hantro_probe._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1009, i32 3}
!70 = !{ptr @hantro_probe._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @hantro_probe._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1016, i32 3}
!74 = !{ptr @hantro_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hantro_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1023, i32 30}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1031, i32 3}
!80 = !{ptr @hantro_probe._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hantro_probe._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1037, i32 3}
!84 = !{ptr @hantro_probe._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @hantro_probe._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1043, i32 3}
!88 = !{ptr @hantro_probe._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @hantro_probe._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @vpu_m2m_ops, !91, !"vpu_m2m_ops", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 189, i32 34}
!92 = !{ptr @hantro_m2m_media_ops, !93, !"hantro_m2m_media_ops", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 868, i32 38}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 778, i32 3}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @hantro_add_func._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @hantro_add_func._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 792, i32 41}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 793, i32 47}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 793, i32 55}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 804, i32 3}
!107 = !{ptr @hantro_add_func._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @hantro_add_func._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 810, i32 3}
!111 = !{ptr @hantro_add_func._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @hantro_add_func._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 815, i32 2}
!115 = !{ptr @hantro_add_func._entry.55, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @hantro_add_func._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @hantro_fops, !118, !"hantro_fops", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 599, i32 42}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 566, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hantro_open._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @hantro_open._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @hantro_ctrls_setup._key, !125, !"_key", i1 false, i1 false}
!125 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 496, i32 2}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 505, i32 4}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hantro_ctrls_setup._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @hantro_ctrls_setup._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 469, i32 12}
!134 = !{ptr @controls, !135, !"controls", i1 false, i1 false}
!135 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 335, i32 33}
!136 = !{ptr @hantro_jpeg_ctrl_ops, !137, !"hantro_jpeg_ctrl_ops", i1 false, i1 false}
!137 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 327, i32 35}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 290, i32 2}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @hantro_jpeg_s_ctrl._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @hantro_jpeg_s_ctrl._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @hantro_ctrl_ops, !144, !"hantro_ctrl_ops", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 323, i32 35}
!145 = !{ptr @hantro_hevc_ctrl_ops, !146, !"hantro_hevc_ctrl_ops", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 331, i32 35}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 310, i32 2}
!149 = !{ptr @hantro_hevc_s_ctrl._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @hantro_hevc_s_ctrl._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 674, i32 57}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 682, i32 50}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 689, i32 50}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1072, i32 2}
!159 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @hantro_remove._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @hantro_remove._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @of_hantro_match, !163, !"of_hantro_match", i1 false, i1 false}
!163 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 608, i32 34}
!164 = !{ptr @hantro_pm_ops, !165, !"hantro_pm_ops", i1 false, i1 false}
!165 = !{!"../drivers/staging/media/hantro/hantro_drv.c", i32 1099, i32 32}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i8 0, i8 2}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{i64 2148266317}
!178 = !{i64 751140, i64 751165, i64 751187, i64 751203, i64 751215, i64 751235, i64 751259, i64 751275, i64 751287}
!179 = !{i64 2148266505}
