; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.mtk_jpeg_variant = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mtk_jpeg_fmt = type { i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mtk_jpeg_dev = type { %struct.mutex, %struct.spinlock, ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_jpeg_ctx = type { ptr, %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data, %struct.v4l2_fh, i32, i8, i8, i8, %struct.v4l2_ctrl_handler }
%struct.mtk_jpeg_q_data = type { ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_rect }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.mtk_jpeg_src_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.mtk_jpeg_dec_param }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.mtk_jpeg_dec_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i8 }
%struct.mtk_jpeg_bs = type { i32, i32, i32 }
%struct.mtk_jpeg_fb = type { [3 x i32], i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@__param_str_debug = internal constant [15 x i8] c"mtk_jpeg.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [28 x i8] c"mtk_jpeg.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_mtk_jpeg__320_1566_mtk_jpeg_driver_init6 = internal global ptr @mtk_jpeg_driver_init, section ".initcall6.init", align 4
@mtk_jpeg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_jpeg_probe, ptr @mtk_jpeg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_jpeg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_jpeg_driver_exit = internal global ptr @mtk_jpeg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [48 x i8] c"mtk_jpeg.description=MediaTek JPEG codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [55 x i8] c"mtk_jpeg.file=drivers/media/platform/mtk-jpeg/mtk_jpeg\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [24 x i8] c"mtk_jpeg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-jpeg\00", [23 x i8] zeroinitializer }, align 32
@mtk_jpeg_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-jpgdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-jpgdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-jpgenc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_jpeg_drvdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_jpeg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_jpeg_suspend, ptr @mtk_jpeg_resume, ptr @mtk_jpeg_suspend, ptr @mtk_jpeg_resume, ptr @mtk_jpeg_suspend, ptr @mtk_jpeg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_pm_suspend, ptr @mtk_jpeg_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&jpeg->lock\00", [20 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&jpeg->hw_lock\00", [17 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&jpeg->job_timeout_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&jpeg->job_timeout_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1371, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request jpeg_irq %d (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_jpeg_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr = internal global ptr @mtk_jpeg_probe._entry, section ".printk_index", align 4
@mtk_jpeg_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1377, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init clk, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr.15 = internal global ptr @mtk_jpeg_probe._entry.13, section ".printk_index", align 4
@mtk_jpeg_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 1383, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr.18 = internal global ptr @mtk_jpeg_probe._entry.16, section ".printk_index", align 4
@mtk_jpeg_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr.21 = internal global ptr @mtk_jpeg_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mtk_jpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @mtk_jpeg_open, ptr @mtk_jpeg_release }, [60 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.10, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr.25 = internal global ptr @mtk_jpeg_probe._entry.23, section ".printk_index", align 4
@mtk_jpeg_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.10, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: %s device registered as /dev/video%d (%d,%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@mtk_jpeg_probe._entry_ptr.28 = internal global ptr @mtk_jpeg_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,larb\00", [18 x i8] zeroinitializer }, align 32
@mtk_jpeg_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.10, i32 1308, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get jpeg clock:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_jpeg_clk_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_jpeg_clk_init._entry_ptr = internal global ptr @mtk_jpeg_clk_init._entry, section ".printk_index", align 4
@mtk_jpeg_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.10, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to setup jpeg enc controls\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_jpeg_open\00", [18 x i8] zeroinitializer }, align 32
@mtk_jpeg_open._entry_ptr = internal global ptr @mtk_jpeg_open._entry, section ".printk_index", align 4
@mtk_jpeg_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mtk_jpeg_core:1239:(&ctx->ctrl_hdl)->_lock\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mtk_jpeg_enc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vidioc_jpeg_enc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mtk_jpeg_core:175:(handler)->_lock\00", [61 x i8] zeroinitializer }, align 32
@mt8173_jpeg_drvdata = internal constant { %struct.mtk_jpeg_variant, [48 x i8] } { %struct.mtk_jpeg_variant { ptr @mt8173_jpeg_dec_clocks, i32 2, ptr @mtk_jpeg_dec_formats, i32 3, ptr @mtk_jpeg_dec_qops, ptr @mtk_jpeg_dec_irq, ptr @mtk_jpeg_dec_reset, ptr @mtk_jpeg_dec_m2m_ops, ptr @.str.36, ptr @mtk_jpeg_dec_ioctl_ops, i32 1195724874, i32 842091865 }, [48 x i8] zeroinitializer }, align 32
@mtk_jpeg_drvdata = internal constant { %struct.mtk_jpeg_variant, [48 x i8] } { %struct.mtk_jpeg_variant { ptr @mtk_jpeg_clocks, i32 1, ptr @mtk_jpeg_enc_formats, i32 5, ptr @mtk_jpeg_enc_qops, ptr @mtk_jpeg_enc_irq, ptr @mtk_jpeg_enc_reset, ptr @mtk_jpeg_enc_m2m_ops, ptr @.str.83, ptr @mtk_jpeg_enc_ioctl_ops, i32 1448695129, i32 1195724874 }, [48 x i8] zeroinitializer }, align 32
@mt8173_jpeg_dec_clocks = internal global { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.37, ptr null }, %struct.clk_bulk_data { ptr @.str.38, ptr null }], [16 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_formats = internal global { [3 x %struct.mtk_jpeg_fmt], [88 x i8] } { [3 x %struct.mtk_jpeg_fmt] [%struct.mtk_jpeg_fmt { i32 1195724874, i32 0, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, i32 1, i32 0, i32 0, i32 1 }, %struct.mtk_jpeg_fmt { i32 842091865, i32 0, [8 x i32] [i32 4, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 5, i32 4, i32 2 }, %struct.mtk_jpeg_fmt { i32 909200729, i32 0, [8 x i32] [i32 4, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 5, i32 3, i32 2 }], [88 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mtk_jpeg_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @mtk_jpeg_buf_prepare, ptr null, ptr null, ptr null, ptr @mtk_jpeg_dec_stop_streaming, ptr @mtk_jpeg_dec_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @mtk_jpeg_dec_device_run, ptr @mtk_jpeg_dec_job_ready, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk-jpeg-dec\00", [19 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mtk_jpeg_querycap, ptr @mtk_jpeg_enum_fmt_vid_cap, ptr null, ptr @mtk_jpeg_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_g_fmt_vid_mplane, ptr @mtk_jpeg_g_fmt_vid_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_s_fmt_vid_cap_mplane, ptr @mtk_jpeg_s_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_try_fmt_vid_cap_mplane, ptr @mtk_jpeg_try_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_dec_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jpgdec-smi\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jpgdec\00", [25 x i8] zeroinitializer }, align 32
@mtk_jpeg_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.10, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: (%d) buf_req count=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_jpeg_queue_setup\00", [43 x i8] zeroinitializer }, align 32
@mtk_jpeg_queue_setup._entry_ptr = internal global ptr @mtk_jpeg_queue_setup._entry, section ".printk_index", align 4
@mtk_jpeg_queue_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.10, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: sizeimage[%d]=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_jpeg_queue_setup._entry_ptr.43 = internal global ptr @mtk_jpeg_queue_setup._entry.41, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mtk_jpeg_set_queue_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.10, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: set_parse cap:%c%c%c%c pic(%u, %u), buf(%u, %u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_jpeg_set_queue_data\00", [40 x i8] zeroinitializer }, align 32
@mtk_jpeg_set_queue_data._entry_ptr = internal global ptr @mtk_jpeg_set_queue_data._entry, section ".printk_index", align 4
@mtk_jpeg_dec_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.10, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: (%d) buf_q id=%d, vb=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_jpeg_dec_buf_queue\00", [41 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_buf_queue._entry_ptr = internal global ptr @mtk_jpeg_dec_buf_queue._entry, section ".printk_index", align 4
@mtk_jpeg_dec_buf_queue._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.10, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Header invalid.\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_buf_queue._entry_ptr.51 = internal global ptr @mtk_jpeg_dec_buf_queue._entry.49, section ".printk_index", align 4
@mtk_jpeg_queue_src_chg_event.ev_src_ch = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.10, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Context is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_jpeg_dec_irq\00", [47 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_irq._entry_ptr = internal global ptr @mtk_jpeg_dec_irq._entry, section ".printk_index", align 4
@mtk_jpeg_dec_irq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.10, i32 1152, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"decode failed\0A\00", [17 x i8] zeroinitializer }, align 32
@mtk_jpeg_dec_irq._entry_ptr.56 = internal global ptr @mtk_jpeg_dec_irq._entry.54, section ".printk_index", align 4
@mtk_jpeg_check_resolution_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.10, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Picture size change\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtk_jpeg_check_resolution_change\00", [63 x i8] zeroinitializer }, align 32
@mtk_jpeg_check_resolution_change._entry_ptr = internal global ptr @mtk_jpeg_check_resolution_change._entry, section ".printk_index", align 4
@mtk_jpeg_check_resolution_change._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.10, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: format change\0A\00", [43 x i8] zeroinitializer }, align 32
@mtk_jpeg_check_resolution_change._entry_ptr.61 = internal global ptr @mtk_jpeg_check_resolution_change._entry.59, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mtk_jpeg_set_dec_dst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.10, i32 893, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"plane number mismatch (%u != %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_jpeg_set_dec_dst\00", [43 x i8] zeroinitializer }, align 32
@mtk_jpeg_set_dec_dst._entry_ptr = internal global ptr @mtk_jpeg_set_dec_dst._entry, section ".printk_index", align 4
@mtk_jpeg_set_dec_dst._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.10, i32 902, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"buffer size is underflow (%lu < %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_jpeg_set_dec_dst._entry_ptr.66 = internal global ptr @mtk_jpeg_set_dec_dst._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@mtk_jpeg_g_fmt_vid_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.10, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: (%d) g_fmt:%c%c%c%c wxh:%ux%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_jpeg_g_fmt_vid_mplane\00", [38 x i8] zeroinitializer }, align 32
@mtk_jpeg_g_fmt_vid_mplane._entry_ptr = internal global ptr @mtk_jpeg_g_fmt_vid_mplane._entry, section ".printk_index", align 4
@mtk_jpeg_g_fmt_vid_mplane._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.10, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: plane[%d] bpl=%u, size=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_jpeg_g_fmt_vid_mplane._entry_ptr.72 = internal global ptr @mtk_jpeg_g_fmt_vid_mplane._entry.70, section ".printk_index", align 4
@mtk_jpeg_s_fmt_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.10, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: queue busy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_jpeg_s_fmt_mplane\00", [42 x i8] zeroinitializer }, align 32
@mtk_jpeg_s_fmt_mplane._entry_ptr = internal global ptr @mtk_jpeg_s_fmt_mplane._entry, section ".printk_index", align 4
@mtk_jpeg_s_fmt_mplane._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.10, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: (%d) s_fmt:%c%c%c%c wxh:%ux%u\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_jpeg_s_fmt_mplane._entry_ptr.77 = internal global ptr @mtk_jpeg_s_fmt_mplane._entry.75, section ".printk_index", align 4
@mtk_jpeg_s_fmt_mplane._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.74, ptr @.str.10, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_jpeg_s_fmt_mplane._entry_ptr.79 = internal global ptr @mtk_jpeg_s_fmt_mplane._entry.78, section ".printk_index", align 4
@mtk_jpeg_try_fmt_vid_cap_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.10, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: (%d) try_fmt:%c%c%c%c\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mtk_jpeg_try_fmt_vid_cap_mplane\00", [32 x i8] zeroinitializer }, align 32
@mtk_jpeg_try_fmt_vid_cap_mplane._entry_ptr = internal global ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry, section ".printk_index", align 4
@mtk_jpeg_try_fmt_vid_out_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.82, ptr @.str.10, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mtk_jpeg_try_fmt_vid_out_mplane\00", [32 x i8] zeroinitializer }, align 32
@mtk_jpeg_try_fmt_vid_out_mplane._entry_ptr = internal global ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry, section ".printk_index", align 4
@mtk_jpeg_clocks = internal global { [1 x %struct.clk_bulk_data], [24 x i8] } { [1 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.84, ptr null }], [24 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_formats = internal global { [5 x %struct.mtk_jpeg_fmt], [104 x i8] } { [5 x %struct.mtk_jpeg_fmt] [%struct.mtk_jpeg_fmt { i32 1195724874, i32 0, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, i32 1, i32 0, i32 0, i32 2 }, %struct.mtk_jpeg_fmt { i32 842091854, i32 2, [8 x i32] [i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 4, i32 4, i32 1 }, %struct.mtk_jpeg_fmt { i32 825380174, i32 3, [8 x i32] [i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 2, i32 4, i32 4, i32 1 }, %struct.mtk_jpeg_fmt { i32 1448695129, i32 0, [8 x i32] [i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 5, i32 3, i32 1 }, %struct.mtk_jpeg_fmt { i32 1431918169, i32 1, [8 x i32] [i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1, i32 5, i32 3, i32 1 }], [104 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mtk_jpeg_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @mtk_jpeg_buf_prepare, ptr null, ptr null, ptr null, ptr @mtk_jpeg_enc_stop_streaming, ptr @mtk_jpeg_enc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @mtk_jpeg_enc_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk-jpeg-enc\00", [19 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mtk_jpeg_querycap, ptr @mtk_jpeg_enum_fmt_vid_cap, ptr null, ptr @mtk_jpeg_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_g_fmt_vid_mplane, ptr @mtk_jpeg_g_fmt_vid_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_s_fmt_vid_cap_mplane, ptr @mtk_jpeg_s_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_try_fmt_vid_cap_mplane, ptr @mtk_jpeg_try_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_enc_g_selection, ptr @mtk_jpeg_enc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_jpeg_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jpgenc\00", [25 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.85, ptr @.str.10, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_jpeg_enc_buf_queue\00", [41 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_buf_queue._entry_ptr = internal global ptr @mtk_jpeg_enc_buf_queue._entry, section ".printk_index", align 4
@mtk_jpeg_enc_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.86, ptr @.str.10, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_jpeg_enc_done\00", [46 x i8] zeroinitializer }, align 32
@mtk_jpeg_enc_done._entry_ptr = internal global ptr @mtk_jpeg_enc_done._entry, section ".printk_index", align 4
@mtk_jpeg_clk_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.10, i32 1060, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mtk_smi_larb_get larbvdec fail %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_jpeg_clk_on\00", [16 x i8] zeroinitializer }, align 32
@mtk_jpeg_clk_on._entry_ptr = internal global ptr @mtk_jpeg_clk_on._entry, section ".printk_index", align 4
@mtk_jpeg_clk_on._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.10, i32 1065, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to open jpeg clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_jpeg_clk_on._entry_ptr.91 = internal global ptr @mtk_jpeg_clk_on._entry.89, section ".printk_index", align 4
@switch.table.mtk_jpeg_g_fmt_vid_mplane = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -424, i32 -424, i32 -212, i32 -424, i32 -212, i32 -424, i32 -424, i32 -212, i32 -424, i32 -212, i32 -424, i32 -212, i32 -424], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_jpeg_dec_g_selection = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -420, i32 -420, i32 -208, i32 -208], [16 x i8] zeroinitializer }, align 32
@switch.table.mtk_jpeg_dec_g_selection.92 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -416, i32 -416, i32 -204, i32 -204], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10291458, i64 10291459, i64 10291460]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.94 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.95 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.96 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 115, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"mtk_jpeg_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1556, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1560, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"mtk_jpeg_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1538, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"mtk_jpeg_pm_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1503, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1351, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1352, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1355, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1370, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1377, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1383, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1391, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1402, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"mtk_jpeg_fops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1269, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1415, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1420, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1293, i32 46 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1308, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1235, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1239, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"mtk_jpeg_enc_ctrl_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 166, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 175, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"mt8173_jpeg_drvdata\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1508, i32 38 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"mtk_jpeg_drvdata\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1523, i32 38 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"mt8173_jpeg_dec_clocks\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1278, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"mtk_jpeg_dec_formats\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 80, i32 28 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"mtk_jpeg_dec_qops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 856, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"mtk_jpeg_dec_m2m_ops\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1015, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1517, i32 14 }
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"mtk_jpeg_dec_ioctl_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 619, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1279, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1280, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 656, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 673, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 1163, i32 7 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 752, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 781, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 794, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [10 x i8] c"ev_src_ch\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 495, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1140, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1152, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 713, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 722, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 892, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 899, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 141, i32 49 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 331, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 345, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 428, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 444, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 458, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 368, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 397, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"mtk_jpeg_clocks\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1283, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant [21 x i8] c"mtk_jpeg_enc_formats\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 32, i32 28 }
@___asan_gen_.405 = private unnamed_addr constant [18 x i8] c"mtk_jpeg_enc_qops\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 865, i32 29 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"mtk_jpeg_enc_m2m_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1011, i32 34 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1532, i32 14 }
@___asan_gen_.414 = private unnamed_addr constant [23 x i8] c"mtk_jpeg_enc_ioctl_ops\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 592, i32 36 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1284, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 767, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1084, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1060, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private constant [51 x i8] c"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 1065, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [39 x i8] c"switch.table.mtk_jpeg_g_fmt_vid_mplane\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_jpeg_dec_g_selection\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_jpeg_dec_g_selection.92\00", align 1
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_mtk_jpeg_driver_exit, ptr @__initcall__kmod_mtk_jpeg__320_1566_mtk_jpeg_driver_init6, ptr @__param_debug, ptr @mtk_jpeg_check_resolution_change._entry, ptr @mtk_jpeg_check_resolution_change._entry.59, ptr @mtk_jpeg_check_resolution_change._entry_ptr, ptr @mtk_jpeg_check_resolution_change._entry_ptr.61, ptr @mtk_jpeg_clk_init._entry, ptr @mtk_jpeg_clk_init._entry_ptr, ptr @mtk_jpeg_clk_on._entry, ptr @mtk_jpeg_clk_on._entry.89, ptr @mtk_jpeg_clk_on._entry_ptr, ptr @mtk_jpeg_clk_on._entry_ptr.91, ptr @mtk_jpeg_dec_buf_queue._entry, ptr @mtk_jpeg_dec_buf_queue._entry.49, ptr @mtk_jpeg_dec_buf_queue._entry_ptr, ptr @mtk_jpeg_dec_buf_queue._entry_ptr.51, ptr @mtk_jpeg_dec_irq._entry, ptr @mtk_jpeg_dec_irq._entry.54, ptr @mtk_jpeg_dec_irq._entry_ptr, ptr @mtk_jpeg_dec_irq._entry_ptr.56, ptr @mtk_jpeg_driver_exit, ptr @mtk_jpeg_enc_buf_queue._entry, ptr @mtk_jpeg_enc_buf_queue._entry_ptr, ptr @mtk_jpeg_enc_done._entry, ptr @mtk_jpeg_enc_done._entry_ptr, ptr @mtk_jpeg_g_fmt_vid_mplane._entry, ptr @mtk_jpeg_g_fmt_vid_mplane._entry.70, ptr @mtk_jpeg_g_fmt_vid_mplane._entry_ptr, ptr @mtk_jpeg_g_fmt_vid_mplane._entry_ptr.72, ptr @mtk_jpeg_open._entry, ptr @mtk_jpeg_open._entry_ptr, ptr @mtk_jpeg_probe._entry, ptr @mtk_jpeg_probe._entry.13, ptr @mtk_jpeg_probe._entry.16, ptr @mtk_jpeg_probe._entry.19, ptr @mtk_jpeg_probe._entry.23, ptr @mtk_jpeg_probe._entry.26, ptr @mtk_jpeg_probe._entry_ptr, ptr @mtk_jpeg_probe._entry_ptr.15, ptr @mtk_jpeg_probe._entry_ptr.18, ptr @mtk_jpeg_probe._entry_ptr.21, ptr @mtk_jpeg_probe._entry_ptr.25, ptr @mtk_jpeg_probe._entry_ptr.28, ptr @mtk_jpeg_queue_setup._entry, ptr @mtk_jpeg_queue_setup._entry.41, ptr @mtk_jpeg_queue_setup._entry_ptr, ptr @mtk_jpeg_queue_setup._entry_ptr.43, ptr @mtk_jpeg_s_fmt_mplane._entry, ptr @mtk_jpeg_s_fmt_mplane._entry.75, ptr @mtk_jpeg_s_fmt_mplane._entry.78, ptr @mtk_jpeg_s_fmt_mplane._entry_ptr, ptr @mtk_jpeg_s_fmt_mplane._entry_ptr.77, ptr @mtk_jpeg_s_fmt_mplane._entry_ptr.79, ptr @mtk_jpeg_set_dec_dst._entry, ptr @mtk_jpeg_set_dec_dst._entry.64, ptr @mtk_jpeg_set_dec_dst._entry_ptr, ptr @mtk_jpeg_set_dec_dst._entry_ptr.66, ptr @mtk_jpeg_set_queue_data._entry, ptr @mtk_jpeg_set_queue_data._entry_ptr, ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry, ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry_ptr, ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry, ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry_ptr, ptr @debug, ptr @mtk_jpeg_driver, ptr @.str, ptr @mtk_jpeg_match, ptr @mtk_jpeg_pm_ops, ptr @mtk_jpeg_probe.__key, ptr @.str.1, ptr @mtk_jpeg_probe.__key.2, ptr @.str.3, ptr @mtk_jpeg_probe.__key.4, ptr @.str.5, ptr @mtk_jpeg_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @mtk_jpeg_fops, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mtk_jpeg_open._key, ptr @.str.34, ptr @mtk_jpeg_enc_ctrl_ops, ptr @mtk_jpeg_enc_ctrls_setup._key, ptr @.str.35, ptr @mt8173_jpeg_drvdata, ptr @mtk_jpeg_drvdata, ptr @mt8173_jpeg_dec_clocks, ptr @mtk_jpeg_dec_formats, ptr @mtk_jpeg_dec_qops, ptr @mtk_jpeg_dec_m2m_ops, ptr @.str.36, ptr @mtk_jpeg_dec_ioctl_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @mtk_jpeg_queue_src_chg_event.ev_src_ch, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @mtk_jpeg_clocks, ptr @mtk_jpeg_enc_formats, ptr @mtk_jpeg_enc_qops, ptr @mtk_jpeg_enc_m2m_ops, ptr @.str.83, ptr @mtk_jpeg_enc_ioctl_ops, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @switch.table.mtk_jpeg_g_fmt_vid_mplane, ptr @switch.table.mtk_jpeg_dec_g_selection, ptr @switch.table.mtk_jpeg_dec_g_selection.92], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_jpeg_drvdata to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_drvdata to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_jpeg_dec_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_formats to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_queue_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_set_queue_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_buf_queue._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_queue_src_chg_event.ev_src_ch to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_dec_irq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_check_resolution_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_check_resolution_change._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_set_dec_dst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_set_dec_dst._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_g_fmt_vid_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_g_fmt_vid_mplane._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_s_fmt_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_s_fmt_mplane._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_s_fmt_mplane._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_formats to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_clk_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_clk_on._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_jpeg_g_fmt_vid_mplane to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_jpeg_dec_g_selection to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_jpeg_dec_g_selection.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_jpeg_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_jpeg_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mtk_jpeg_probe.__key) #15
  %hw_lock = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtk_jpeg_probe.__key.2, i16 noundef signext 3) #15
  %dev6 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev6, align 4
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #15
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %variant, align 4
  %job_timeout_work = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %job_timeout_work, i32 noundef 0) #15
  %2 = ptrtoint ptr %job_timeout_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %job_timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @mtk_jpeg_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry17 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %3 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_jpeg_job_timeout_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @mtk_jpeg_probe.__key.6) #15
  %call28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #15
  %reg_base = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call28, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %do.body
  %call35 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %irq_handler = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_handler, align 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %call.i208 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool41.not = icmp eq i32 %call.i208, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call35, i32 noundef %call.i208) #18
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #15
  %18 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #15
  br label %do.end53

of_parse_phandle.exit.i:                          ; preds = %if.end47
  %19 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #15
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end53_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end53_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end53

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_find_device_by_node(ptr noundef nonnull %20) #15
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end27.i, !prof !232

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1297, i32 noundef 9, ptr noundef null) #15
  call void @of_node_put(ptr noundef nonnull %20) #15
  br label %do.end53

if.end27.i:                                       ; preds = %if.end.i
  call void @of_node_put(ptr noundef nonnull %20) #15
  %dev28.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3
  %larb.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %larb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev28.i, ptr %larb.i, align 4
  %22 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev6, align 4
  %24 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant, align 4
  %num_clks.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_clks.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call31.i = call i32 @devm_clk_bulk_get(ptr noundef %23, i32 noundef %27, ptr noundef %29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end55, label %do.end36.i

do.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.30, i32 noundef %call31.i) #18
  call void @put_device(ptr noundef %dev28.i) #15
  br label %do.end53

do.end53:                                         ; preds = %do.end36.i, %do.end.i, %of_parse_phandle.exit.i.do.end53_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0.i.ph = phi i32 [ -22, %of_parse_phandle.exit.thread.i ], [ -22, %of_parse_phandle.exit.i.do.end53_crit_edge ], [ %call31.i, %do.end36.i ], [ -22, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i.ph) #18
  br label %cleanup

if.end55:                                         ; preds = %if.end27.i
  %v4l2_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 4
  %call57 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #18
  br label %err_dev_register

if.end64:                                         ; preds = %if.end55
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant, align 4
  %m2m_ops = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %m2m_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_ops, align 4
  %call66 = call ptr @v4l2_m2m_init(ptr noundef %33) #15
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call66, ptr %m2m_dev, align 4
  %cmp.i209 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end72, label %if.end78

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %name74 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 4, i32 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name74) #18
  %35 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_dev, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %err_m2m_init

if.end78:                                         ; preds = %if.end64
  %call79 = call ptr @video_device_alloc() #15
  %vdev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call79, ptr %vdev, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.end78.err_vfd_jpeg_alloc_crit_edge, label %if.end83

if.end78.err_vfd_jpeg_alloc_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_vfd_jpeg_alloc

if.end83:                                         ; preds = %if.end78
  %name85 = getelementptr inbounds %struct.video_device, ptr %call79, i32 0, i32 12
  %39 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant, align 4
  %dev_name = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_name, align 4
  %call88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name85, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %42)
  %43 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev, align 4
  %fops = getelementptr inbounds %struct.video_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mtk_jpeg_fops, ptr %fops, align 4
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %ioctl_ops = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioctl_ops, align 4
  %50 = load ptr, ptr %vdev, align 4
  %ioctl_ops92 = getelementptr inbounds %struct.video_device, ptr %50, i32 0, i32 24
  %51 = ptrtoint ptr %ioctl_ops92 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %ioctl_ops92, align 4
  %52 = load ptr, ptr %vdev, align 4
  %minor = getelementptr inbounds %struct.video_device, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %minor, align 8
  %54 = load ptr, ptr %vdev, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %54, i32 0, i32 23
  %55 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @video_device_release, ptr %release, align 8
  %56 = load ptr, ptr %vdev, align 4
  %lock97 = getelementptr inbounds %struct.video_device, ptr %56, i32 0, i32 26
  %57 = ptrtoint ptr %lock97 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %lock97, align 8
  %58 = load ptr, ptr %vdev, align 4
  %v4l2_dev100 = getelementptr inbounds %struct.video_device, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %v4l2_dev100 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %v4l2_dev, ptr %v4l2_dev100, align 4
  %60 = load ptr, ptr %vdev, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %vfl_dir, align 4
  %62 = load ptr, ptr %vdev, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 67125248, ptr %device_caps, align 8
  %64 = load ptr, ptr %vdev, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fops.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call.i210 = call i32 @__video_register_device(ptr noundef %64, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %68) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool105.not = icmp eq i32 %call.i210, 0
  br i1 %tobool105.not, label %if.end115, label %do.end109

do.end109:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  %name112 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 4, i32 4
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name112) #18
  %69 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vdev, align 4
  call void @video_device_release(ptr noundef %70) #15
  br label %err_vfd_jpeg_alloc

if.end115:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %72, i32 0, i32 5, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name122 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %call.i, i32 0, i32 4, i32 4
  %74 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %variant, align 4
  %dev_name125 = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %dev_name125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_name125, align 4
  %78 = load ptr, ptr %vdev, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %num, align 4
  %conv = zext i16 %80 to i32
  %minor128 = getelementptr inbounds %struct.video_device, ptr %78, i32 0, i32 15
  %81 = ptrtoint ptr %minor128 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %minor128, align 8
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name122, ptr noundef %77, i32 noundef %conv, i32 noundef 81, i32 noundef %82) #18
  %driver_data.i.i211 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %83 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %driver_data.i.i211, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #15
  br label %cleanup

err_vfd_jpeg_alloc:                               ; preds = %do.end109, %if.end78.err_vfd_jpeg_alloc_crit_edge
  %ret.0 = phi i32 [ %call.i210, %do.end109 ], [ -12, %if.end78.err_vfd_jpeg_alloc_crit_edge ]
  %84 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %m2m_dev, align 4
  call void @v4l2_m2m_release(ptr noundef %85) #15
  br label %err_m2m_init

err_m2m_init:                                     ; preds = %err_vfd_jpeg_alloc, %do.end72
  %ret.1 = phi i32 [ %37, %do.end72 ], [ %ret.0, %err_vfd_jpeg_alloc ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #15
  br label %err_dev_register

err_dev_register:                                 ; preds = %err_m2m_init, %do.end62
  %ret.2 = phi i32 [ -22, %do.end62 ], [ %ret.1, %err_m2m_init ]
  %86 = ptrtoint ptr %larb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %larb.i, align 4
  call void @put_device(ptr noundef %87) #15
  br label %cleanup

cleanup:                                          ; preds = %err_dev_register, %if.end115, %do.end53, %do.end45, %if.end34.cleanup_crit_edge, %if.then31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then31 ], [ 0, %if.end115 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call.i208, %do.end45 ], [ %retval.0.i.ph, %do.end53 ], [ %ret.2, %err_dev_register ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  %vdev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  tail call void @video_unregister_device(ptr noundef %3) #15
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  tail call void @video_device_release(ptr noundef %5) #15
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %7) #15
  %v4l2_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #15
  %larb.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %larb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %larb.i, align 4
  tail call void @put_device(ptr noundef %9) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_job_timeout_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #15
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #15
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i15 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  %variant = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %hw_reset = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %hw_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_reset, align 4
  %reg_base = getelementptr i8, ptr %work, i32 -8
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  tail call void %9(ptr noundef %11) #15
  %dev = getelementptr i8, ptr %work, i32 -152
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 6) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i15, i32 noundef 6) #15
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %15, ptr noundef %17) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 812) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free

if.end6:                                          ; preds = %if.end
  %fh = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 3
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #15
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %call7.i.i, align 8
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_dev, align 4
  %call10 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mtk_jpeg_queue_init) #15
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 3, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call10 to i32
  br label %error

if.end19:                                         ; preds = %if.end6
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 4
  %cap_q_default_fourcc = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %cap_q_default_fourcc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_q_default_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %12)
  %cmp = icmp eq i32 %12, 1195724874
  %ctrl_hdl.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 8
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end19
  %call.i59 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 3, ptr noundef nonnull @mtk_jpeg_enc_ctrls_setup._key, ptr noundef nonnull @.str.35) #15
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @mtk_jpeg_enc_ctrl_ops, i32 noundef 10291458, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 0) #15
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @mtk_jpeg_enc_ctrl_ops, i32 noundef 10291459, i64 noundef 48, i64 noundef 100, i64 noundef 1, i64 noundef 90) #15
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @mtk_jpeg_enc_ctrl_ops, i32 noundef 10291460, i64 noundef 0, i64 noundef 2, i64 noundef 0, i64 noundef 0) #15
  %error.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 8, i32 9
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %mtk_jpeg_enc_ctrls_setup.exit.thread, label %mtk_jpeg_enc_ctrls_setup.exit

mtk_jpeg_enc_ctrls_setup.exit.thread:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %call7.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl.i) #15
  br label %if.end28

mtk_jpeg_enc_ctrls_setup.exit:                    ; preds = %if.then20
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #15
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  br i1 %tobool22.not, label %mtk_jpeg_enc_ctrls_setup.exit.if.end28_crit_edge, label %do.end

mtk_jpeg_enc_ctrls_setup.exit.if.end28_crit_edge: ; preds = %mtk_jpeg_enc_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

do.end:                                           ; preds = %mtk_jpeg_enc_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name) #18
  br label %error

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 0, ptr noundef nonnull @mtk_jpeg_open._key, ptr noundef nonnull @.str.34) #15
  br label %if.end28

if.end28:                                         ; preds = %if.else, %mtk_jpeg_enc_ctrls_setup.exit.if.end28_crit_edge, %mtk_jpeg_enc_ctrls_setup.exit.thread
  %out_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %ctrl_hdl.i60 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 8
  %ctrl_handler.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrl_hdl.i60, ptr %ctrl_handler.i, align 8
  %pix_mp.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %colorspace.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %colorspace.i, align 8
  %21 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 2
  %quantization.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 9
  %23 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %quantization.i, align 1
  %xfer_func.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 10
  %24 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %xfer_func.i, align 8
  %variant.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %18, i32 0, i32 11
  %25 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant.i, align 4
  %formats.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %formats.i, align 4
  %num_formats.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_formats.i, align 4
  %out_q_default_fourcc.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %26, i32 0, i32 10
  %31 = ptrtoint ptr %out_q_default_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_q_default_fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp7.not.i.i, label %if.end28.mtk_jpeg_find_format.exit.i_crit_edge, label %if.end28.for.body.i.i_crit_edge

if.end28.for.body.i.i_crit_edge:                  ; preds = %if.end28
  br label %for.body.i.i

if.end28.mtk_jpeg_find_format.exit.i_crit_edge:   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end28.for.body.i.i_crit_edge
  %k.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end28.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mtk_jpeg_fmt, ptr %28, i32 %k.08.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp1.i.i = icmp eq i32 %34, %32
  br i1 %cmp1.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i = getelementptr %struct.mtk_jpeg_fmt, ptr %28, i32 %k.08.i.i, i32 7
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge

land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %k.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %30
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

mtk_jpeg_find_format.exit.i:                      ; preds = %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge, %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge, %if.end28.mtk_jpeg_find_format.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end28.mtk_jpeg_find_format.exit.i_crit_edge ], [ null, %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge ], [ %arrayidx.i.i, %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge ]
  %37 = ptrtoint ptr %out_q.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i.i, ptr %out_q.i, align 4
  %38 = ptrtoint ptr %pix_mp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %pix_mp.i, align 8
  %height.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 32, ptr %height.i, align 4
  tail call fastcc void @mtk_jpeg_try_fmt_mplane(ptr noundef %pix_mp.i, ptr noundef %retval.0.i.i) #15
  %40 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %variant.i, align 4
  %formats13.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %formats13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %formats13.i, align 4
  %num_formats15.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %num_formats15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_formats15.i, align 4
  %cap_q_default_fourcc.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %41, i32 0, i32 11
  %46 = ptrtoint ptr %cap_q_default_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap_q_default_fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7.not.i59.i = icmp eq i32 %45, 0
  br i1 %cmp7.not.i59.i, label %mtk_jpeg_find_format.exit.i.mtk_jpeg_set_default_params.exit_crit_edge, label %mtk_jpeg_find_format.exit.i.for.body.i63.i_crit_edge

mtk_jpeg_find_format.exit.i.for.body.i63.i_crit_edge: ; preds = %mtk_jpeg_find_format.exit.i
  br label %for.body.i63.i

mtk_jpeg_find_format.exit.i.mtk_jpeg_set_default_params.exit_crit_edge: ; preds = %mtk_jpeg_find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_set_default_params.exit

for.body.i63.i:                                   ; preds = %for.inc.i70.i.for.body.i63.i_crit_edge, %mtk_jpeg_find_format.exit.i.for.body.i63.i_crit_edge
  %k.08.i60.i = phi i32 [ %inc.i68.i, %for.inc.i70.i.for.body.i63.i_crit_edge ], [ 0, %mtk_jpeg_find_format.exit.i.for.body.i63.i_crit_edge ]
  %arrayidx.i61.i = getelementptr %struct.mtk_jpeg_fmt, ptr %43, i32 %k.08.i60.i
  %48 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i61.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp1.i62.i = icmp eq i32 %49, %47
  br i1 %cmp1.i62.i, label %land.lhs.true.i67.i, label %for.body.i63.i.for.inc.i70.i_crit_edge

for.body.i63.i.for.inc.i70.i_crit_edge:           ; preds = %for.body.i63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i70.i

land.lhs.true.i67.i:                              ; preds = %for.body.i63.i
  %flags.i64.i = getelementptr %struct.mtk_jpeg_fmt, ptr %43, i32 %k.08.i60.i, i32 7
  %50 = ptrtoint ptr %flags.i64.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i64.i, align 4
  %and.i65.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i)
  %tobool.not.i66.i = icmp eq i32 %and.i65.i, 0
  br i1 %tobool.not.i66.i, label %land.lhs.true.i67.i.for.inc.i70.i_crit_edge, label %land.lhs.true.i67.i.mtk_jpeg_set_default_params.exit_crit_edge

land.lhs.true.i67.i.mtk_jpeg_set_default_params.exit_crit_edge: ; preds = %land.lhs.true.i67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_set_default_params.exit

land.lhs.true.i67.i.for.inc.i70.i_crit_edge:      ; preds = %land.lhs.true.i67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i70.i

for.inc.i70.i:                                    ; preds = %land.lhs.true.i67.i.for.inc.i70.i_crit_edge, %for.body.i63.i.for.inc.i70.i_crit_edge
  %inc.i68.i = add nuw i32 %k.08.i60.i, 1
  %exitcond.not.i69.i = icmp eq i32 %inc.i68.i, %45
  br i1 %exitcond.not.i69.i, label %for.inc.i70.i.mtk_jpeg_set_default_params.exit_crit_edge, label %for.inc.i70.i.for.body.i63.i_crit_edge

for.inc.i70.i.for.body.i63.i_crit_edge:           ; preds = %for.inc.i70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i63.i

for.inc.i70.i.mtk_jpeg_set_default_params.exit_crit_edge: ; preds = %for.inc.i70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_set_default_params.exit

mtk_jpeg_set_default_params.exit:                 ; preds = %for.inc.i70.i.mtk_jpeg_set_default_params.exit_crit_edge, %land.lhs.true.i67.i.mtk_jpeg_set_default_params.exit_crit_edge, %mtk_jpeg_find_format.exit.i.mtk_jpeg_set_default_params.exit_crit_edge
  %retval.0.i71.i = phi ptr [ null, %mtk_jpeg_find_format.exit.i.mtk_jpeg_set_default_params.exit_crit_edge ], [ null, %for.inc.i70.i.mtk_jpeg_set_default_params.exit_crit_edge ], [ %arrayidx.i61.i, %land.lhs.true.i67.i.mtk_jpeg_set_default_params.exit_crit_edge ]
  %cap_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i71.i, ptr %cap_q.i, align 8
  %pix_mp19.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %colorspace20.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 4
  %53 = ptrtoint ptr %colorspace20.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %colorspace20.i, align 4
  %54 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %54, align 2
  %quantization23.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 9
  %56 = ptrtoint ptr %quantization23.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %quantization23.i, align 1
  %xfer_func25.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 10
  %57 = ptrtoint ptr %xfer_func25.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %xfer_func25.i, align 4
  %58 = ptrtoint ptr %pix_mp19.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %pix_mp19.i, align 4
  %height29.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %59 = ptrtoint ptr %height29.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %height29.i, align 8
  tail call fastcc void @mtk_jpeg_try_fmt_mplane(ptr noundef %pix_mp19.i, ptr noundef %retval.0.i71.i) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

error:                                            ; preds = %do.end, %if.then15
  %ret.0 = phi i32 [ %8, %if.then15 ], [ %16, %do.end ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #15
  tail call void @v4l2_fh_exit(ptr noundef %fh) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %free

free:                                             ; preds = %error, %if.end.free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error ], [ -512, %if.end.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %free, %mtk_jpeg_set_default_params.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ 0, %mtk_jpeg_set_default_params.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -428
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #15
  %m2m_ctx = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #15
  %ctrl_hdl = getelementptr i8, ptr %3, i32 200
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #15
  tail call void @v4l2_fh_del(ptr noundef %3) #15
  tail call void @v4l2_fh_exit(ptr noundef %3) #15
  tail call void @kfree(ptr noundef %add.ptr.i) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
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
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 936, ptr %buf_struct_size, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %qops = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %qops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qops, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %11 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %12 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16384, ptr %timestamp_flags, align 4
  %13 = load ptr, ptr %priv, align 4
  %lock3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %14 = ptrtoint ptr %lock3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %lock3, align 4
  %15 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %18 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev5, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9, ptr %dst_vq, align 4
  %io_modes7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %20 = ptrtoint ptr %io_modes7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 17, ptr %io_modes7, align 4
  %drv_priv8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %21 = ptrtoint ptr %drv_priv8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %priv, ptr %drv_priv8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %22 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 744, ptr %buf_struct_size9, align 4
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant, align 4
  %qops11 = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %qops11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qops11, align 4
  %ops12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %27 = ptrtoint ptr %ops12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ops12, align 4
  %mem_ops13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %28 = ptrtoint ptr %mem_ops13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops13, align 4
  %timestamp_flags14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %29 = ptrtoint ptr %timestamp_flags14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16384, ptr %timestamp_flags14, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %lock17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %32 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %lock17, align 4
  %33 = load ptr, ptr %priv, align 4
  %dev19 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %36 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %dev20, align 4
  %call21 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_jpeg_enc_s_ctrl(ptr nocapture noundef readonly %ctrl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 10291458, label %sw.bb
    i32 10291459, label %sw.bb1
    i32 10291460, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %restart_interval = getelementptr i8, ptr %1, i32 -2
  %7 = ptrtoint ptr %restart_interval to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %restart_interval, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %9 to i8
  %enc_quality = getelementptr i8, ptr %1, i32 -3
  %10 = ptrtoint ptr %enc_quality to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %enc_quality, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val5, align 4
  %enable_exif = getelementptr i8, ptr %1, i32 -4
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %enable_exif to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %enable_exif, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_jpeg_try_fmt_mplane(ptr nocapture noundef %pix_mp, ptr nocapture noundef readonly %fmt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %field, align 1
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %fmt, i32 0, i32 4
  %1 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %colplanes, align 4
  %conv = trunc i32 %2 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 6
  %3 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %num_planes, align 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %pixelformat, align 1
  %7 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %7)
  %cmp = icmp eq i32 %7, 1195724874
  br i1 %cmp, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %plane_fmt = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %height, align 1
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 32)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 65535)
  %12 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %height, align 1
  %13 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %pix_mp, align 1
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 32)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 65535)
  %17 = ptrtoint ptr %pix_mp to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %pix_mp, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %bytesperline, align 1
  %19 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %plane_fmt, align 1
  %sub = add i32 %20, -1
  %or = or i32 %sub, 127
  %add = add i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp30 = icmp eq i32 %add, 0
  %storemerge = select i1 %cmp30, i32 1048576, i32 %add
  %21 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %storemerge, ptr %plane_fmt, align 1
  br label %cleanup

if.end34:                                         ; preds = %entry
  %height35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %22 = ptrtoint ptr %height35 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %height35, align 1
  %sub36 = add i32 %23, -1
  %v_align = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %fmt, i32 0, i32 6
  %24 = ptrtoint ptr %v_align to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_align, align 4
  %sub37 = add i32 %25, -1
  %or38 = or i32 %sub37, %sub36
  %add39 = add i32 %or38, 1
  %26 = tail call i32 @llvm.umax.i32(i32 %add39, i32 32)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 65535)
  %28 = ptrtoint ptr %height35 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %height35, align 1
  %29 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %pix_mp, align 1
  %sub56 = add i32 %30, -1
  %h_align = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %fmt, i32 0, i32 5
  %31 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_align, align 4
  %sub57 = add i32 %32, -1
  %or58 = or i32 %sub57, %sub56
  %add59 = add i32 %or58, 1
  %33 = tail call i32 @llvm.umax.i32(i32 %add59, i32 32)
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 65535)
  %35 = ptrtoint ptr %pix_mp to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %pix_mp, align 1
  %36 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %colplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp763 = icmp sgt i32 %37, 0
  br i1 %cmp763, label %if.end34.for.body_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx80 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5, i32 %i.04
  %38 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %pix_mp, align 1
  %arrayidx82 = getelementptr %struct.mtk_jpeg_fmt, ptr %fmt, i32 0, i32 2, i32 %i.04
  %40 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx82, align 4
  %mul = mul i32 %41, %39
  %div1 = lshr i32 %mul, 2
  %42 = ptrtoint ptr %height35 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %height35, align 1
  %arrayidx84 = getelementptr %struct.mtk_jpeg_fmt, ptr %fmt, i32 0, i32 3, i32 %i.04
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx84, align 4
  %mul85 = mul i32 %45, %43
  %div862 = lshr i32 %mul85, 2
  %bytesperline87 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5, i32 %i.04, i32 1
  %46 = ptrtoint ptr %bytesperline87 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %div1, ptr %bytesperline87, align 1
  %mul88 = mul i32 %div862, %div1
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %mul88, ptr %arrayidx80, align 1
  %inc = add nuw nsw i32 %i.04, 1
  %48 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colplanes, align 4
  %cmp76 = icmp slt i32 %inc, %49
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_dec_irq(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %job_timeout_work = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %job_timeout_work) #15
  %reg_base = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %call1 = tail call i32 @mtk_jpeg_dec_get_int_status(ptr noundef %1) #15
  %call2 = tail call i32 @mtk_jpeg_dec_enum_result(i32 noundef %call1) #15
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  %call3 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %3) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 4, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call3, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #15
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i54 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp ugt i32 %call2, 1
  br i1 %cmp, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_dec_reset(ptr noundef %9) #15
  br label %do.end17

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp13.not = icmp eq i32 %call2, 0
  br i1 %cmp13.not, label %for.cond.preheader, label %if.end12.do.end17_crit_edge

if.end12.do.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

for.cond.preheader:                               ; preds = %if.end12
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %call.i54, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2057.not = icmp eq i32 %11, 0
  br i1 %cmp2057.not, label %for.cond.preheader.dec_end_crit_edge, label %for.cond.preheader.if.then.i_crit_edge

for.cond.preheader.if.then.i_crit_edge:           ; preds = %for.cond.preheader
  br label %if.then.i

for.cond.preheader.dec_end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %dec_end

do.end17:                                         ; preds = %if.end12.do.end17_crit_edge, %if.end12.thread
  %dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.55) #18
  br label %dec_end

if.then.i:                                        ; preds = %vb2_set_plane_payload.exit.if.then.i_crit_edge, %for.cond.preheader.if.then.i_crit_edge
  %i.058 = phi i32 [ %inc, %vb2_set_plane_payload.exit.if.then.i_crit_edge ], [ 0, %for.cond.preheader.if.then.i_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2, i32 24, i32 %i.058
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %length.i = getelementptr %struct.vb2_buffer, ptr %call.i54, i32 0, i32 10, i32 %i.058, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i = icmp ult i32 %17, %15
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.vb2_set_plane_payload.exit_crit_edge

if.then.i.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !233

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ %15, %if.then.i.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %call.i54, i32 0, i32 10, i32 %i.058, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %inc = add nuw i32 %i.058, 1
  %21 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_planes, align 8
  %cmp20 = icmp ult i32 %inc, %22
  br i1 %cmp20, label %vb2_set_plane_payload.exit.if.then.i_crit_edge, label %vb2_set_plane_payload.exit.dec_end_crit_edge

vb2_set_plane_payload.exit.dec_end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dec_end

vb2_set_plane_payload.exit.if.then.i_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

dec_end:                                          ; preds = %vb2_set_plane_payload.exit.dec_end_crit_edge, %do.end17, %for.cond.preheader.dec_end_crit_edge
  %buf_state.0 = phi i32 [ 6, %do.end17 ], [ 5, %for.cond.preheader.dec_end_crit_edge ], [ 5, %vb2_set_plane_payload.exit.dec_end_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %buf_state.0) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i54, i32 noundef %buf_state.0) #15
  %23 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_dev, align 4
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %24, ptr noundef %26) #15
  %27 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call3, align 4
  %dev26 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev26, align 4
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %dec_end, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_dec_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_ctxs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %3, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q, align 4
  %7 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %6, i32 noundef %8) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %10, label %if.end.i [
    i32 2, label %do.end5.if.then.i_crit_edge
    i32 10, label %do.end5.if.then.i_crit_edge82
    i32 3, label %do.end5.if.then.i_crit_edge83
    i32 8, label %do.end5.if.then.i_crit_edge84
    i32 5, label %do.end5.if.then.i_crit_edge85
    i32 7, label %do.end5.if.then.i_crit_edge86
    i32 12, label %do.end5.if.then.i_crit_edge87
    i32 14, label %do.end5.if.then.i_crit_edge88
  ]

do.end5.if.then.i_crit_edge88:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge87:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge86:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge85:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge84:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge83:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge82:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

do.end5.if.then.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %do.end5.if.then.i_crit_edge, %do.end5.if.then.i_crit_edge82, %do.end5.if.then.i_crit_edge83, %do.end5.if.then.i_crit_edge84, %do.end5.if.then.i_crit_edge85, %do.end5.if.then.i_crit_edge86, %do.end5.if.then.i_crit_edge87, %do.end5.if.then.i_crit_edge88
  %out_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 1
  br label %mtk_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 2
  br label %mtk_jpeg_get_q_data.exit

mtk_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mtk_jpeg_get_q_data.exit.cleanup_crit_edge, label %if.end9

mtk_jpeg_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %mtk_jpeg_get_q_data.exit
  %12 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end17, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.072
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.072
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp14 = icmp ult i32 %15, %17
  br i1 %cmp14, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i, align 4
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colplanes, align 4
  %22 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_planes, align 4
  %23 = load ptr, ptr %retval.0.i, align 4
  %colplanes2074 = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %colplanes2074 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colplanes2074, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2175 = icmp sgt i32 %25, 0
  br i1 %cmp2175, label %for.body22.lr.ph, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body22.lr.ph:                                 ; preds = %if.end17
  %name36 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %3, i32 0, i32 4, i32 4
  br label %for.body22

for.body22:                                       ; preds = %for.inc43.for.body22_crit_edge, %for.body22.lr.ph
  %i.176 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc44, %for.inc43.for.body22_crit_edge ]
  %arrayidx25 = getelementptr %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.176
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr i32, ptr %sizes, i32 %i.176
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx27, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp29 = icmp sgt i32 %29, 0
  br i1 %cmp29, label %do.end33, label %for.body22.for.inc43_crit_edge

for.body22.for.inc43_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc43

do.end33:                                         ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name36, i32 noundef %i.176, i32 noundef %27) #18
  br label %for.inc43

for.inc43:                                        ; preds = %do.end33, %for.body22.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.176, 1
  %30 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %retval.0.i, align 4
  %colplanes20 = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %colplanes20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %colplanes20, align 4
  %cmp21 = icmp slt i32 %inc44, %33
  br i1 %cmp21, label %for.inc43.for.body22_crit_edge, label %for.inc43.cleanup_crit_edge

for.inc43.cleanup_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc43.for.body22_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body22

cleanup:                                          ; preds = %for.inc43.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %mtk_jpeg_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mtk_jpeg_get_q_data.exit.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %for.inc43.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %5, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge44
    i32 3, label %entry.if.then.i_crit_edge45
    i32 8, label %entry.if.then.i_crit_edge46
    i32 5, label %entry.if.then.i_crit_edge47
    i32 7, label %entry.if.then.i_crit_edge48
    i32 12, label %entry.if.then.i_crit_edge49
    i32 14, label %entry.if.then.i_crit_edge50
  ]

entry.if.then.i_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge44, %entry.if.then.i_crit_edge45, %entry.if.then.i_crit_edge46, %entry.if.then.i_crit_edge47, %entry.if.then.i_crit_edge48, %entry.if.then.i_crit_edge49, %entry.if.then.i_crit_edge50
  %out_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 1
  br label %mtk_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 2
  br label %mtk_jpeg_get_q_data.exit

mtk_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mtk_jpeg_get_q_data.exit.cleanup_crit_edge, label %for.cond.preheader

mtk_jpeg_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %mtk_jpeg_get_q_data.exit
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %retval.0.i, align 4
  %colplanes40 = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %colplanes40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %colplanes40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp41 = icmp sgt i32 %10, 0
  br i1 %cmp41, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %enable_exif = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 5
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %11 = phi ptr [ %8, %for.body.lr.ph ], [ %29, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.042
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %plane_fmt.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %enable_exif to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_exif, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %16)
  %cmp6 = icmp eq i32 %16, 1195724874
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %17 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.042)
  %cmp.i = icmp ugt i32 %18, %i.042
  br i1 %cmp.i, label %if.then.i26, label %if.then7.for.inc_crit_edge

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i26:                                      ; preds = %if.then7
  %add = add i32 %plane_fmt.sroa.0.0.copyload, 65536
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.042, i32 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp1.i = icmp ult i32 %20, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i26.for.inc.sink.split_crit_edge

if.then.i26.for.inc.sink.split_crit_edge:         ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

land.rhs.i:                                       ; preds = %if.then.i26
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.for.inc.sink.split.sink.split_crit_edge, label %land.rhs.i.for.inc.sink.split.sink.split.sink.split_crit_edge, !prof !233

land.rhs.i.for.inc.sink.split.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.sink.split.sink.split

land.rhs.i.for.inc.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %21 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %i.042)
  %cmp.i28 = icmp ugt i32 %22, %i.042
  br i1 %cmp.i28, label %if.then.i31, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i31:                                      ; preds = %if.else
  %length.i29 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.042, i32 4
  %23 = ptrtoint ptr %length.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %plane_fmt.sroa.0.0.copyload)
  %cmp1.i30 = icmp ult i32 %24, %plane_fmt.sroa.0.0.copyload
  br i1 %cmp1.i30, label %land.rhs.i33, label %if.then.i31.for.inc.sink.split_crit_edge

if.then.i31.for.inc.sink.split_crit_edge:         ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split

land.rhs.i33:                                     ; preds = %if.then.i31
  %.b55.i32 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i32, label %land.rhs.i33.for.inc.sink.split.sink.split_crit_edge, label %land.rhs.i33.for.inc.sink.split.sink.split.sink.split_crit_edge, !prof !233

land.rhs.i33.for.inc.sink.split.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.sink.split.sink.split

land.rhs.i33.for.inc.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.sink.split

for.inc.sink.split.sink.split.sink.split:         ; preds = %land.rhs.i33.for.inc.sink.split.sink.split.sink.split_crit_edge, %land.rhs.i.for.inc.sink.split.sink.split.sink.split_crit_edge
  %length.i29.sink.ph = phi ptr [ %length.i, %land.rhs.i.for.inc.sink.split.sink.split.sink.split_crit_edge ], [ %length.i29, %land.rhs.i33.for.inc.sink.split.sink.split.sink.split_crit_edge ]
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %for.inc.sink.split.sink.split

for.inc.sink.split.sink.split:                    ; preds = %for.inc.sink.split.sink.split.sink.split, %land.rhs.i33.for.inc.sink.split.sink.split_crit_edge, %land.rhs.i.for.inc.sink.split.sink.split_crit_edge
  %length.i29.sink = phi ptr [ %length.i, %land.rhs.i.for.inc.sink.split.sink.split_crit_edge ], [ %length.i29, %land.rhs.i33.for.inc.sink.split.sink.split_crit_edge ], [ %length.i29.sink.ph, %for.inc.sink.split.sink.split.sink.split ]
  %25 = ptrtoint ptr %length.i29.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i29.sink, align 8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.inc.sink.split.sink.split, %if.then.i31.for.inc.sink.split_crit_edge, %if.then.i26.for.inc.sink.split_crit_edge
  %size.addr.0.i36.sink = phi i32 [ %add, %if.then.i26.for.inc.sink.split_crit_edge ], [ %plane_fmt.sroa.0.0.copyload, %if.then.i31.for.inc.sink.split_crit_edge ], [ %26, %for.inc.sink.split.sink.split ]
  %bytesused.i37 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.042, i32 3
  %27 = ptrtoint ptr %bytesused.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size.addr.0.i36.sink, ptr %bytesused.i37, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %28 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %retval.0.i, align 4
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colplanes, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %mtk_jpeg_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mtk_jpeg_get_q_data.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_dec_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  %switch.tableidx78 = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx78)
  %6 = icmp ult i32 %switch.tableidx78, 13
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 %6, label %switch.hole_check79, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %switch.hole_check79.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 3, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %dec_param = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2
  tail call fastcc void @mtk_jpeg_set_queue_data(ptr noundef %1, ptr noundef %dec_param)
  br label %if.end50.sink.split

if.else:                                          ; preds = %entry
  br i1 %6, label %switch.hole_check, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = trunc i32 %switch.tableidx78 to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end50_crit_edge, label %switch.hole_check.if.end50.sink.split_crit_edge

switch.hole_check.if.end50.sink.split_crit_edge:  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.sink.split

switch.hole_check.if.end50_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

switch.hole_check79:                              ; preds = %land.lhs.true
  %switch.maskindex81 = trunc i32 %switch.tableidx78 to i16
  %switch.shifted82 = lshr i16 5483, %switch.maskindex81
  %10 = and i16 %switch.shifted82, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit83.not = icmp eq i16 %10, 0
  br i1 %switch.lobit83.not, label %switch.hole_check79.if.then_crit_edge, label %switch.hole_check79.if.end50.sink.split_crit_edge

switch.hole_check79.if.end50.sink.split_crit_edge: ; preds = %switch.hole_check79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.sink.split

switch.hole_check79.if.then_crit_edge:            ; preds = %switch.hole_check79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end50.sink.split:                              ; preds = %switch.hole_check79.if.end50.sink.split_crit_edge, %switch.hole_check.if.end50.sink.split_crit_edge, %if.then
  %.sink = phi i32 [ 1, %if.then ], [ 0, %switch.hole_check.if.end50.sink.split_crit_edge ], [ 0, %switch.hole_check79.if.end50.sink.split_crit_edge ]
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %state, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %switch.hole_check.if.end50_crit_edge, %if.else.if.end50_crit_edge
  %m2m_ctx.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 3, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end50
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %13, label %if.else.i [
    i32 2, label %while.cond.if.then.i_crit_edge
    i32 10, label %while.cond.if.then.i_crit_edge84
    i32 3, label %while.cond.if.then.i_crit_edge85
    i32 8, label %while.cond.if.then.i_crit_edge86
    i32 5, label %while.cond.if.then.i_crit_edge87
    i32 7, label %while.cond.if.then.i_crit_edge88
    i32 12, label %while.cond.if.then.i_crit_edge89
    i32 14, label %while.cond.if.then.i_crit_edge90
  ]

while.cond.if.then.i_crit_edge90:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge89:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge88:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge87:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge86:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge85:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge84:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %while.cond.if.then.i_crit_edge, %while.cond.if.then.i_crit_edge84, %while.cond.if.then.i_crit_edge85, %while.cond.if.then.i_crit_edge86, %while.cond.if.then.i_crit_edge87, %while.cond.if.then.i_crit_edge88, %while.cond.if.then.i_crit_edge89, %while.cond.if.then.i_crit_edge90
  %15 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  br label %mtk_jpeg_buf_remove.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 7
  br label %mtk_jpeg_buf_remove.exit

mtk_jpeg_buf_remove.exit:                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i25.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #15
  %tobool.not = icmp eq ptr %call.i25.i, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %mtk_jpeg_buf_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i25.i, i32 noundef 6) #15
  br label %while.cond

while.end:                                        ; preds = %mtk_jpeg_buf_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_dec_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %5 = load ptr, ptr %3, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %5, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %8, i32 noundef %10, ptr noundef %vb) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %11 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vb, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp9.not = icmp eq i32 %14, 10
  br i1 %cmp9.not, label %if.end11, label %do.end6.end_crit_edge

do.end6.end_crit_edge:                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.end11:                                         ; preds = %do.end6
  %dec_param = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %vb, i32 0, i32 2
  %15 = call ptr @memset(ptr %dec_param, i32 0, i32 188)
  %call13 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #15
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end11.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end11.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end11.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ 0, %if.end11.vb2_get_plane_payload.exit_crit_edge ]
  %call15 = tail call zeroext i1 @mtk_jpeg_parse(ptr noundef %dec_param, ptr noundef %call13, i32 noundef %retval.0.i) #15
  br i1 %call15, label %if.end25, label %do.end19

do.end19:                                         ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name22 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %5, i32 0, i32 4, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name22) #18
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #15
  br label %cleanup

if.end25:                                         ; preds = %vb2_get_plane_payload.exit
  %state = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp26 = icmp eq i32 %21, 0
  br i1 %cmp26, label %if.then27, label %if.end25.end_crit_edge

if.end25.end_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 3, i32 10
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %call28 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %23, i32 noundef 9) #15
  %fh.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 3
  tail call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull @mtk_jpeg_queue_src_chg_event.ev_src_ch) #15
  tail call fastcc void @mtk_jpeg_set_queue_data(ptr noundef %3, ptr noundef %dec_param)
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call28, i32 0, i32 28
  %24 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  %cond = select i1 %tobool.i, i32 2, i32 1
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond, ptr %state, align 4
  br label %end

end:                                              ; preds = %if.then27, %if.end25.end_crit_edge, %do.end6.end_crit_edge
  %m2m_ctx33 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 3, i32 10
  %26 = ptrtoint ptr %m2m_ctx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx33, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %27, ptr noundef %vb) #15
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_jpeg_set_queue_data(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %param) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  %pix_mp = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pix_mp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pix_mp, align 4
  %pic_h = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 1
  %5 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pic_h, align 4
  %height = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height, align 4
  %cap_q = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2
  %dec_w = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 2
  %8 = ptrtoint ptr %dec_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dec_w, align 4
  %pix_mp3 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %pix_mp3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pix_mp3, align 4
  %dec_h = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 3
  %11 = ptrtoint ptr %dec_h to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dec_h, align 4
  %height6 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height6, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_formats, align 4
  %dst_fourcc = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 5
  %20 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.not.i = icmp eq i32 %19, 0
  br i1 %cmp7.not.i, label %entry.mtk_jpeg_find_format.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mtk_jpeg_find_format.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_jpeg_fmt, ptr %17, i32 %k.08.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp1.i = icmp eq i32 %23, %21
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %17, i32 %k.08.i, i32 7
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge

land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.mtk_jpeg_find_format.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.mtk_jpeg_find_format.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

mtk_jpeg_find_format.exit:                        ; preds = %for.inc.i.mtk_jpeg_find_format.exit_crit_edge, %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge, %entry.mtk_jpeg_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mtk_jpeg_find_format.exit_crit_edge ], [ %arrayidx.i, %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge ], [ null, %for.inc.i.mtk_jpeg_find_format.exit_crit_edge ]
  %26 = ptrtoint ptr %cap_q to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %cap_q, align 4
  %colplanes63 = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %retval.0.i, i32 0, i32 4
  %27 = ptrtoint ptr %colplanes63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colplanes63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp64 = icmp sgt i32 %28, 0
  br i1 %cmp64, label %mtk_jpeg_find_format.exit.for.body_crit_edge, label %mtk_jpeg_find_format.exit.do.body_crit_edge

mtk_jpeg_find_format.exit.do.body_crit_edge:      ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

mtk_jpeg_find_format.exit.for.body_crit_edge:     ; preds = %mtk_jpeg_find_format.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_jpeg_find_format.exit.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_jpeg_find_format.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 22, i32 %i.065
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 5, i32 %i.065
  %bytesperline = getelementptr %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 5, i32 %i.065, i32 1
  %31 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bytesperline, align 4
  %arrayidx11 = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 24, i32 %i.065
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11, align 4
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %35 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cap_q, align 4
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %colplanes, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %mtk_jpeg_find_format.exit.do.body_crit_edge
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp15 = icmp sgt i32 %39, 0
  br i1 %cmp15, label %do.end, label %do.body.do.end32_crit_edge

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %dst_fourcc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_fourcc, align 4
  %and = and i32 %41, 255
  %shr = lshr i32 %41, 8
  %and19 = and i32 %shr, 255
  %shr21 = lshr i32 %41, 16
  %and22 = and i32 %shr21, 255
  %shr24 = lshr i32 %41, 24
  %42 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %param, align 4
  %44 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pic_h, align 4
  %46 = ptrtoint ptr %dec_w to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dec_w, align 4
  %48 = ptrtoint ptr %dec_h to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dec_h, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %and, i32 noundef %and19, i32 noundef %and22, i32 noundef %shr24, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #18
  br label %do.end32

do.end32:                                         ; preds = %do.end, %do.body.do.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mtk_jpeg_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_jpeg_dec_get_int_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_jpeg_dec_enum_result(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_dec_device_run(ptr noundef %priv) #2 align 64 {
entry:
  %bs = alloca %struct.mtk_jpeg_bs, align 4
  %fb = alloca %struct.mtk_jpeg_fb, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bs) #15
  %2 = getelementptr inbounds %struct.mtk_jpeg_bs, ptr %bs, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mtk_jpeg_bs, ptr %bs, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fb) #15
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 3, i32 10
  %4 = call ptr @memset(ptr %fb, i32 255, i32 16)
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  %call.i73 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #15
  %dec_param = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %pix_mp.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pix_mp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pix_mp.i, align 4
  %13 = ptrtoint ptr %dec_param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dec_param, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %height.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %pic_h.i = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pic_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.not.i = icmp eq i32 %16, %18
  br i1 %cmp3.not.i, label %if.end9.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.i = icmp sgt i32 %19, 0
  br i1 %cmp4.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.body.i.if.then_crit_edge

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %cap_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cap_q.i, align 4
  %variant.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %10, i32 0, i32 11
  %22 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant.i, align 4
  %formats.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %formats.i, align 4
  %num_formats.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_formats.i, align 4
  %dst_fourcc.i = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %dst_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp7.not.i.i, label %if.end9.i.mtk_jpeg_find_format.exit.i_crit_edge, label %if.end9.i.for.body.i.i_crit_edge

if.end9.i.for.body.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %for.body.i.i

if.end9.i.mtk_jpeg_find_format.exit.i_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.for.body.i.i_crit_edge
  %k.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mtk_jpeg_fmt, ptr %25, i32 %k.08.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp1.i.i = icmp eq i32 %31, %29
  br i1 %cmp1.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i = getelementptr %struct.mtk_jpeg_fmt, ptr %25, i32 %k.08.i.i, i32 7
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge

land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %k.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %27
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit.i

mtk_jpeg_find_format.exit.i:                      ; preds = %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge, %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge, %if.end9.i.mtk_jpeg_find_format.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end9.i.mtk_jpeg_find_format.exit.i_crit_edge ], [ null, %for.inc.i.i.mtk_jpeg_find_format.exit.i_crit_edge ], [ %arrayidx.i.i, %land.lhs.true.i.i.mtk_jpeg_find_format.exit.i_crit_edge ]
  %cmp12.not.i = icmp eq ptr %21, %retval.0.i.i
  br i1 %cmp12.not.i, label %if.end, label %do.body14.i

do.body14.i:                                      ; preds = %mtk_jpeg_find_format.exit.i
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp15.i = icmp sgt i32 %34, 0
  br i1 %cmp15.i, label %do.body14.i.cleanup.sink.split.i_crit_edge, label %do.body14.i.if.then_crit_edge

do.body14.i.if.then_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.body14.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.body14.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %.str.60.sink.i = phi ptr [ @.str.57, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @.str.60, %do.body14.i.cleanup.sink.split.i_crit_edge ]
  %name22.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %10, i32 0, i32 4, i32 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60.sink.i, ptr noundef %name22.i) #18
  br label %if.then

if.then:                                          ; preds = %cleanup.sink.split.i, %do.body14.i.if.then_crit_edge, %do.body.i.if.then_crit_edge
  %fh.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 3
  tail call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull @mtk_jpeg_queue_src_chg_event.ev_src_ch) #15
  %state = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %state, align 4
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m2m_dev, align 4
  %38 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %37, ptr noundef %39) #15
  br label %cleanup

if.end:                                           ; preds = %mtk_jpeg_find_format.exit.i
  %dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %call.i74 = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i = icmp slt i32 %call.i74, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !236
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.dec_end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.dec_end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dec_end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !237
  br label %dec_end

if.end11:                                         ; preds = %if.end
  %job_timeout_work = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %job_timeout_work, i32 noundef 100) #15
  %call.i.i76 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #15
  %44 = ptrtoint ptr %call.i.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i.i76, align 4
  %46 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bs, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i.i, label %vb2_get_plane_payload.exit.i.thread, label %if.then.i2.i

vb2_get_plane_payload.exit.i.thread:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %2, align 4
  br label %mtk_jpeg_set_dec_src.exit

if.then.i2.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %50 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytesused.i.i, align 4
  %phi.bo.i = add i32 %51, -1
  %phi.bo4.i = or i32 %phi.bo.i, 15
  %phi.bo5.i = add i32 %45, 1
  %add3.i = add i32 %phi.bo5.i, %phi.bo4.i
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add3.i, ptr %2, align 4
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %53 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i, align 8
  %phi.bo6.i = add i32 %54, -1
  %phi.bo7.i = or i32 %phi.bo6.i, 127
  %phi.bo8.i = add i32 %phi.bo7.i, 1
  br label %mtk_jpeg_set_dec_src.exit

mtk_jpeg_set_dec_src.exit:                        ; preds = %if.then.i2.i, %vb2_get_plane_payload.exit.i.thread
  %retval.0.i3.i = phi i32 [ %phi.bo8.i, %if.then.i2.i ], [ 0, %vb2_get_plane_payload.exit.i.thread ]
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i3.i, ptr %3, align 4
  %comp_num.i = getelementptr inbounds %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2, i32 10
  %56 = ptrtoint ptr %comp_num.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %comp_num.i, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i73, i32 0, i32 4
  %58 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.not.i78 = icmp eq i32 %57, %59
  br i1 %cmp.not.i78, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %mtk_jpeg_set_dec_src.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp440.not.i = icmp eq i32 %57, 0
  br i1 %cmp440.not.i, label %for.cond.preheader.i.do.body20_crit_edge, label %for.cond.preheader.i.vb2_plane_size.exit.i_crit_edge

for.cond.preheader.i.vb2_plane_size.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %vb2_plane_size.exit.i

for.cond.preheader.i.do.body20_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body20

do.end.i:                                         ; preds = %mtk_jpeg_set_dec_src.exit
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.62, i32 noundef %57, i32 noundef %59) #18
  br label %dec_end

vb2_plane_size.exit.i:                            ; preds = %if.end15.i.vb2_plane_size.exit.i_crit_edge, %for.cond.preheader.i.vb2_plane_size.exit.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %if.end15.i.vb2_plane_size.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.vb2_plane_size.exit.i_crit_edge ]
  %length.i.i79 = getelementptr %struct.vb2_buffer, ptr %call.i73, i32 0, i32 10, i32 %i.041.i, i32 4
  %64 = ptrtoint ptr %length.i.i79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i.i79, align 8
  %arrayidx.i = getelementptr %struct.mtk_jpeg_src_buf, ptr %call.i, i32 0, i32 2, i32 24, i32 %i.041.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp5.i = icmp ult i32 %65, %67
  br i1 %cmp5.i, label %vb2_plane_size.exit39.i, label %if.end15.i

vb2_plane_size.exit39.i:                          ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %dev11.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev11.i, align 4
  %length.i36.i = getelementptr %struct.vb2_buffer, ptr %call.i73, i32 0, i32 10, i32 0, i32 4
  %72 = ptrtoint ptr %length.i36.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i36.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.65, i32 noundef %73, i32 noundef %67) #18
  br label %dec_end

if.end15.i:                                       ; preds = %vb2_plane_size.exit.i
  %call.i.i80 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i73, i32 noundef %i.041.i) #15
  %74 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %call.i.i80, align 4
  %arrayidx17.i = getelementptr [3 x i32], ptr %fb, i32 0, i32 %i.041.i
  %76 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx17.i, align 4
  %inc.i = add nuw i32 %i.041.i, 1
  %77 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_planes.i, align 8
  %cmp4.i81 = icmp ult i32 %inc.i, %78
  br i1 %cmp4.i81, label %if.end15.i.vb2_plane_size.exit.i_crit_edge, label %if.end15.i.do.body20_crit_edge

if.end15.i.do.body20_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body20

if.end15.i.vb2_plane_size.exit.i_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit.i

do.body20:                                        ; preds = %if.end15.i.do.body20_crit_edge, %for.cond.preheader.i.do.body20_crit_edge
  %hw_lock = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 1
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #15
  %reg_base = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_dec_reset(ptr noundef %80) #15
  %81 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_base, align 4
  call void @mtk_jpeg_dec_set_config(ptr noundef %82, ptr noundef %dec_param, ptr noundef nonnull %bs, ptr noundef nonnull %fb) #15
  %83 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_base, align 4
  call void @mtk_jpeg_dec_start(ptr noundef %84) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call23) #15
  br label %cleanup

dec_end:                                          ; preds = %vb2_plane_size.exit39.i, %do.end.i, %do.end11.i.i.i.i.i, %if.then.i.dec_end_crit_edge
  %85 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i83 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %86, i32 0, i32 8
  %call.i84 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i83) #15
  %87 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i85 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %88, i32 0, i32 7
  %call.i86 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i85) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 6) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i73, i32 noundef 6) #15
  %m2m_dev36 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %m2m_dev36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m2m_dev36, align 4
  %91 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %90, ptr noundef %92) #15
  br label %cleanup

cleanup:                                          ; preds = %dec_end, %do.body20, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fb) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bs) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_jpeg_dec_job_ready(ptr nocapture noundef readonly %priv) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_dec_set_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_dec_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %dev_name = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_name, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %5, i32 noundef 16) #15
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %dev_name4 = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev_name4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_name4, align 4
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #15
  %dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.67, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19.i = icmp sgt i32 %7, 0
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.mtk_jpeg_enum_fmt.exit_crit_edge

entry.mtk_jpeg_enum_fmt.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_enum_fmt.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.022.i = phi i32 [ %num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ %inc4.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %i.020.i, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.022.i, i32 %11)
  %cmp1.i = icmp eq i32 %num.022.i, %11
  br i1 %cmp1.i, label %if.end7.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i32 %num.022.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.022.i, %for.body.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_enum_fmt.exit

if.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx8.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %i.020.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat.i, align 4
  br label %mtk_jpeg_enum_fmt.exit

mtk_jpeg_enum_fmt.exit:                           ; preds = %if.end7.i, %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge, %entry.mtk_jpeg_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ -22, %entry.mtk_jpeg_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19.i = icmp sgt i32 %7, 0
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.mtk_jpeg_enum_fmt.exit_crit_edge

entry.mtk_jpeg_enum_fmt.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_enum_fmt.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.022.i = phi i32 [ %num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ %inc4.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %i.020.i, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.022.i, i32 %11)
  %cmp1.i = icmp eq i32 %num.022.i, %11
  br i1 %cmp1.i, label %if.end7.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i32 %num.022.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.022.i, %for.body.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_enum_fmt.exit

if.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx8.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %i.020.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat.i, align 4
  br label %mtk_jpeg_enum_fmt.exit

mtk_jpeg_enum_fmt.exit:                           ; preds = %if.end7.i, %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge, %entry.mtk_jpeg_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ -22, %entry.mtk_jpeg_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.mtk_jpeg_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_g_fmt_vid_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %m2m_ctx = getelementptr i8, ptr %priv, i32 188
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 13
  br i1 %8, label %switch.lookup, label %if.end.mtk_jpeg_get_q_data.exit_crit_edge

if.end.mtk_jpeg_get_q_data.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_get_q_data.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mtk_jpeg_g_fmt_vid_mplane, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_jpeg_get_q_data.exit

mtk_jpeg_get_q_data.exit:                         ; preds = %switch.lookup, %if.end.mtk_jpeg_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -212, %if.end.mtk_jpeg_get_q_data.exit_crit_edge ]
  %out_q.i = getelementptr i8, ptr %priv, i32 %.sink
  %pix_mp5 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1
  %10 = ptrtoint ptr %pix_mp5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pix_mp5, align 4
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %height8, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1, ptr %field, align 1
  %17 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_q.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %pixelformat, align 1
  %22 = load ptr, ptr %out_q.i, align 4
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colplanes, align 4
  %conv = trunc i32 %24 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %25 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %num_planes, align 1
  %colorspace = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace, align 4
  %colorspace12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %colorspace12, align 1
  %29 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 2
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %32, align 1
  %xfer_func = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %xfer_func, align 4
  %xfer_func15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %36 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %xfer_func15, align 1
  %quantization = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %quantization, align 1
  %quantization17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %39 = ptrtoint ptr %quantization17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %quantization17, align 1
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp sgt i32 %40, 0
  br i1 %cmp, label %do.end, label %mtk_jpeg_get_q_data.exit.do.end36_crit_edge

mtk_jpeg_get_q_data.exit.do.end36_crit_edge:      ; preds = %mtk_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

do.end:                                           ; preds = %mtk_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %and = and i32 %20, 255
  %shr = lshr i32 %20, 8
  %and24 = and i32 %shr, 255
  %shr26 = lshr i32 %20, 16
  %and27 = and i32 %shr26, 255
  %shr29 = lshr i32 %20, 24
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %7, i32 noundef %and, i32 noundef %and24, i32 noundef %and27, i32 noundef %shr29, i32 noundef %11, i32 noundef %14) #18
  br label %do.end36

do.end36:                                         ; preds = %do.end, %mtk_jpeg_get_q_data.exit.do.end36_crit_edge
  %41 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp39111.not = icmp eq i8 %42, 0
  br i1 %cmp39111.not, label %do.end36.cleanup_crit_edge, label %for.body.lr.ph

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end36
  %name58 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end65.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end65.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0112
  %arrayidx43 = getelementptr %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 5, i32 %i.0112
  %bytesperline = getelementptr %struct.mtk_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 5, i32 %i.0112, i32 1
  %43 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesperline, align 4
  %bytesperline44 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0112, i32 1
  %45 = ptrtoint ptr %bytesperline44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %bytesperline44, align 1
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx43, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx, align 1
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp50 = icmp sgt i32 %49, 0
  br i1 %cmp50, label %do.end55, label %for.body.do.end65_crit_edge

for.body.do.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

do.end55:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name58, i32 noundef %i.0112, i32 noundef %44, i32 noundef %47) #18
  br label %do.end65

do.end65:                                         ; preds = %do.end55, %for.body.do.end65_crit_edge
  %inc = add nuw nsw i32 %i.0112, 1
  %50 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_planes, align 1
  %conv38 = zext i8 %51 to i32
  %cmp39 = icmp ult i32 %inc, %conv38
  br i1 %cmp39, label %do.end65.for.body_crit_edge, label %do.end65.cleanup_crit_edge

do.end65.cleanup_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end65.for.body_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %do.end65.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge ], [ 0, %do.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_s_fmt_vid_cap_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_jpeg_try_fmt_vid_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %call2 = tail call fastcc i32 @mtk_jpeg_s_fmt_mplane(ptr noundef %add.ptr.i, ptr noundef %f, i32 noundef 2)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_s_fmt_vid_out_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_jpeg_try_fmt_vid_out_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %call2 = tail call fastcc i32 @mtk_jpeg_s_fmt_mplane(ptr noundef %add.ptr.i, ptr noundef %f, i32 noundef 1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_try_fmt_vid_cap_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %k.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp eq i32 %11, %9
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %k.08.i, i32 7
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %mtk_jpeg_find_format.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

mtk_jpeg_find_format.exit:                        ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mtk_jpeg_find_format.exit.if.then_crit_edge, label %mtk_jpeg_find_format.exit.do.body_crit_edge

mtk_jpeg_find_format.exit.do.body_crit_edge:      ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

mtk_jpeg_find_format.exit.if.then_crit_edge:      ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %mtk_jpeg_find_format.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %cap_q = getelementptr i8, ptr %priv, i32 -212
  %14 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cap_q, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %mtk_jpeg_find_format.exit.do.body_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i, %mtk_jpeg_find_format.exit.do.body_crit_edge ], [ %15, %if.then ]
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp sgt i32 %16, 1
  br i1 %cmp, label %do.end, label %do.body.do.end20_crit_edge

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f, align 4
  %19 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt.0, align 4
  %and = and i32 %20, 255
  %shr = lshr i32 %20, 8
  %and10 = and i32 %shr, 255
  %shr12 = lshr i32 %20, 16
  %and13 = and i32 %shr12, 255
  %shr15 = lshr i32 %20, 24
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %18, i32 noundef %and, i32 noundef %and10, i32 noundef %and13, i32 noundef %shr15) #18
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %state = getelementptr i8, ptr %priv, i32 192
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp21.not = icmp eq i32 %22, 0
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 @mtk_jpeg_g_fmt_vid_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  br label %cleanup

if.end24:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mtk_jpeg_try_fmt_mplane(ptr noundef %fmt3, ptr noundef %fmt.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_try_fmt_vid_out_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -428
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  %fmt3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %k.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp eq i32 %11, %9
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %5, i32 %k.08.i, i32 7
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %mtk_jpeg_find_format.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

mtk_jpeg_find_format.exit:                        ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mtk_jpeg_find_format.exit.if.then_crit_edge, label %mtk_jpeg_find_format.exit.do.body_crit_edge

mtk_jpeg_find_format.exit.do.body_crit_edge:      ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

mtk_jpeg_find_format.exit.if.then_crit_edge:      ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %mtk_jpeg_find_format.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %out_q = getelementptr i8, ptr %priv, i32 -424
  %14 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out_q, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %mtk_jpeg_find_format.exit.do.body_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i, %mtk_jpeg_find_format.exit.do.body_crit_edge ], [ %15, %if.then ]
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp sgt i32 %16, 1
  br i1 %cmp, label %do.end, label %do.body.do.end20_crit_edge

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f, align 4
  %19 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt.0, align 4
  %and = and i32 %20, 255
  %shr = lshr i32 %20, 8
  %and10 = and i32 %shr, 255
  %shr12 = lshr i32 %20, 16
  %and13 = and i32 %shr12, 255
  %shr15 = lshr i32 %20, 24
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %18, i32 noundef %and, i32 noundef %and10, i32 noundef %and13, i32 noundef %shr15) #18
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %state = getelementptr i8, ptr %priv, i32 192
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp21.not = icmp eq i32 %22, 0
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 @mtk_jpeg_g_fmt_vid_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  br label %cleanup

if.end24:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mtk_jpeg_try_fmt_mplane(ptr noundef %fmt3, ptr noundef %fmt.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  ret i32 0
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_jpeg_dec_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %switch.tableidx = add i32 %3, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mtk_jpeg_dec_g_selection, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep36 = getelementptr inbounds [4 x i32], ptr @switch.table.mtk_jpeg_dec_g_selection.92, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load37 = load i32, ptr %switch.gep36, align 4
  %pix_mp = getelementptr i8, ptr %priv, i32 %switch.load
  %7 = ptrtoint ptr %pix_mp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pix_mp, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width1 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %width1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width1, align 4
  %height = getelementptr i8, ptr %priv, i32 %switch.load37
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5, align 4
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %top, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #15
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #15
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_jpeg_s_fmt_mplane(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %f, i32 noundef %fmt_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %7, label %if.end.i [
    i32 2, label %if.end.if.then.i_crit_edge
    i32 10, label %if.end.if.then.i_crit_edge140
    i32 3, label %if.end.if.then.i_crit_edge141
    i32 8, label %if.end.if.then.i_crit_edge142
    i32 5, label %if.end.if.then.i_crit_edge143
    i32 7, label %if.end.if.then.i_crit_edge144
    i32 12, label %if.end.if.then.i_crit_edge145
    i32 14, label %if.end.if.then.i_crit_edge146
  ]

if.end.if.then.i_crit_edge146:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge145:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge144:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge143:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge142:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge141:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge140:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge140, %if.end.if.then.i_crit_edge141, %if.end.if.then.i_crit_edge142, %if.end.if.then.i_crit_edge143, %if.end.if.then.i_crit_edge144, %if.end.if.then.i_crit_edge145, %if.end.if.then.i_crit_edge146
  %out_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1
  br label %mtk_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 2
  br label %mtk_jpeg_get_q_data.exit

mtk_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.end7, label %do.end

do.end:                                           ; preds = %mtk_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name) #18
  br label %cleanup

if.end7:                                          ; preds = %mtk_jpeg_get_q_data.exit
  %variant = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_formats, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pixelformat, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not.i = icmp eq i32 %16, 0
  br i1 %cmp7.not.i, label %if.end7.mtk_jpeg_find_format.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.mtk_jpeg_find_format.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %k.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_jpeg_fmt, ptr %14, i32 %k.08.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp1.i = icmp eq i32 %20, %18
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr %struct.mtk_jpeg_fmt, ptr %14, i32 %k.08.i, i32 7
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, %fmt_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge

land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.mtk_jpeg_find_format.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.mtk_jpeg_find_format.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_find_format.exit

mtk_jpeg_find_format.exit:                        ; preds = %for.inc.i.mtk_jpeg_find_format.exit_crit_edge, %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge, %if.end7.mtk_jpeg_find_format.exit_crit_edge
  %retval.0.i135 = phi ptr [ null, %if.end7.mtk_jpeg_find_format.exit_crit_edge ], [ %arrayidx.i, %land.lhs.true.i.mtk_jpeg_find_format.exit_crit_edge ], [ null, %for.inc.i.mtk_jpeg_find_format.exit_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i135, ptr %retval.0.i, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %fmt, align 1
  %pix_mp11 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %pix_mp11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pix_mp11, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %height, align 1
  %height14 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height14, align 4
  %30 = load i32, ptr %fmt, align 1
  %width16 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %width16, align 4
  %32 = load i32, ptr %height, align 1
  %height19 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %height19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height19, align 4
  %colorspace = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %colorspace, align 4
  %35 = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %35, align 2
  %xfer_func = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %xfer_func, align 4
  %quantization = getelementptr inbounds %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 9
  %38 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %quantization, align 1
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp sgt i32 %39, 0
  br i1 %cmp, label %do.end28, label %mtk_jpeg_find_format.exit.do.end53_crit_edge

mtk_jpeg_find_format.exit.do.end53_crit_edge:     ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end53

do.end28:                                         ; preds = %mtk_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name31 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f, align 4
  %42 = ptrtoint ptr %retval.0.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i135, align 4
  %and = and i32 %43, 255
  %shr = lshr i32 %43, 8
  %and37 = and i32 %shr, 255
  %shr40 = lshr i32 %43, 16
  %and41 = and i32 %shr40, 255
  %shr44 = lshr i32 %43, 24
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name31, i32 noundef %41, i32 noundef %and, i32 noundef %and37, i32 noundef %and41, i32 noundef %shr44, i32 noundef %25, i32 noundef %28) #18
  br label %do.end53

do.end53:                                         ; preds = %do.end28, %mtk_jpeg_find_format.exit.do.end53_crit_edge
  %44 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %retval.0.i, align 4
  %colplanes136 = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %colplanes136 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %colplanes136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp55137 = icmp sgt i32 %47, 0
  br i1 %cmp55137, label %for.body.lr.ph, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end53
  %name74 = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 4, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0138
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0138, i32 1
  %48 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %bytesperline, align 1
  %arrayidx58 = getelementptr %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.0138
  %bytesperline59 = getelementptr %struct.mtk_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.0138, i32 1
  %50 = ptrtoint ptr %bytesperline59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %bytesperline59, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx, align 1
  %53 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx58, align 4
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp67 = icmp sgt i32 %54, 0
  br i1 %cmp67, label %do.end71, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end71:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name74, i32 noundef %i.0138, i32 noundef %49, i32 noundef %52) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end71, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0138, 1
  %55 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %retval.0.i, align 4
  %colplanes = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %colplanes, align 4
  %cmp55 = icmp slt i32 %inc, %58
  br i1 %cmp55, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end53.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end53.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_enc_irq(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %job_timeout_work = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %job_timeout_work) #15
  %reg_base = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 284
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !239
  %3 = and i32 %2, 318767104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !240
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #15, !srcloc !241
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %6 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %m2m_dev.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_dev.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %8) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %priv, i32 0, i32 4, i32 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i) #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %m2m_ctx.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %call.i, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i) #15
  %11 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  %call.i1.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #15
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %call6.i = tail call i32 @mtk_jpeg_enc_get_file_size(ptr noundef %14) #15
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i1.i, i32 0, i32 4
  %15 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, 0
  br i1 %cmp.i.not.i, label %if.end.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.end.i.vb2_set_plane_payload.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %call.i1.i, i32 0, i32 10, i32 0, i32 4
  %17 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call6.i)
  %cmp1.i.i = icmp ult i32 %18, %call6.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b55.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !233

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %19 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %20, %if.then38.i.i ], [ %call6.i, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr %struct.vb2_buffer, ptr %call.i1.i, i32 0, i32 10, i32 0, i32 3
  %21 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.end.i.vb2_set_plane_payload.exit.i_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %call.i.i, i32 noundef 5) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i1.i, i32 noundef 5) #15
  %22 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev.i, align 4
  %24 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx.i, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %23, ptr noundef %25) #15
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %call.i2.i = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.i, %do.end.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end.i ], [ 1, %vb2_set_plane_payload.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_enc_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_enc_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %1, i32 0, i32 3, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %if.else.i [
    i32 2, label %while.cond.if.then.i_crit_edge
    i32 10, label %while.cond.if.then.i_crit_edge3
    i32 3, label %while.cond.if.then.i_crit_edge4
    i32 8, label %while.cond.if.then.i_crit_edge5
    i32 5, label %while.cond.if.then.i_crit_edge6
    i32 7, label %while.cond.if.then.i_crit_edge7
    i32 12, label %while.cond.if.then.i_crit_edge8
    i32 14, label %while.cond.if.then.i_crit_edge9
  ]

while.cond.if.then.i_crit_edge9:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge8:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge7:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge6:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge5:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge4:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge3:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.cond.if.then.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %while.cond.if.then.i_crit_edge, %while.cond.if.then.i_crit_edge3, %while.cond.if.then.i_crit_edge4, %while.cond.if.then.i_crit_edge5, %while.cond.if.then.i_crit_edge6, %while.cond.if.then.i_crit_edge7, %while.cond.if.then.i_crit_edge8, %while.cond.if.then.i_crit_edge9
  %5 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %mtk_jpeg_buf_remove.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %mtk_jpeg_buf_remove.exit

mtk_jpeg_buf_remove.exit:                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i25.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #15
  %tobool.not = icmp eq ptr %call.i25.i, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %mtk_jpeg_buf_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i25.i, i32 noundef 6) #15
  br label %while.cond

while.end:                                        ; preds = %mtk_jpeg_buf_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_enc_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %6, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %8, i32 noundef %10, ptr noundef %vb) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %3, i32 0, i32 3, i32 10
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %12, ptr noundef %vb) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_jpeg_enc_get_file_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_jpeg_enc_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %m2m_ctx = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %priv, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i54 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #15
  %dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i55 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i = icmp slt i32 %call.i55, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !236
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.enc_end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.enc_end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enc_end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !237
  br label %enc_end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %job_timeout_work = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %job_timeout_work, i32 noundef 100) #15
  %hw_lock = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 1
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #15
  %reg_base = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_enc_reset(ptr noundef %11) #15
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_set_enc_src(ptr noundef %priv, ptr noundef %13, ptr noundef %call.i) #15
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_set_enc_dst(ptr noundef %priv, ptr noundef %15, ptr noundef %call.i54) #15
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_set_enc_params(ptr noundef %priv, ptr noundef %17) #15
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  tail call void @mtk_jpeg_enc_start(ptr noundef %19) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call11) #15
  br label %cleanup

enc_end:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.enc_end_crit_edge
  %20 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i56 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 8
  %call.i57 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i56) #15
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i58 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 7
  %call.i59 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i58) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 6) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i54, i32 noundef 6) #15
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_dev, align 4
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %25, ptr noundef %27) #15
  br label %cleanup

cleanup:                                          ; preds = %enc_end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_set_enc_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_set_enc_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_set_enc_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_jpeg_enc_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_jpeg_enc_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %if.end.sw.bb1_crit_edge
    i32 1, label %if.end.sw.bb1_crit_edge19
  ]

if.end.sw.bb1_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %enc_crop_rect = getelementptr i8, ptr %priv, i32 -228
  %5 = call ptr @memcpy(ptr %r, ptr %enc_crop_rect, i32 16)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge19
  %pix_mp = getelementptr i8, ptr %priv, i32 -420
  %6 = ptrtoint ptr %pix_mp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pix_mp, align 4
  %r3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width4 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %width4, align 4
  %height = getelementptr i8, ptr %priv, i32 -416
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height8, align 4
  %12 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %r3, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %top, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_jpeg_enc_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %s) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond21 = icmp eq i32 %3, 0
  br i1 %cond21, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %pix_mp = getelementptr i8, ptr %priv, i32 -420
  %8 = ptrtoint ptr %pix_mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix_mp, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height10 = getelementptr i8, ptr %priv, i32 -416
  %14 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height10, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height, align 4
  %enc_crop_rect = getelementptr i8, ptr %priv, i32 -228
  %18 = call ptr @memcpy(ptr %enc_crop_rect, ptr %r, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_suspend(ptr noundef %3) #15
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_resume(ptr noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant.i, align 4
  %num_clks.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %7) #15
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #15
  %larb.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %larb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %larb.i, align 4
  tail call void @mtk_smi_larb_put(ptr noundef %9) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_jpeg_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %larb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larb.i, align 4
  %call.i = tail call i32 @mtk_smi_larb_get(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.87, i32 noundef %call.i) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %variant.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant.i, align 4
  %num_clks.i = getelementptr inbounds %struct.mtk_jpeg_variant, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clks.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %9, ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end7.i_crit_edge

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %9, ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.mtk_jpeg_clk_on.exit_crit_edge, label %if.then3.i.i

if.end.i.i.mtk_jpeg_clk_on.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mtk_jpeg_clk_on.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_bulk_unprepare(i32 noundef %9, ptr noundef %11) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then3.i.i, %if.end.i.do.end7.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.do.end7.i_crit_edge ]
  %dev8.i = getelementptr inbounds %struct.mtk_jpeg_dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.90, i32 noundef %retval.0.i.ph.i) #18
  br label %mtk_jpeg_clk_on.exit

mtk_jpeg_clk_on.exit:                             ; preds = %do.end7.i, %if.end.i.i.mtk_jpeg_clk_on.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_smi_larb_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_smi_larb_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !206, !207, !208, !210, !212, !214, !216, !217, !218, !219, !221, !222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 116, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_mtk_jpeg__320_1566_mtk_jpeg_driver_init6, !4, !"__initcall__kmod_mtk_jpeg__320_1566_mtk_jpeg_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1566, i32 1}
!5 = !{ptr @__exitcall_mtk_jpeg_driver_exit, !4, !"__exitcall_mtk_jpeg_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description321, !7, !"__UNIQUE_ID_description321", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1568, i32 1}
!8 = !{ptr @__UNIQUE_ID_file322, !9, !"__UNIQUE_ID_file322", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1569, i32 1}
!10 = !{ptr @__UNIQUE_ID_license323, !9, !"__UNIQUE_ID_license323", i1 false, i1 false}
!11 = !{ptr @debug, !12, !"debug", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 115, i32 12}
!13 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1560, i32 21}
!16 = !{ptr @mtk_jpeg_driver, !17, !"mtk_jpeg_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1556, i32 31}
!18 = !{ptr @mtk_jpeg_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1351, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mtk_jpeg_probe.__key.2, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1352, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mtk_jpeg_probe.__key.4, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1355, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mtk_jpeg_probe.__key.6, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1370, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mtk_jpeg_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_jpeg_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1377, i32 3}
!39 = !{ptr @mtk_jpeg_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_jpeg_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1383, i32 3}
!43 = !{ptr @mtk_jpeg_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_jpeg_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1391, i32 3}
!47 = !{ptr @mtk_jpeg_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_jpeg_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1402, i32 4}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1415, i32 3}
!53 = !{ptr @mtk_jpeg_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_jpeg_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1420, i32 2}
!57 = !{ptr @mtk_jpeg_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtk_jpeg_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1293, i32 46}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1308, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mtk_jpeg_clk_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtk_jpeg_clk_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mtk_jpeg_fops, !67, !"mtk_jpeg_fops", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1269, i32 42}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1235, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_jpeg_open._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_jpeg_open._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mtk_jpeg_open._key, !74, !"_key", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1239, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mtk_jpeg_enc_ctrls_setup._key, !77, !"_key", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 175, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mtk_jpeg_enc_ctrl_ops, !80, !"mtk_jpeg_enc_ctrl_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 166, i32 35}
!81 = !{ptr @mtk_jpeg_match, !82, !"mtk_jpeg_match", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1538, i32 34}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1517, i32 14}
!85 = !{ptr @mt8173_jpeg_drvdata, !86, !"mt8173_jpeg_drvdata", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1508, i32 38}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1279, i32 10}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1280, i32 10}
!91 = !{ptr @mt8173_jpeg_dec_clocks, !92, !"mt8173_jpeg_dec_clocks", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1278, i32 29}
!93 = !{ptr @mtk_jpeg_dec_formats, !94, !"mtk_jpeg_dec_formats", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 80, i32 28}
!95 = !{ptr @mtk_jpeg_dec_qops, !96, !"mtk_jpeg_dec_qops", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 856, i32 29}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 656, i32 2}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mtk_jpeg_queue_setup._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @mtk_jpeg_queue_setup._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 673, i32 3}
!104 = !{ptr @mtk_jpeg_queue_setup._entry.41, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mtk_jpeg_queue_setup._entry_ptr.43, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 752, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mtk_jpeg_set_queue_data._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtk_jpeg_set_queue_data._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 781, i32 2}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mtk_jpeg_dec_buf_queue._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mtk_jpeg_dec_buf_queue._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 794, i32 3}
!121 = !{ptr @mtk_jpeg_dec_buf_queue._entry.49, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mtk_jpeg_dec_buf_queue._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @mtk_jpeg_queue_src_chg_event.ev_src_ch, !124, !"ev_src_ch", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 495, i32 33}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1140, i32 3}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @mtk_jpeg_dec_irq._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @mtk_jpeg_dec_irq._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1152, i32 3}
!132 = !{ptr @mtk_jpeg_dec_irq._entry.54, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mtk_jpeg_dec_irq._entry_ptr.56, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @mtk_jpeg_dec_m2m_ops, !135, !"mtk_jpeg_dec_m2m_ops", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1015, i32 34}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 713, i32 3}
!138 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mtk_jpeg_check_resolution_change._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @mtk_jpeg_check_resolution_change._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 722, i32 3}
!143 = !{ptr @mtk_jpeg_check_resolution_change._entry.59, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mtk_jpeg_check_resolution_change._entry_ptr.61, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 892, i32 3}
!147 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mtk_jpeg_set_dec_dst._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mtk_jpeg_set_dec_dst._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 899, i32 4}
!152 = !{ptr @mtk_jpeg_set_dec_dst._entry.64, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mtk_jpeg_set_dec_dst._entry_ptr.66, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mtk_jpeg_dec_ioctl_ops, !155, !"mtk_jpeg_dec_ioctl_ops", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 619, i32 36}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 141, i32 49}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 331, i32 2}
!160 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mtk_jpeg_g_fmt_vid_mplane._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mtk_jpeg_g_fmt_vid_mplane._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 345, i32 3}
!165 = !{ptr @mtk_jpeg_g_fmt_vid_mplane._entry.70, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mtk_jpeg_g_fmt_vid_mplane._entry_ptr.72, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 428, i32 3}
!169 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @mtk_jpeg_s_fmt_mplane._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @mtk_jpeg_s_fmt_mplane._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 444, i32 2}
!174 = !{ptr @mtk_jpeg_s_fmt_mplane._entry.75, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @mtk_jpeg_s_fmt_mplane._entry_ptr.77, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @mtk_jpeg_s_fmt_mplane._entry.78, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 458, i32 3}
!178 = !{ptr @mtk_jpeg_s_fmt_mplane._entry_ptr.79, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 368, i32 2}
!181 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @mtk_jpeg_try_fmt_vid_cap_mplane._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 397, i32 2}
!186 = !{ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @mtk_jpeg_try_fmt_vid_out_mplane._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1532, i32 14}
!190 = !{ptr @mtk_jpeg_drvdata, !191, !"mtk_jpeg_drvdata", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1523, i32 38}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1284, i32 10}
!194 = !{ptr @mtk_jpeg_clocks, !195, !"mtk_jpeg_clocks", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1283, i32 29}
!196 = !{ptr @mtk_jpeg_enc_formats, !197, !"mtk_jpeg_enc_formats", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 32, i32 28}
!198 = !{ptr @mtk_jpeg_enc_qops, !199, !"mtk_jpeg_enc_qops", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 865, i32 29}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 767, i32 2}
!202 = !{ptr @mtk_jpeg_enc_buf_queue._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @mtk_jpeg_enc_buf_queue._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1084, i32 3}
!206 = !{ptr @mtk_jpeg_enc_done._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @mtk_jpeg_enc_done._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @mtk_jpeg_enc_m2m_ops, !209, !"mtk_jpeg_enc_m2m_ops", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1011, i32 34}
!210 = !{ptr @mtk_jpeg_enc_ioctl_ops, !211, !"mtk_jpeg_enc_ioctl_ops", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 592, i32 36}
!212 = !{ptr @mtk_jpeg_pm_ops, !213, !"mtk_jpeg_pm_ops", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1503, i32 32}
!214 = !{ptr @.str.87, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1060, i32 3}
!216 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mtk_jpeg_clk_on._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @mtk_jpeg_clk_on._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c", i32 1065, i32 3}
!221 = !{ptr @mtk_jpeg_clk_on._entry.89, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @mtk_jpeg_clk_on._entry_ptr.91, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{!"branch_weights", i32 1, i32 2000}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i8 0, i8 2}
!235 = !{i64 2148280292}
!236 = !{i64 765115, i64 765140, i64 765162, i64 765178, i64 765190, i64 765210, i64 765234, i64 765250, i64 765262}
!237 = !{i64 2148280480}
!238 = !{i64 4270819}
!239 = !{i64 2156709624}
!240 = !{i64 2156709852}
!241 = !{i64 4270401}
