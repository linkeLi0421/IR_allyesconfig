; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-core.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.114, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.114 = type { ptr, ptr }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@fimc_formats = internal global { [20 x %struct.fimc_fmt], [96 x i8] } { [20 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 0, i32 1346520914, i32 18, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 1213351746, i32 19, i16 1, i16 1, i8 0, [3 x i8] c" \00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 877807426, i32 20, i16 1, i16 1, i8 0, [3 x i8] c" \00\00", i16 0, i16 14 }, %struct.fimc_fmt { i32 0, i32 1329743698, i32 17, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 12 }, %struct.fimc_fmt { i32 0, i32 875836498, i32 16, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 12 }, %struct.fimc_fmt { i32 8214, i32 0, i32 0, i16 0, i16 0, i8 0, [3 x i8] zeroinitializer, i16 0, i16 32 }, %struct.fimc_fmt { i32 8200, i32 1448695129, i32 33, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8198, i32 1498831189, i32 35, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8199, i32 1498765654, i32 36, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8201, i32 1431918169, i32 34, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 0, i32 1345466932, i32 33, i16 1, i16 3, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 909203022, i32 33, i16 1, i16 2, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 825644622, i32 34, i16 1, i16 2, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842093913, i32 32, i16 1, i16 3, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842094158, i32 32, i16 1, i16 2, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091854, i32 32, i16 2, i16 2, i8 0, [3 x i8] c"\08\04\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091865, i32 32, i16 3, i16 3, i8 0, [3 x i8] c"\08\02\02", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091860, i32 32, i16 2, i16 2, i8 0, [3 x i8] c"\08\04\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 16385, i32 1195724874, i32 128, i16 1, i16 1, i8 0, [3 x i8] c"\08\00\00", i16 0, i16 17 }, %struct.fimc_fmt { i32 20481, i32 1229141331, i32 256, i16 2, i16 1, i8 0, [3 x i8] c"\08\00\00", i16 2, i16 17 }], [96 x i8] zeroinitializer }, align 32
@fimc_set_scaler_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid target size: %dx%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_set_scaler_info\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/exynos4-is/fimc-core.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fimc_set_scaler_info._entry_ptr = internal global ptr @fimc_set_scaler_info._entry, section ".printk_index", align 4
@fimc_set_scaler_info._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid source size: %dx%d\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_set_scaler_info._entry_ptr.7 = internal global ptr @fimc_set_scaler_info._entry.5, section ".printk_index", align 4
@fimc_prepare_addr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p_fimc\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fimc_prepare_addr\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d: memplanes= %d, colplanes= %d, pix_size= %d\0A\00", [45 x i8] zeroinitializer }, align 32
@fimc_prepare_addr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d: DMA ADDR: y= 0x%X  cb= 0x%X cr= 0x%X ret= %d\0A\00", [43 x i8] zeroinitializer }, align 32
@fimc_set_yuv_order.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fimc_set_yuv_order\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d: ctx->in_order_1p= %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fimc_set_yuv_order.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d: ctx->out_order_1p= %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fimc_prepare_dma_offset.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_prepare_dma_offset\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d: in_offset: color= %d, y_h= %d, y_v= %d\0A\00", [49 x i8] zeroinitializer }, align 32
@fimc_ctrls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fimc_core:582:(handler)->_lock\00", [33 x i8] zeroinitializer }, align 32
@fimc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fimc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fimc_probe, ptr @fimc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exynos4-fimc\00", [19 x i8] zeroinitializer }, align 32
@fimc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_s5pv210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_exynos4210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_exynos4x12 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@fimc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_suspend, ptr @fimc_resume, ptr @fimc_suspend, ptr @fimc_resume, ptr @fimc_suspend, ptr @fimc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_runtime_suspend, ptr @fimc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fimc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 947, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid driver data or device id (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fimc_probe\00", [21 x i8] zeroinitializer }, align 32
@fimc_probe._entry_ptr = internal global ptr @fimc_probe._entry, section ".printk_index", align 4
@fimc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fimc->irq_queue\00", [47 x i8] zeroinitializer }, align 32
@fimc_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fimc->slock\00", [19 x i8] zeroinitializer }, align 32
@fimc_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fimc->lock\00", [20 x i8] zeroinitializer }, align 32
@fimc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 970, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get IRQ resource\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_probe._entry_ptr.28 = internal global ptr @fimc_probe._entry.26, section ".printk_index", align 4
@fimc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 992, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_probe._entry_ptr.31 = internal global ptr @fimc_probe._entry.29, section ".printk_index", align 4
@fimc_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.2, ptr @.str.32, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FIMC.%d registered successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,lcd-wb\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,pix-limits\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,min-pix-sizes\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung,min-pix-alignment\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"samsung,rotators\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,mainscaler-ext\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,isp-wb\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,cam-if\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fimc\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung,sysreg\00", [17 x i8] zeroinitializer }, align 32
@fimc_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fimc_clk_get\00", [19 x i8] zeroinitializer }, align 32
@fimc_clk_get._entry_ptr = internal global ptr @fimc_clk_get._entry, section ".printk_index", align 4
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_fimc\00", [22 x i8] zeroinitializer }, align 32
@fimc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1111, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"driver unloaded\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fimc_remove\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fimc_remove._entry_ptr = internal global ptr @fimc_remove._entry, section ".printk_index", align 4
@fimc_drvdata_s5pv210 = internal constant { %struct.fimc_drvdata, [36 x i8] } { %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 3, i32 166000000, i8 0, i8 1, i8 0, i8 4 }, [36 x i8] zeroinitializer }, align 32
@fimc_drvdata_exynos4210 = internal constant { %struct.fimc_drvdata, [36 x i8] } { %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 4, i32 166000000, i8 1, i8 1, i8 1, i8 32 }, [36 x i8] zeroinitializer }, align 32
@fimc_drvdata_exynos4x12 = internal constant { %struct.fimc_drvdata, [36 x i8] } { %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 4, i32 166000000, i8 1, i8 1, i8 1, i8 32 }, [36 x i8] zeroinitializer }, align 32
@fimc_suspend.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fimc_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d: fimc%d: state: 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@fimc_resume.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.52, ptr @.str.2, ptr @.str.51, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fimc_resume\00", [20 x i8] zeroinitializer }, align 32
@fimc_runtime_suspend.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.2, ptr @.str.51, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_runtime_suspend\00", [43 x i8] zeroinitializer }, align 32
@fimc_runtime_resume.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.54, ptr @.str.2, ptr @.str.51, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fimc_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@switch.table.fimc_set_yuv_order = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.fimc_ctrls_create = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 15, i32 1, i32 0, i32 0, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.fimc_alpha_ctrl_update = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 15, i32 1, i32 0, i32 0, i32 255], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 9963796, i64 9963797, i64 9963807, i64 9963810, i64 9963817]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.62 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12, i64 15]
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"fimc_formats\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 37, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 245, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 252, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 340, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 375, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 404, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 421, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 455, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 582, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"fimc_ctrl_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 569, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"fimc_driver\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1162, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1167, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"fimc_of_match\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1143, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"fimc_pm_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1157, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 946, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 953, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 954, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 955, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 970, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 992, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1011, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 874, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 885, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 898, i32 41 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 902, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 907, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 911, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 913, i32 46 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 914, i32 46 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 915, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 916, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [49 x i8] c"../drivers/media/platform/exynos4-is/fimc-core.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 645, i32 47 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 816, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 34, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1111, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"fimc_drvdata_s5pv210\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1116, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant [24 x i8] c"fimc_drvdata_exynos4210\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1124, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"fimc_drvdata_exynos4x12\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1134, i32 34 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1085, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1063, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1052, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [49 x i8] c"../drivers/media/platform/exynos4-is/fimc-core.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1027, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [32 x i8] c"switch.table.fimc_set_yuv_order\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [31 x i8] c"switch.table.fimc_ctrls_create\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [36 x i8] c"switch.table.fimc_alpha_ctrl_update\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @fimc_clk_get._entry, ptr @fimc_clk_get._entry_ptr, ptr @fimc_probe._entry, ptr @fimc_probe._entry.26, ptr @fimc_probe._entry.29, ptr @fimc_probe._entry_ptr, ptr @fimc_probe._entry_ptr.28, ptr @fimc_probe._entry_ptr.31, ptr @fimc_remove._entry, ptr @fimc_remove._entry_ptr, ptr @fimc_set_scaler_info._entry, ptr @fimc_set_scaler_info._entry.5, ptr @fimc_set_scaler_info._entry_ptr, ptr @fimc_set_scaler_info._entry_ptr.7, ptr @fimc_unregister_driver, ptr @fimc_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @fimc_ctrls_create._key, ptr @.str.17, ptr @fimc_ctrl_ops, ptr @fimc_driver, ptr @.str.18, ptr @fimc_of_match, ptr @fimc_pm_ops, ptr @.str.19, ptr @.str.20, ptr @fimc_probe.__key, ptr @.str.21, ptr @fimc_probe.__key.22, ptr @.str.23, ptr @fimc_probe.__key.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @fimc_drvdata_s5pv210, ptr @fimc_drvdata_exynos4210, ptr @fimc_drvdata_exynos4x12, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @switch.table.fimc_set_yuv_order, ptr @switch.table.fimc_ctrls_create, ptr @switch.table.fimc_alpha_ctrl_update], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_formats to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_set_scaler_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_set_scaler_info._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_ctrls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_drvdata_s5pv210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_drvdata_exynos4210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_drvdata_exynos4x12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fimc_set_yuv_order to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fimc_ctrls_create to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fimc_alpha_ctrl_update to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @fimc_get_format(i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %index)
  %cmp = icmp ugt i32 %index, 19
  %arrayidx = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %index
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fimc_check_scaler_ratio(ptr nocapture noundef readonly %ctx, i32 noundef %sw, i32 noundef %sh, i32 noundef %dw, i32 noundef %dh, i32 noundef %rotation) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rotation to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rotation, label %entry.if.end_crit_edge [
    i32 90, label %entry.do.body_crit_edge
    i32 270, label %entry.do.body_crit_edge19
  ]

entry.do.body_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %dh.addr.0 = phi i32 [ %dw, %do.body ], [ %dh, %entry.if.end_crit_edge ]
  %dw.addr.0 = phi i32 [ %dh, %do.body ], [ %dw, %entry.if.end_crit_edge ]
  %scaler = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8
  %1 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %scaler, align 4
  %2 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %dw.addr.0, i32 %sw)
  %cmp3 = icmp eq i32 %dw.addr.0, %sw
  call void @__sanitizer_cov_trace_cmp4(i32 %dh.addr.0, i32 %sh)
  %cmp4 = icmp eq i32 %dh.addr.0, %sh
  %3 = and i1 %cmp4, %cmp3
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %dw.addr.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sw)
  %cmp6.not = icmp sgt i32 %mul, %sw
  %mul8 = shl i32 %dh.addr.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8, i32 %sh)
  %cmp9.not = icmp sgt i32 %mul8, %sh
  %or.cond = and i1 %cmp9.not, %cmp6.not
  br label %return

return:                                           ; preds = %if.end5, %if.then2
  %or.cond.sink = phi i1 [ %or.cond, %if.end5 ], [ %3, %if.then2 ]
  %spec.select = select i1 %or.cond.sink, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_set_scaler_info(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %variant1 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %pdev = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %scaler = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8
  %rotation = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %if.else [
    i32 90, label %entry.if.then_crit_edge
    i32 270, label %entry.if.then_crit_edge195
  ]

entry.if.then_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge195
  %width = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %height = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %width8 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %height9 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx.0.in = phi ptr [ %height, %if.then ], [ %width8, %if.else ]
  %ty.0.in = phi ptr [ %width, %if.then ], [ %height9, %if.else ]
  %9 = ptrtoint ptr %ty.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %ty.0 = load i32, ptr %ty.0.in, align 4
  %10 = ptrtoint ptr %tx.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %tx.0 = load i32, ptr %tx.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx.0)
  %cmp10 = icmp slt i32 %tx.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ty.0)
  %cmp12 = icmp slt i32 %ty.0, 1
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp12
  br i1 %or.cond, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %tx.0, i32 noundef %ty.0) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %width15 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %width15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width15, align 4
  %height16 = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %height16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp slt i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp19 = icmp slt i32 %14, 1
  %or.cond161 = select i1 %cmp17, i1 true, i1 %cmp19
  br i1 %or.cond161, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %14) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %real_width = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 9
  %15 = ptrtoint ptr %real_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %real_width, align 4
  %real_height = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 10
  %16 = ptrtoint ptr %real_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %real_height, align 4
  %pre_hratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 3
  %hfactor = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %mul.i = shl i32 %tx.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp.not.i = icmp ugt i32 %mul.i, %12
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end24
  %mul1.i = shl i32 %tx.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %12)
  %cmp2.not.i = icmp ugt i32 %mul1.i, %12
  br i1 %cmp2.not.i, label %while.cond.1.i, label %while.cond.preheader.i.if.then3.i_crit_edge

while.cond.preheader.i.if.then3.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %mul1.1.i = shl i32 %tx.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.1.i, i32 %12)
  %cmp2.not.1.i = icmp ugt i32 %mul1.1.i, %12
  br i1 %cmp2.not.1.i, label %while.cond.2.i, label %while.cond.1.i.if.then3.i_crit_edge

while.cond.1.i.if.then3.i_crit_edge:              ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %mul1.2.i = shl i32 %tx.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.2.i, i32 %12)
  %cmp2.not.2.i = icmp ugt i32 %mul1.2.i, %12
  br i1 %cmp2.not.2.i, label %while.cond.3.i, label %while.cond.2.i.if.then3.i_crit_edge

while.cond.2.i.if.then3.i_crit_edge:              ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %mul1.3.i = shl i32 %tx.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.3.i, i32 %12)
  %cmp2.not.3.i = icmp ugt i32 %mul1.3.i, %12
  br i1 %cmp2.not.3.i, label %while.cond.4.i, label %while.cond.3.i.if.then3.i_crit_edge

while.cond.3.i.if.then3.i_crit_edge:              ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %mul1.4.i = shl nuw i32 %tx.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.4.i, i32 %12)
  %cmp2.not.4.i = icmp ugt i32 %mul1.4.i, %12
  br i1 %cmp2.not.4.i, label %while.cond.5.i, label %while.cond.4.i.if.then3.i_crit_edge

while.cond.4.i.if.then3.i_crit_edge:              ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.5.i:                                   ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tx.0, i32 %12)
  %cmp2.not.5.i = icmp ugt i32 %tx.0, %12
  br i1 %cmp2.not.5.i, label %while.cond.5.i.if.end26_crit_edge, label %while.cond.5.i.if.then3.i_crit_edge

while.cond.5.i.if.then3.i_crit_edge:              ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

while.cond.5.i.if.end26_crit_edge:                ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then3.i:                                       ; preds = %while.cond.5.i.if.then3.i_crit_edge, %while.cond.4.i.if.then3.i_crit_edge, %while.cond.3.i.if.then3.i_crit_edge, %while.cond.2.i.if.then3.i_crit_edge, %while.cond.1.i.if.then3.i_crit_edge, %while.cond.preheader.i.if.then3.i_crit_edge
  %dec.lcssa.i = phi i32 [ 5, %while.cond.preheader.i.if.then3.i_crit_edge ], [ 4, %while.cond.1.i.if.then3.i_crit_edge ], [ 3, %while.cond.2.i.if.then3.i_crit_edge ], [ 2, %while.cond.3.i.if.then3.i_crit_edge ], [ 1, %while.cond.4.i.if.then3.i_crit_edge ], [ 0, %while.cond.5.i.if.then3.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %dec.lcssa.i
  br label %if.end26

if.end26:                                         ; preds = %if.then3.i, %while.cond.5.i.if.end26_crit_edge
  %dec.lcssa.sink.i = phi i32 [ %dec.lcssa.i, %if.then3.i ], [ 0, %while.cond.5.i.if.end26_crit_edge ]
  %shl.sink.i = phi i32 [ %shl.i, %if.then3.i ], [ 1, %while.cond.5.i.if.end26_crit_edge ]
  %17 = ptrtoint ptr %hfactor to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec.lcssa.sink.i, ptr %hfactor, align 4
  %18 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.sink.i, ptr %pre_hratio, align 4
  %pre_vratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 4
  %vfactor = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 2
  %mul.i162 = shl i32 %ty.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i162, i32 %14)
  %cmp.not.i163 = icmp ugt i32 %mul.i162, %14
  br i1 %cmp.not.i163, label %while.cond.preheader.i166, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.i166:                        ; preds = %if.end26
  %mul1.i164 = shl i32 %ty.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i164, i32 %14)
  %cmp2.not.i165 = icmp ugt i32 %mul1.i164, %14
  br i1 %cmp2.not.i165, label %while.cond.1.i169, label %while.cond.preheader.i166.if.then3.i183_crit_edge

while.cond.preheader.i166.if.then3.i183_crit_edge: ; preds = %while.cond.preheader.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.1.i169:                                ; preds = %while.cond.preheader.i166
  %mul1.1.i167 = shl i32 %ty.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.1.i167, i32 %14)
  %cmp2.not.1.i168 = icmp ugt i32 %mul1.1.i167, %14
  br i1 %cmp2.not.1.i168, label %while.cond.2.i172, label %while.cond.1.i169.if.then3.i183_crit_edge

while.cond.1.i169.if.then3.i183_crit_edge:        ; preds = %while.cond.1.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.2.i172:                                ; preds = %while.cond.1.i169
  %mul1.2.i170 = shl i32 %ty.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.2.i170, i32 %14)
  %cmp2.not.2.i171 = icmp ugt i32 %mul1.2.i170, %14
  br i1 %cmp2.not.2.i171, label %while.cond.3.i175, label %while.cond.2.i172.if.then3.i183_crit_edge

while.cond.2.i172.if.then3.i183_crit_edge:        ; preds = %while.cond.2.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.3.i175:                                ; preds = %while.cond.2.i172
  %mul1.3.i173 = shl i32 %ty.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.3.i173, i32 %14)
  %cmp2.not.3.i174 = icmp ugt i32 %mul1.3.i173, %14
  br i1 %cmp2.not.3.i174, label %while.cond.4.i178, label %while.cond.3.i175.if.then3.i183_crit_edge

while.cond.3.i175.if.then3.i183_crit_edge:        ; preds = %while.cond.3.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.4.i178:                                ; preds = %while.cond.3.i175
  %mul1.4.i176 = shl nuw i32 %ty.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.4.i176, i32 %14)
  %cmp2.not.4.i177 = icmp ugt i32 %mul1.4.i176, %14
  br i1 %cmp2.not.4.i177, label %while.cond.5.i180, label %while.cond.4.i178.if.then3.i183_crit_edge

while.cond.4.i178.if.then3.i183_crit_edge:        ; preds = %while.cond.4.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.5.i180:                                ; preds = %while.cond.4.i178
  call void @__sanitizer_cov_trace_cmp4(i32 %ty.0, i32 %14)
  %cmp2.not.5.i179 = icmp ugt i32 %ty.0, %14
  br i1 %cmp2.not.5.i179, label %while.cond.5.i180.if.end30_crit_edge, label %while.cond.5.i180.if.then3.i183_crit_edge

while.cond.5.i180.if.then3.i183_crit_edge:        ; preds = %while.cond.5.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i183

while.cond.5.i180.if.end30_crit_edge:             ; preds = %while.cond.5.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then3.i183:                                    ; preds = %while.cond.5.i180.if.then3.i183_crit_edge, %while.cond.4.i178.if.then3.i183_crit_edge, %while.cond.3.i175.if.then3.i183_crit_edge, %while.cond.2.i172.if.then3.i183_crit_edge, %while.cond.1.i169.if.then3.i183_crit_edge, %while.cond.preheader.i166.if.then3.i183_crit_edge
  %dec.lcssa.i181 = phi i32 [ 5, %while.cond.preheader.i166.if.then3.i183_crit_edge ], [ 4, %while.cond.1.i169.if.then3.i183_crit_edge ], [ 3, %while.cond.2.i172.if.then3.i183_crit_edge ], [ 2, %while.cond.3.i175.if.then3.i183_crit_edge ], [ 1, %while.cond.4.i178.if.then3.i183_crit_edge ], [ 0, %while.cond.5.i180.if.then3.i183_crit_edge ]
  %shl.i182 = shl nuw nsw i32 1, %dec.lcssa.i181
  br label %if.end30

if.end30:                                         ; preds = %if.then3.i183, %while.cond.5.i180.if.end30_crit_edge
  %dec.lcssa.sink.i184 = phi i32 [ %dec.lcssa.i181, %if.then3.i183 ], [ 0, %while.cond.5.i180.if.end30_crit_edge ]
  %shl.sink.i185 = phi i32 [ %shl.i182, %if.then3.i183 ], [ 1, %while.cond.5.i180.if.end30_crit_edge ]
  %19 = ptrtoint ptr %vfactor to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec.lcssa.sink.i184, ptr %vfactor, align 4
  %20 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl.sink.i185, ptr %pre_vratio, align 4
  %21 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pre_hratio, align 4
  %div = udiv i32 %12, %22
  %pre_dst_width = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 5
  %23 = ptrtoint ptr %pre_dst_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %pre_dst_width, align 4
  %div33 = udiv i32 %14, %shl.sink.i185
  %pre_dst_height = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 6
  %24 = ptrtoint ptr %pre_dst_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div33, ptr %pre_dst_height, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %3, align 4
  %26 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool34.not = icmp eq i8 %26, 0
  %. = select i1 %tobool34.not, i32 8, i32 14
  %shl44 = shl i32 %12, %.
  %27 = ptrtoint ptr %hfactor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hfactor, align 4
  %shl46 = shl i32 %tx.0, %28
  %div47 = sdiv i32 %shl44, %shl46
  %shl49 = shl i32 %14, %.
  %29 = ptrtoint ptr %vfactor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vfactor, align 4
  %shl51 = shl i32 %ty.0, %30
  %div52 = sdiv i32 %shl49, %shl51
  %31 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 7
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div47, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div52, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx.0, i32 %12)
  %cmp55.not.not = icmp ult i32 %tx.0, %12
  %35 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load56 = load i8, ptr %scaler, align 4
  %bf.shl = select i1 %cmp55.not.not, i8 0, i8 -128
  %bf.clear57 = and i8 %bf.load56, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %ty.0, i32 %14)
  %cmp58.not.not = icmp ult i32 %ty.0, %14
  %bf.shl62 = select i1 %cmp58.not.not, i8 0, i8 64
  %bf.set = or i8 %bf.shl62, %bf.shl
  %bf.set64 = or i8 %bf.set, %bf.clear57
  %36 = ptrtoint ptr %scaler to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set64, ptr %scaler, align 4
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %color, align 4
  %fmt66 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %fmt66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fmt66, align 4
  %color67 = getelementptr inbounds %struct.fimc_fmt, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %color67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %color67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp68 = icmp eq i32 %40, %44
  br i1 %cmp68, label %land.lhs.true, label %if.end30.if.else80_crit_edge

if.end30.if.else80_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else80

land.lhs.true:                                    ; preds = %if.end30
  %width70 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %width70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %46)
  %cmp71 = icmp eq i32 %12, %46
  br i1 %cmp71, label %land.lhs.true72, label %land.lhs.true.if.else80_crit_edge

land.lhs.true.if.else80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else80

land.lhs.true72:                                  ; preds = %land.lhs.true
  %height74 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %47 = ptrtoint ptr %height74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %48)
  %cmp75 = icmp eq i32 %14, %48
  br i1 %cmp75, label %if.then76, label %land.lhs.true72.if.else80_crit_edge

land.lhs.true72.if.else80_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else80

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set79 = or i8 %bf.set64, 32
  br label %if.end84

if.else80:                                        ; preds = %land.lhs.true72.if.else80_crit_edge, %land.lhs.true.if.else80_crit_edge, %if.end30.if.else80_crit_edge
  %bf.clear82 = and i8 %bf.set64, -33
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then76
  %storemerge = phi i8 [ %bf.clear82, %if.else80 ], [ %bf.set79, %if.then76 ]
  %49 = ptrtoint ptr %scaler to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %storemerge, ptr %scaler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end26.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end23 ], [ 0, %if.end84 ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_prepare_addr(ptr nocapture noundef readnone %ctx, ptr noundef %vb, ptr noundef readonly %frame, ptr nocapture noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vb, null
  %cmp1 = icmp eq ptr %frame, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 6
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 7
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %mul = mul i32 %3, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_prepare_addr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_prepare_addr, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !136

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 12
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %7 to i32
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %colplanes, align 2
  %conv6 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_prepare_addr.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 341, i32 noundef %conv, i32 noundef %conv6, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 0) #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr, align 4
  %fmt9 = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 12
  %13 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt9, align 4
  %memplanes10 = getelementptr inbounds %struct.fimc_fmt, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %memplanes10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %memplanes10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp12 = icmp eq i16 %16, 1
  br i1 %cmp12, label %if.then14, label %if.else38

if.then14:                                        ; preds = %do.end
  %colplanes16 = getelementptr inbounds %struct.fimc_fmt, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %colplanes16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %colplanes16, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %18, label %if.then14.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb18
    i16 3, label %sw.bb22
  ]

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cb, align 4
  br label %do.body62.sink.split

sw.bb18:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %11, %mul
  %cb20 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %21 = ptrtoint ptr %cb20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %cb20, align 4
  br label %do.body62.sink.split

sw.bb22:                                          ; preds = %if.then14
  %add24 = add i32 %11, %mul
  %cb25 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %22 = ptrtoint ptr %cb25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add24, ptr %cb25, align 4
  %23 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt9, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp27 = icmp eq i32 %26, 32
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %mul, 2
  %add31 = add i32 %add24, %shr
  br label %do.body62.sink.split

if.else:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %shr34 = lshr i32 %mul, 1
  %add35 = add i32 %add24, %shr34
  br label %do.body62.sink.split

if.else38:                                        ; preds = %do.end
  %mdataplanes = getelementptr inbounds %struct.fimc_fmt, ptr %14, i32 0, i32 7
  %27 = ptrtoint ptr %mdataplanes to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mdataplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool40.not = icmp eq i16 %28, 0
  br i1 %tobool40.not, label %if.then41, label %if.else38.do.body62_crit_edge

if.else38.do.body62_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body62

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp45 = icmp ugt i16 %16, 1
  br i1 %cmp45, label %if.then47, label %if.then41.if.end50_crit_edge

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %call.i119 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 1) #11
  %29 = ptrtoint ptr %call.i119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i119, align 4
  %cb49 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %31 = ptrtoint ptr %cb49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cb49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then41.if.end50_crit_edge
  %32 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fmt9, align 4
  %memplanes52 = getelementptr inbounds %struct.fimc_fmt, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %memplanes52 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %memplanes52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %cmp54 = icmp eq i16 %35, 3
  br i1 %cmp54, label %if.then56, label %if.end50.do.body62_crit_edge

if.end50.do.body62_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body62

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %call.i120 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 2) #11
  %36 = ptrtoint ptr %call.i120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i120, align 4
  br label %do.body62.sink.split

do.body62.sink.split:                             ; preds = %if.then56, %if.else, %if.then29, %sw.bb18, %sw.bb
  %add31.sink = phi i32 [ %add31, %if.then29 ], [ %add35, %if.else ], [ 0, %sw.bb18 ], [ 0, %sw.bb ], [ %37, %if.then56 ]
  %cr32 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 2
  %38 = ptrtoint ptr %cr32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add31.sink, ptr %cr32, align 4
  br label %do.body62

do.body62:                                        ; preds = %do.body62.sink.split, %if.end50.do.body62_crit_edge, %if.else38.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_prepare_addr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_prepare_addr, %if.then74)) #11
          to label %cleanup [label %if.then74], !srcloc !136

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr, align 4
  %cb76 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %41 = ptrtoint ptr %cb76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cb76, align 4
  %cr77 = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 2
  %43 = ptrtoint ptr %cr77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cr77, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_prepare_addr.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 376, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.body62, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %do.body62 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_set_yuv_order(ptr nocapture noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %in_order_2p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %in_order_2p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %in_order_2p, align 4
  %out_order_2p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %out_order_2p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %out_order_2p, align 4
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color, align 4
  %switch.tableidx = add i32 %5, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fimc_set_yuv_order, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %entry.do.body_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 48, %entry.do.body_crit_edge ]
  %in_order_1p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %in_order_1p to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %in_order_1p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_set_yuv_order.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_set_yuv_order, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %in_order_1p9 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %in_order_1p9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_order_1p9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_set_yuv_order.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 404, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %fmt10 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt10, align 4
  %color11 = getelementptr inbounds %struct.fimc_fmt, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %color11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %color11, align 4
  %switch.tableidx57 = add i32 %14, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx57)
  %15 = icmp ult i32 %switch.tableidx57, 3
  %switch.offset = add i32 %14, -33
  %.sink55 = select i1 %15, i32 %switch.offset, i32 0
  %out_order_1p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %out_order_1p to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink55, ptr %out_order_1p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_set_yuv_order.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_set_yuv_order, %if.then33)) #11
          to label %do.end36 [label %if.then33], !srcloc !136

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %out_order_1p34 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %out_order_1p34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_order_1p34, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_set_yuv_order.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 421, i32 noundef %18) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_prepare_dma_offset(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %f) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 8
  %dma_pix_hoff = getelementptr inbounds %struct.fimc_drvdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_pix_hoff to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_pix_hoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 12
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp83.not = icmp eq i16 %9, 0
  br i1 %cmp83.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %depth.084 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_fmt, ptr %7, i32 0, i32 6, i32 %i.085
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %11 to i32
  %add = add i32 %depth.084, %conv4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = lshr i32 %add, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %depth.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offs_h, align 4
  %dma_offset = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11
  %mul = select i1 %tobool.not, i32 %depth.0.lcssa, i32 1
  %storemerge = mul i32 %13, %mul
  %14 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %dma_offset, align 4
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 5
  %15 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offs_v, align 4
  %y_v = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %y_v to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %y_v, align 4
  %cb_h = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %cb_h to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %cb_h, align 4
  %cb_v = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %cb_v to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %cb_v, align 4
  %cr_h = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11, i32 4
  %20 = ptrtoint ptr %cr_h to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %cr_h, align 4
  %cr_v = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 11, i32 5
  %21 = ptrtoint ptr %cr_v to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %cr_v, align 4
  br i1 %tobool.not, label %if.then18, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then18:                                        ; preds = %for.end
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %colplanes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp21 = icmp eq i16 %23, 3
  br i1 %cmp21, label %if.then23, label %if.then18.if.end30_crit_edge

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %shr26 = ashr i32 %13, 1
  %24 = ptrtoint ptr %cb_h to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr26, ptr %cb_h, align 4
  %25 = ptrtoint ptr %cr_h to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr26, ptr %cr_h, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.then18.if.end30_crit_edge
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp32 = icmp eq i32 %27, 32
  br i1 %cmp32, label %if.then34, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %shr37 = ashr i32 %16, 1
  %28 = ptrtoint ptr %cb_v to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr37, ptr %cb_v, align 4
  %29 = ptrtoint ptr %cr_v to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr37, ptr %cr_v, align 4
  br label %do.body

do.body:                                          ; preds = %if.then34, %if.end30.do.body_crit_edge, %for.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_prepare_dma_offset.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_prepare_dma_offset, %if.then47)) #11
          to label %do.end [label %if.then47], !srcloc !136

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fmt, align 4
  %color49 = getelementptr inbounds %struct.fimc_fmt, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %color49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %color49, align 4
  %34 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_offset, align 4
  %36 = ptrtoint ptr %y_v to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %y_v, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_prepare_dma_offset.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 456, i32 noundef %33, i32 noundef %35, i32 noundef %37) #11
  br label %do.end

do.end:                                           ; preds = %if.then47, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_ctrls_create(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %color.i = getelementptr inbounds %struct.fimc_fmt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color.i, align 4
  %switch.tableidx = add i32 %3, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %entry.fimc_get_alpha_mask.exit_crit_edge

entry.fimc_get_alpha_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_get_alpha_mask.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.fimc_ctrls_create, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %fimc_get_alpha_mask.exit

fimc_get_alpha_mask.exit:                         ; preds = %switch.lookup, %entry.fimc_get_alpha_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.fimc_get_alpha_mask.exit_crit_edge ]
  %ctrls1 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16
  %ready = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 6
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %fimc_get_alpha_mask.exit.cleanup_crit_edge

fimc_get_alpha_mask.exit.cleanup_crit_edge:       ; preds = %fimc_get_alpha_mask.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %fimc_get_alpha_mask.exit
  %call4 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls1, i32 noundef 6, ptr noundef nonnull @fimc_ctrls_create._key, ptr noundef nonnull @.str.17) #11
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #11
  %rotate = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %rotate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %rotate, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %hflip = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 3
  %9 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %hflip, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %vflip = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 4
  %10 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %vflip, align 4
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %11 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fimc_dev, align 4
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 8
  %alpha_color = getelementptr inbounds %struct.fimc_drvdata, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %alpha_color to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %alpha_color, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %retval.0.i to i64
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef %conv, i64 noundef 1, i64 noundef 0) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %call10.sink = phi ptr [ %call10, %if.then9 ], [ null, %if.end.if.end12_crit_edge ]
  %17 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10.sink, ptr %17, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 15, i64 noundef -38976, i8 noundef zeroext 0) #11
  %19 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %19, align 4
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963818, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #11
  %colorfx_cbcr = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 1, i32 1
  %21 = ptrtoint ptr %colorfx_cbcr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14, ptr %colorfx_cbcr, align 4
  %effect = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9
  %22 = ptrtoint ptr %effect to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %effect, align 4
  %error = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 0, i32 9
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %19) #11
  %25 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ready, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %fimc_get_alpha_mask.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.end19 ], [ 0, %fimc_get_alpha_mask.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_ctrls_delete(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 6
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctrls1 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls1) #11
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ready, align 4
  %alpha = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 5
  %3 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_ctrls_activate(ptr noundef %ctx, i1 noundef zeroext %active) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %flags = getelementptr inbounds %struct.fimc_fmt, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 8
  %ready = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 6
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ready, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 0, i32 1
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %8, i32 noundef 0) #11
  %rotate = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rotate, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %10, i1 noundef zeroext %active) #11
  %hflip = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 3
  %11 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hflip, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %12, i1 noundef zeroext %active) #11
  %vflip = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 4
  %13 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vflip, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %14, i1 noundef zeroext %active) #11
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %17, i1 noundef zeroext %active) #11
  %alpha = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 5
  %18 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %alpha, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool11 = icmp ne i16 %4, 0
  %spec.select = select i1 %active, i1 %tobool11, i1 false
  tail call void @v4l2_ctrl_activate(ptr noundef nonnull %19, i1 noundef zeroext %spec.select) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  br i1 %active, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur, align 8
  %effect1.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %23, label %if.then14.fimc_set_color_effect.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb8.i
    i32 4, label %sw.bb10.i
    i32 11, label %sw.bb12.i
    i32 12, label %sw.bb14.i
    i32 15, label %sw.bb16.i
  ]

if.then14.fimc_set_color_effect.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_set_color_effect.exit

sw.bb.i:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %effect1.i, align 4
  br label %fimc_set_color_effect.exit

sw.bb2.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 67108864, ptr %effect1.i, align 4
  %pat_cb.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %pat_cb.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %pat_cb.i, align 4
  %pat_cr.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %pat_cr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %pat_cr.i, align 1
  br label %fimc_set_color_effect.exit

sw.bb4.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 67108864, ptr %effect1.i, align 4
  %pat_cb6.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %pat_cb6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 115, ptr %pat_cb6.i, align 4
  %pat_cr7.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %pat_cr7.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -111, ptr %pat_cr7.i, align 1
  br label %fimc_set_color_effect.exit

sw.bb8.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 134217728, ptr %effect1.i, align 4
  br label %fimc_set_color_effect.exit

sw.bb10.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268435456, ptr %effect1.i, align 4
  br label %fimc_set_color_effect.exit

sw.bb12.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 201326592, ptr %effect1.i, align 4
  br label %fimc_set_color_effect.exit

sw.bb14.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 335544320, ptr %effect1.i, align 4
  br label %fimc_set_color_effect.exit

sw.bb16.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %effect1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67108864, ptr %effect1.i, align 4
  %colorfx_cbcr.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 1, i32 1
  %37 = ptrtoint ptr %colorfx_cbcr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %colorfx_cbcr.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %41 = lshr i32 %40, 8
  %conv.i = trunc i32 %41 to i8
  %pat_cb18.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %pat_cb18.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %pat_cb18.i, align 4
  %43 = load i32, ptr %val.i, align 4
  %conv22.i = trunc i32 %43 to i8
  %pat_cr23.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %pat_cr23.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv22.i, ptr %pat_cr23.i, align 1
  br label %fimc_set_color_effect.exit

fimc_set_color_effect.exit:                       ; preds = %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i, %if.then14.fimc_set_color_effect.exit_crit_edge
  %45 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rotate, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val17, align 4
  %rotation = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %49 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rotation, align 4
  %50 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hflip, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val19, align 4
  %hflip20 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 11
  %54 = trunc i32 %53 to i8
  %55 = ptrtoint ptr %hflip20 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %hflip20, align 4
  %bf.shl = shl i8 %54, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %hflip20, align 4
  %56 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vflip, align 4
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 22
  %58 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val22, align 4
  %60 = trunc i32 %59 to i8
  %bf.value25 = shl i8 %60, 6
  %bf.shl26 = and i8 %bf.value25, 64
  %bf.clear27 = and i8 %bf.set, -65
  %bf.set28 = or i8 %bf.shl26, %bf.clear27
  store i8 %bf.set28, ptr %hflip20, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %effect = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9
  %61 = ptrtoint ptr %effect to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %effect, align 4
  %rotation30 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %62 = ptrtoint ptr %rotation30 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rotation30, align 4
  %hflip31 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 11
  %63 = ptrtoint ptr %hflip31 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load32 = load i8, ptr %hflip31, align 4
  %bf.clear37 = and i8 %bf.load32, 63
  store i8 %bf.clear37, ptr %hflip31, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %fimc_set_color_effect.exit
  %64 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %65) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_alpha_ctrl_update(ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %alpha = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 16, i32 5
  %0 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alpha, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 8
  %alpha_color = getelementptr inbounds %struct.fimc_drvdata, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %alpha_color to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alpha_color, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #11
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 4
  %color.i = getelementptr inbounds %struct.fimc_fmt, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color.i, align 4
  %switch.tableidx = add i32 %15, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 5
  br i1 %16, label %switch.lookup, label %if.end.fimc_get_alpha_mask.exit_crit_edge

if.end.fimc_get_alpha_mask.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_get_alpha_mask.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.fimc_alpha_ctrl_update, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %fimc_get_alpha_mask.exit

fimc_get_alpha_mask.exit:                         ; preds = %switch.lookup, %if.end.fimc_get_alpha_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.fimc_get_alpha_mask.exit_crit_edge ]
  %18 = zext i32 %retval.0.i to i64
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %maximum to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %maximum, align 8
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %retval.0.i)
  %cmp3 = icmp sgt i32 %21, %retval.0.i
  br i1 %cmp3, label %if.then5, label %fimc_get_alpha_mask.exit.if.end10_crit_edge

fimc_get_alpha_mask.exit.if.end10_crit_edge:      ; preds = %fimc_get_alpha_mask.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %fimc_get_alpha_mask.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %cur, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %fimc_get_alpha_mask.exit.if.end10_crit_edge
  %23 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i, align 8
  %lock.i22 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i22, align 4
  tail call void @mutex_unlock(ptr noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fimc_get_format(ptr nocapture noundef readonly %frame, ptr nocapture noundef %f) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 2
  %0 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %o_width, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %fmt, align 1
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 3
  %3 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %o_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %field, align 1
  %fmt1 = getelementptr inbounds %struct.fimc_frame, ptr %frame, i32 0, i32 12
  %7 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt1, align 4
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %pixelformat, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 7, ptr %colorspace, align 1
  %13 = load ptr, ptr %fmt1, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %memplanes, align 4
  %conv = trunc i16 %15 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %num_planes, align 1
  %conv.mask = and i16 %15, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.mask)
  %cmp30.not = icmp eq i16 %conv.mask, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_frame, ptr %frame, i32 0, i32 9, i32 %i.031
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.031
  %bytesperline7 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.031, i32 1
  %19 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %bytesperline7, align 1
  %arrayidx8 = getelementptr %struct.fimc_frame, ptr %frame, i32 0, i32 8, i32 %i.031
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %arrayidx6, align 1
  %inc = add nuw nsw i32 %i.031, 1
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes, align 1
  %conv4 = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_adjust_mplane_format(ptr nocapture noundef readonly %fmt, i32 noundef %width, i32 noundef %height, ptr nocapture noundef %pix) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 4
  %0 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 7, ptr %colorspace, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %1 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %field, align 1
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %fmt, i32 0, i32 3
  %2 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %memplanes, align 4
  %conv = trunc i16 %3 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %num_planes, align 1
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %fmt, i32 0, i32 1
  %5 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %pixelformat, align 1
  %height1 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %8 = ptrtoint ptr %height1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %height, ptr %height1, align 1
  %9 = ptrtoint ptr %pix to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %width, ptr %pix, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp120.not = icmp eq i8 %conv, 0
  br i1 %cmp120.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %fmt, i32 0, i32 4
  %depth32 = getelementptr inbounds %struct.fimc_fmt, ptr %fmt, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %bytesperline.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %bytesperline.1, %if.end66.for.body_crit_edge ]
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end66.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %i.0121
  %bytesperline7 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %i.0121, i32 1
  %10 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %bytesperline7, align 1
  %12 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %colplanes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp9 = icmp ugt i16 %13, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pix, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp14 = icmp ult i32 %11, %15
  br i1 %cmp14, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %16 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %pix, align 1
  br label %if.end37

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp19 = icmp eq i16 %13, 1
  br i1 %cmp19, label %land.lhs.true21, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true21:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22 = icmp eq i32 %11, 0
  br i1 %cmp22, label %land.lhs.true21.if.then30_crit_edge, label %lor.lhs.false24

land.lhs.true21.if.then30_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false24:                                  ; preds = %land.lhs.true21
  %mul = shl i32 %11, 3
  %arrayidx25 = getelementptr %struct.fimc_fmt, ptr %fmt, i32 0, i32 6, i32 %i.0121
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %div = udiv i32 %mul, %conv26
  %20 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %pix, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %21)
  %cmp28 = icmp ult i32 %div, %21
  br i1 %cmp28, label %lor.lhs.false24.if.then30_crit_edge, label %lor.lhs.false24.if.end37_crit_edge

lor.lhs.false24.if.end37_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

lor.lhs.false24.if.then30_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false24.if.then30_crit_edge, %land.lhs.true21.if.then30_crit_edge
  %22 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %pix, align 1
  %24 = ptrtoint ptr %depth32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %depth32, align 1
  %conv34 = zext i8 %25 to i32
  %mul35 = mul i32 %23, %conv34
  %div36116 = lshr i32 %mul35, 3
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %lor.lhs.false24.if.end37_crit_edge, %if.end.if.end37_crit_edge, %if.then, %lor.lhs.false.if.end37_crit_edge
  %bpl.1 = phi i32 [ %div36116, %if.then30 ], [ %11, %lor.lhs.false24.if.end37_crit_edge ], [ %11, %if.end.if.end37_crit_edge ], [ %11, %lor.lhs.false.if.end37_crit_edge ], [ %17, %if.then ]
  %26 = zext i32 %i.0121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %i.0121, label %if.end51.fold.split [
    i32 0, label %if.end37.if.end51_crit_edge
    i32 1, label %land.lhs.true43
  ]

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true43:                                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %memplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp46 = icmp eq i16 %28, 3
  %div49115 = zext i1 %cmp46 to i32
  %spec.select = lshr i32 %bytesperline.0122, %div49115
  br label %if.end51

if.end51.fold.split:                              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end51:                                         ; preds = %if.end51.fold.split, %land.lhs.true43, %if.end37.if.end51_crit_edge
  %bytesperline.1 = phi i32 [ %bpl.1, %if.end37.if.end51_crit_edge ], [ %bytesperline.0122, %if.end51.fold.split ], [ %spec.select, %land.lhs.true43 ]
  %29 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %bytesperline.1, ptr %bytesperline7, align 1
  %30 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %pix, align 1
  %32 = ptrtoint ptr %height1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %height1, align 1
  %mul55 = mul i32 %33, %31
  %arrayidx57 = getelementptr %struct.fimc_fmt, ptr %fmt, i32 0, i32 6, i32 %i.0121
  %34 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %35 to i32
  %mul59 = mul i32 %mul55, %conv58
  %div60114 = lshr i32 %mul59, 3
  %36 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091860, i32 %37)
  %cmp.i.not = icmp eq i32 %37, 842091860
  br i1 %cmp.i.not, label %if.then61, label %if.end51.if.end66_crit_edge

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then61:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %mul63 = shl i32 %bytesperline.1, 5
  %sub = add i32 %mul63, -1
  %add = add i32 %sub, %div60114
  %38 = urem i32 %add, %mul63
  %mul65 = sub i32 %add, %38
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end51.if.end66_crit_edge
  %sizeimage.0 = phi i32 [ %mul65, %if.then61 ], [ %div60114, %if.end51.if.end66_crit_edge ]
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx, align 1
  %41 = tail call i32 @llvm.umax.i32(i32 %sizeimage.0, i32 %40)
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0121, 1
  %43 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_planes, align 1
  %conv4 = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %if.end66.for.body_crit_edge, label %if.end66.for.end_crit_edge

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end66.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fimc_find_format(ptr noundef readonly %pixelformat, ptr noundef readonly %mbus_code, i32 noundef %mask, i32 noundef %index) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %index)
  %cmp = icmp sgt i32 %index, 19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool4.not = icmp eq ptr %pixelformat, null
  %tobool9.not = icmp eq ptr %mbus_code, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %id.039 = phi i32 [ 0, %for.cond.preheader ], [ %id.1, %for.inc.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %for.cond.preheader ], [ %inc20, %for.inc.for.body_crit_edge ]
  %def_fmt.035 = phi ptr [ null, %for.cond.preheader ], [ %def_fmt.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %i.036
  %flags = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %i.036, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3:                                          ; preds = %for.body
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %land.lhs.true

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %fourcc = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %i.036, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp eq i32 %3, %5
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.end8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp12 = icmp eq i32 %7, %9
  br i1 %cmp12, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.039, i32 %index)
  %cmp16 = icmp eq i32 %id.039, %index
  %spec.select = select i1 %cmp16, ptr %arrayidx, ptr %def_fmt.035
  %inc = add i32 %id.039, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %def_fmt.2 = phi ptr [ %spec.select, %if.end15 ], [ %def_fmt.035, %for.body.for.inc_crit_edge ]
  %id.1 = phi i32 [ %inc, %if.end15 ], [ %id.039, %for.body.for.inc_crit_edge ]
  %inc20 = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc20, 20
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %def_fmt.2, %for.inc.cleanup_crit_edge ], [ %arrayidx, %land.lhs.true10.cleanup_crit_edge ], [ %arrayidx, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_register_driver() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_unregister_driver() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %fimc_dev = getelementptr i8, ptr %1, i32 -196
  %2 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fimc_dev, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %4 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fimc_dev, align 4
  %variant1.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant1.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__fimc_s_ctrl.exit_crit_edge

entry.__fimc_s_ctrl.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_s_ctrl.exit

if.end.i:                                         ; preds = %entry
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %if.end.i.sw.epilog.i_crit_edge [
    i32 9963796, label %sw.bb.i
    i32 9963797, label %sw.bb2.i
    i32 9963810, label %sw.bb10.i
    i32 9963817, label %sw.bb32.i
    i32 9963807, label %sw.bb35.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr i8, ptr %1, i32 -208
  %15 = trunc i32 %14 to i8
  %16 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  %bf.shl.i = shl i8 %15, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %hflip.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val3.i, align 4
  %vflip.i = getelementptr i8, ptr %1, i32 -208
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load4.i = load i8, ptr %vflip.i, align 4
  %bf.value5.i = shl i8 %19, 6
  %bf.shl6.i = and i8 %bf.value5.i, 64
  %bf.clear7.i = and i8 %bf.load4.i, -65
  %bf.set8.i = or i8 %bf.shl6.i, %bf.clear7.i
  store i8 %bf.set8.i, ptr %vflip.i, align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.i = icmp eq i32 %23, 0
  br i1 %tobool11.not.i, label %sw.bb10.i.if.end22.i_crit_edge, label %if.then12.i

sw.bb10.i.if.end22.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then12.i:                                      ; preds = %sw.bb10.i
  %width.i = getelementptr i8, ptr %1, i32 -544
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 4
  %height.i = getelementptr i8, ptr %1, i32 -540
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %width14.i = getelementptr i8, ptr %1, i32 -404
  %28 = ptrtoint ptr %width14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width14.i, align 4
  %height16.i = getelementptr i8, ptr %1, i32 -400
  %30 = ptrtoint ptr %height16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height16.i, align 4
  %val17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val17.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %33, label %if.then12.i.if.end.i.i_crit_edge [
    i32 90, label %if.then12.i.do.body.i.i_crit_edge
    i32 270, label %if.then12.i.do.body.i.i_crit_edge12
  ]

if.then12.i.do.body.i.i_crit_edge12:              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.then12.i.do.body.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.then12.i.if.end.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %if.then12.i.do.body.i.i_crit_edge, %if.then12.i.do.body.i.i_crit_edge12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i, %if.then12.i.if.end.i.i_crit_edge
  %dh.addr.0.i.i = phi i32 [ %29, %do.body.i.i ], [ %31, %if.then12.i.if.end.i.i_crit_edge ]
  %dw.addr.0.i.i = phi i32 [ %31, %do.body.i.i ], [ %29, %if.then12.i.if.end.i.i_crit_edge ]
  %scaler.i.i = getelementptr i8, ptr %1, i32 -264
  %35 = ptrtoint ptr %scaler.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %scaler.i.i, align 4
  %36 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %fimc_check_scaler_ratio.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %mul.i.i = shl i32 %dw.addr.0.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %25)
  %cmp6.not.i.i = icmp sgt i32 %mul.i.i, %25
  %mul8.i.i = shl i32 %dh.addr.0.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i.i, i32 %27)
  %cmp9.not.i.i = icmp sgt i32 %mul8.i.i, %27
  %or.cond.i.i = and i1 %cmp9.not.i.i, %cmp6.not.i.i
  br i1 %or.cond.i.i, label %if.end5.i.i.if.end22.i_crit_edge, label %if.end5.i.i.__fimc_s_ctrl.exit_crit_edge

if.end5.i.i.__fimc_s_ctrl.exit_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_s_ctrl.exit

if.end5.i.i.if.end22.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

fimc_check_scaler_ratio.exit.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dw.addr.0.i.i, i32 %25)
  %cmp3.i.i = icmp eq i32 %dw.addr.0.i.i, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %dh.addr.0.i.i, i32 %27)
  %cmp4.i.i = icmp eq i32 %dh.addr.0.i.i, %27
  %37 = and i1 %cmp4.i.i, %cmp3.i.i
  br i1 %37, label %fimc_check_scaler_ratio.exit.i.if.end22.i_crit_edge, label %fimc_check_scaler_ratio.exit.i.__fimc_s_ctrl.exit_crit_edge

fimc_check_scaler_ratio.exit.i.__fimc_s_ctrl.exit_crit_edge: ; preds = %fimc_check_scaler_ratio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_s_ctrl.exit

fimc_check_scaler_ratio.exit.i.if.end22.i_crit_edge: ; preds = %fimc_check_scaler_ratio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %fimc_check_scaler_ratio.exit.i.if.end22.i_crit_edge, %if.end5.i.i.if.end22.i_crit_edge, %sw.bb10.i.if.end22.i_crit_edge
  %val23.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val23.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %39, label %if.end22.i.if.end30.i_crit_edge [
    i32 90, label %if.end22.i.land.lhs.true.i_crit_edge
    i32 270, label %if.end22.i.land.lhs.true.i_crit_edge13
  ]

if.end22.i.land.lhs.true.i_crit_edge13:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end22.i.land.lhs.true.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end22.i.land.lhs.true.i_crit_edge, %if.end22.i.land.lhs.true.i_crit_edge13
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load26.i = load i8, ptr %7, align 4
  %42 = and i8 %bf.load26.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool28.not.i = icmp eq i8 %42, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.__fimc_s_ctrl.exit_crit_edge, label %land.lhs.true.i.if.end30.i_crit_edge

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

land.lhs.true.i.__fimc_s_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_s_ctrl.exit

if.end30.i:                                       ; preds = %land.lhs.true.i.if.end30.i_crit_edge, %if.end22.i.if.end30.i_crit_edge
  %rotation.i = getelementptr i8, ptr %1, i32 -212
  %43 = ptrtoint ptr %rotation.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %rotation.i, align 4
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %val33.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val33.i, align 4
  %conv.i = trunc i32 %45 to i8
  %alpha.i = getelementptr i8, ptr %1, i32 -292
  %46 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %alpha.i, align 4
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end.i
  %val36.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val36.i, align 4
  %effect1.i.i = getelementptr i8, ptr %1, i32 -220
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %48, label %sw.bb35.i.__fimc_s_ctrl.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb4.i.i
    i32 3, label %sw.bb8.i.i
    i32 4, label %sw.bb10.i.i
    i32 11, label %sw.bb12.i.i
    i32 12, label %sw.bb14.i.i
    i32 15, label %sw.bb16.i.i
  ]

sw.bb35.i.__fimc_s_ctrl.exit_crit_edge:           ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fimc_s_ctrl.exit

sw.bb.i.i:                                        ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %effect1.i.i, align 4
  br label %sw.epilog.i

sw.bb2.i.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 67108864, ptr %effect1.i.i, align 4
  %pat_cb.i.i = getelementptr i8, ptr %1, i32 -216
  %52 = ptrtoint ptr %pat_cb.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -128, ptr %pat_cb.i.i, align 4
  %pat_cr.i.i = getelementptr i8, ptr %1, i32 -215
  %53 = ptrtoint ptr %pat_cr.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %pat_cr.i.i, align 1
  br label %sw.epilog.i

sw.bb4.i.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108864, ptr %effect1.i.i, align 4
  %pat_cb6.i.i = getelementptr i8, ptr %1, i32 -216
  %55 = ptrtoint ptr %pat_cb6.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 115, ptr %pat_cb6.i.i, align 4
  %pat_cr7.i.i = getelementptr i8, ptr %1, i32 -215
  %56 = ptrtoint ptr %pat_cr7.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -111, ptr %pat_cr7.i.i, align 1
  br label %sw.epilog.i

sw.bb8.i.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 134217728, ptr %effect1.i.i, align 4
  br label %sw.epilog.i

sw.bb10.i.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 268435456, ptr %effect1.i.i, align 4
  br label %sw.epilog.i

sw.bb12.i.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 201326592, ptr %effect1.i.i, align 4
  br label %sw.epilog.i

sw.bb14.i.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 335544320, ptr %effect1.i.i, align 4
  br label %sw.epilog.i

sw.bb16.i.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %effect1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 67108864, ptr %effect1.i.i, align 4
  %colorfx_cbcr.i.i = getelementptr i8, ptr %1, i32 188
  %62 = ptrtoint ptr %colorfx_cbcr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %colorfx_cbcr.i.i, align 4
  %val.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i.i, align 4
  %66 = lshr i32 %65, 8
  %conv.i.i = trunc i32 %66 to i8
  %pat_cb18.i.i = getelementptr i8, ptr %1, i32 -216
  %67 = ptrtoint ptr %pat_cb18.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i.i, ptr %pat_cb18.i.i, align 4
  %68 = load i32, ptr %val.i.i, align 4
  %conv22.i.i = trunc i32 %68 to i8
  %pat_cr23.i.i = getelementptr i8, ptr %1, i32 -215
  %69 = ptrtoint ptr %pat_cr23.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv22.i.i, ptr %pat_cr23.i.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb16.i.i, %sw.bb14.i.i, %sw.bb12.i.i, %sw.bb10.i.i, %sw.bb8.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb.i.i, %sw.bb32.i, %if.end30.i, %sw.bb2.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %state41.i = getelementptr i8, ptr %1, i32 -200
  %70 = ptrtoint ptr %state41.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %state41.i, align 4
  %or.i = or i32 %71, 1
  store i32 %or.i, ptr %state41.i, align 4
  %state42.i = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state42.i) #11
  br label %__fimc_s_ctrl.exit

__fimc_s_ctrl.exit:                               ; preds = %sw.epilog.i, %sw.bb35.i.__fimc_s_ctrl.exit_crit_edge, %land.lhs.true.i.__fimc_s_ctrl.exit_crit_edge, %fimc_check_scaler_ratio.exit.i.__fimc_s_ctrl.exit_crit_edge, %if.end5.i.i.__fimc_s_ctrl.exit_crit_edge, %entry.__fimc_s_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 0, %entry.__fimc_s_ctrl.exit_crit_edge ], [ -22, %fimc_check_scaler_ratio.exit.i.__fimc_s_ctrl.exit_crit_edge ], [ -22, %land.lhs.true.i.__fimc_s_ctrl.exit_crit_edge ], [ -22, %if.end5.i.i.__fimc_s_ctrl.exit_crit_edge ], [ -22, %sw.bb35.i.__fimc_s_ctrl.exit_crit_edge ]
  %72 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fimc_dev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %call3) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  %lclk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lclk_freq) #11
  %0 = ptrtoint ptr %lclk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lclk_freq, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3960, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev2, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #11
  %4 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 3
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.33, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then4.fimc_parse_dt.exit.thread_crit_edge

if.then4.fimc_parse_dt.exit.thread_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then4
  %call.i146.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call.i146.i, null
  br i1 %tobool.not.i, label %if.end.i.fimc_parse_dt.exit.thread_crit_edge, label %if.end4.i

if.end.i.fimc_parse_dt.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_parse_dt.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @of_match_node(ptr noundef nonnull @fimc_of_match, ptr noundef nonnull %3) #11
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.fimc_parse_dt.exit.thread_crit_edge, label %if.end8.i

if.end4.i.fimc_parse_dt.exit.thread_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call5.i, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %drv_data.i = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %drv_data.i, align 8
  %call.i147.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.34, ptr noundef nonnull %args.i, i32 noundef 4, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp.i = icmp slt i32 %call.i147.i, 0
  br i1 %cmp.i, label %fimc_parse_dt.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end8.i
  %arrayidx.i = getelementptr %struct.fimc_variant, ptr %call.i146.i, i32 1
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args.i, align 4
  %conv.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %conv14.i = trunc i32 %15 to i16
  %scaler_dis_w.i = getelementptr inbounds %struct.fimc_pix_limit, ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %scaler_dis_w.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14.i, ptr %scaler_dis_w.i, align 2
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %conv16.i = trunc i32 %18 to i16
  %out_rot_en_w.i = getelementptr %struct.fimc_variant, ptr %call.i146.i, i32 1, i32 2
  %19 = ptrtoint ptr %out_rot_en_w.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv16.i, ptr %out_rot_en_w.i, align 2
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  %conv18.i = trunc i32 %21 to i16
  %out_rot_dis_w.i = getelementptr %struct.fimc_variant, ptr %call.i146.i, i32 1, i32 3
  %22 = ptrtoint ptr %out_rot_dis_w.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv18.i, ptr %out_rot_dis_w.i, align 2
  %pix_limit.i = getelementptr inbounds %struct.fimc_variant, ptr %call.i146.i, i32 0, i32 1
  %23 = ptrtoint ptr %pix_limit.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %pix_limit.i, align 4
  %call.i148.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.35, ptr noundef nonnull %args.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i148.i)
  %tobool21.not.i = icmp sgt i32 %call.i148.i, -1
  br i1 %tobool21.not.i, label %cond.false.i, label %if.end11.i.cond.end28.i_crit_edge

if.end11.i.cond.end28.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end28.i

cond.false.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args.i, align 4
  %phi.cast.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %4, align 4
  %phi.cast138.i = trunc i32 %27 to i16
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false.i, %if.end11.i.cond.end28.i_crit_edge
  %.sink.i = phi i16 [ %phi.cast.i, %cond.false.i ], [ 16, %if.end11.i.cond.end28.i_crit_edge ]
  %cond29.i = phi i16 [ %phi.cast138.i, %cond.false.i ], [ 16, %if.end11.i.cond.end28.i_crit_edge ]
  %28 = getelementptr inbounds %struct.fimc_variant, ptr %call.i146.i, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %.sink.i, ptr %28, align 4
  %min_out_pixsize.i = getelementptr inbounds %struct.fimc_variant, ptr %call.i146.i, i32 0, i32 3
  %30 = ptrtoint ptr %min_out_pixsize.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %cond29.i, ptr %min_out_pixsize.i, align 2
  %call.i149.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull %args.i, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i149.i)
  %tobool33.not.i = icmp sgt i32 %call.i149.i, -1
  br i1 %tobool33.not.i, label %cond.false35.i, label %cond.end28.i.cond.end44.i_crit_edge

cond.end28.i.cond.end44.i_crit_edge:              ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end44.i

cond.false35.i:                                   ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %args.i, align 4
  %phi.cast139.i = trunc i32 %32 to i16
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %phi.cast140.i = trunc i32 %34 to i16
  br label %cond.end44.i

cond.end44.i:                                     ; preds = %cond.false35.i, %cond.end28.i.cond.end44.i_crit_edge
  %.sink157.i = phi i16 [ %phi.cast139.i, %cond.false35.i ], [ 2, %cond.end28.i.cond.end44.i_crit_edge ]
  %cond45.i = phi i16 [ %phi.cast140.i, %cond.false35.i ], [ 1, %cond.end28.i.cond.end44.i_crit_edge ]
  %35 = getelementptr inbounds %struct.fimc_variant, ptr %call.i146.i, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %.sink157.i, ptr %35, align 2
  %hor_offs_align.i = getelementptr inbounds %struct.fimc_variant, ptr %call.i146.i, i32 0, i32 4
  %37 = ptrtoint ptr %hor_offs_align.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %cond45.i, ptr %hor_offs_align.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.37, ptr noundef %4, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool49.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool49.not.i, label %cond.false51.i, label %cond.end44.i.fimc_parse_dt.exit.thread207_crit_edge

cond.end44.i.fimc_parse_dt.exit.thread207_crit_edge: ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_parse_dt.exit.thread207

cond.false51.i:                                   ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %40 = trunc i32 %39 to i8
  %phi.bo.i = shl i8 %40, 7
  br label %fimc_parse_dt.exit.thread207

fimc_parse_dt.exit.thread207:                     ; preds = %cond.false51.i, %cond.end44.i.fimc_parse_dt.exit.thread207_crit_edge
  %cond54.i = phi i8 [ %phi.bo.i, %cond.false51.i ], [ -128, %cond.end44.i.fimc_parse_dt.exit.thread207_crit_edge ]
  %41 = ptrtoint ptr %call.i146.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %call.i146.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 63
  %42 = lshr i32 %call.i.i.i, 25
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 64
  %bf.set.i = or i8 %cond54.i, %44
  %bf.set66.i = or i8 %bf.set.i, %bf.clear.i
  store i8 %bf.set66.i, ptr %call.i146.i, align 4
  %call.i150.i = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, ptr noundef null) #11
  %tobool.i151.not.i = icmp eq ptr %call.i150.i, null
  %45 = ptrtoint ptr %call.i146.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load70.i = load i8, ptr %call.i146.i, align 4
  %bf.shl72.i = select i1 %tobool.i151.not.i, i8 0, i8 32
  %bf.clear73.i = and i8 %bf.load70.i, -33
  %bf.set74.i = or i8 %bf.clear73.i, %bf.shl72.i
  store i8 %bf.set74.i, ptr %call.i146.i, align 4
  %call.i152.i = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, ptr noundef null) #11
  %tobool.i153.not.i = icmp eq ptr %call.i152.i, null
  %46 = ptrtoint ptr %call.i146.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load78.i = load i8, ptr %call.i146.i, align 4
  %bf.shl80.i = select i1 %tobool.i153.not.i, i8 0, i8 8
  %bf.clear81.i = and i8 %bf.load78.i, -9
  %bf.set82.i = or i8 %bf.clear81.i, %bf.shl80.i
  store i8 %bf.set82.i, ptr %call.i146.i, align 4
  %call.i154.i = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.40, ptr noundef null) #11
  %tobool.i155.not.i = icmp eq ptr %call.i154.i, null
  %47 = ptrtoint ptr %call.i146.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load86.i = load i8, ptr %call.i146.i, align 4
  %bf.shl88.i = select i1 %tobool.i155.not.i, i8 0, i8 16
  %bf.clear89.i = and i8 %bf.load86.i, -17
  %bf.set90.i = or i8 %bf.clear89.i, %bf.shl88.i
  store i8 %bf.set90.i, ptr %call.i146.i, align 4
  %call.i.i156.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.41, ptr noundef nonnull %lclk_freq, i32 noundef 1, i32 noundef 0) #11
  %call93.i = call i32 @of_alias_get_id(ptr noundef nonnull %3, ptr noundef nonnull @.str.42) #11
  %id.i = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call93.i, ptr %id.i, align 4
  %variant.i = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %variant.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i146.i, ptr %variant.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #11
  br label %if.end9

fimc_parse_dt.exit.thread:                        ; preds = %if.end4.i.fimc_parse_dt.exit.thread_crit_edge, %if.end.i.fimc_parse_dt.exit.thread_crit_edge, %if.then4.fimc_parse_dt.exit.thread_crit_edge
  %retval.0.i190.ph = phi i32 [ -22, %if.end4.i.fimc_parse_dt.exit.thread_crit_edge ], [ -12, %if.end.i.fimc_parse_dt.exit.thread_crit_edge ], [ -19, %if.then4.fimc_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #11
  br label %cleanup

fimc_parse_dt.exit:                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %50 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %driver_data, align 4
  %54 = inttoptr i32 %53 to ptr
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %drv_data, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  %id8 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %id8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %fimc_parse_dt.exit.thread207
  %drv_data10 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %drv_data10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drv_data10, align 8
  %tobool11.not = icmp eq ptr %60, null
  br i1 %tobool11.not, label %if.end9.do.end_crit_edge, label %lor.lhs.false

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end9
  %id12 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id12, align 4
  %num_entities = getelementptr inbounds %struct.fimc_drvdata, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %num_entities to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_entities, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp14.not = icmp sge i32 %62, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp17 = icmp slt i32 %62, 0
  %or.cond = or i1 %cmp17, %cmp14.not
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %if.end20

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end9.do.end_crit_edge
  %id19 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 7
  %65 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %66) #14
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %67 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node, align 8
  %tobool22.not = icmp eq ptr %68, null
  br i1 %tobool22.not, label %if.then23, label %if.end20.do.body28_crit_edge

if.end20.do.body28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [4 x ptr], ptr %60, i32 0, i32 %62
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %variant26 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 5
  %71 = ptrtoint ptr %variant26 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %variant26, align 4
  br label %do.body28

do.body28:                                        ; preds = %if.then23, %if.end20.do.body28_crit_edge
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.21, ptr noundef nonnull @fimc_probe.__key) #11
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @fimc_probe.__key.22, i16 noundef signext 3) #11
  %lock = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @fimc_probe.__key.24) #11
  %variant38 = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 5
  %72 = ptrtoint ptr %variant38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %variant38, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %73, align 4
  %75 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool39.not = icmp eq i8 %75, 0
  br i1 %tobool39.not, label %do.body28.if.end49_crit_edge, label %if.then40

do.body28.if.end49_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then40:                                        ; preds = %do.body28
  %76 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node, align 8
  %call.i191 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %77, ptr noundef nonnull @.str.43) #11
  %sysreg = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i191, ptr %sysreg, align 8
  %cmp.i192 = icmp ugt ptr %call.i191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then45, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %call.i191 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.then40.if.end49_crit_edge, %do.body28.if.end49_crit_edge
  %call50 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call51 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call50) #11
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %call.i, i32 0, i32 9
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call51, ptr %regs, align 8
  %cmp.i193 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call58 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %arrayidx.i194 = getelementptr %struct.fimc_dev, ptr %call.i, i32 0, i32 8, i32 0
  %82 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i194, align 4
  %arrayidx.1.i = getelementptr %struct.fimc_dev, ptr %call.i, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  %84 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev2, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3
  %call5.i196 = call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.46) #11
  %86 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call5.i196, ptr %arrayidx.i194, align 4
  %cmp.i.i = icmp ugt ptr %call5.i196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end64.err.i_crit_edge, label %if.end.i197

if.end64.err.i_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

for.cond1.i:                                      ; preds = %if.end.i197
  %87 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev2, align 8
  %dev.1.i = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  %call5.1.i = call ptr @clk_get(ptr noundef %dev.1.i, ptr noundef nonnull @.str.42) #11
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call5.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call5.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond1.i.errthread-pre-split.i_crit_edge, label %if.end.1.i

for.cond1.i.errthread-pre-split.i_crit_edge:      ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errthread-pre-split.i

if.end.1.i:                                       ; preds = %for.cond1.i
  %call16.1.i = call i32 @clk_prepare(ptr noundef %call5.1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %cmp17.1.i = icmp slt i32 %call16.1.i, 0
  br i1 %cmp17.1.i, label %if.end.1.i.if.then18.i_crit_edge, label %if.end68

if.end.1.i.if.then18.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.end.i197:                                      ; preds = %if.end64
  %call16.i = call i32 @clk_prepare(ptr noundef %call5.i196) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end.i197.if.then18.i_crit_edge, label %for.cond1.i

if.end.i197.if.then18.i_crit_edge:                ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i197.if.then18.i_crit_edge, %if.end.1.i.if.then18.i_crit_edge
  %.lcssa62.i = phi ptr [ @.str.46, %if.end.i197.if.then18.i_crit_edge ], [ @.str.42, %if.end.1.i.if.then18.i_crit_edge ]
  %arrayidx7.lcssa60.i = phi ptr [ %arrayidx.i194, %if.end.i197.if.then18.i_crit_edge ], [ %arrayidx.1.i, %if.end.1.i.if.then18.i_crit_edge ]
  %90 = ptrtoint ptr %arrayidx7.lcssa60.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx7.lcssa60.i, align 4
  call void @clk_put(ptr noundef %91) #11
  %92 = ptrtoint ptr %arrayidx7.lcssa60.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx7.lcssa60.i, align 4
  br label %errthread-pre-split.i

errthread-pre-split.i:                            ; preds = %if.then18.i, %for.cond1.i.errthread-pre-split.i_crit_edge
  %.ph.i = phi ptr [ @.str.42, %for.cond1.i.errthread-pre-split.i_crit_edge ], [ %.lcssa62.i, %if.then18.i ]
  %93 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr.i = load ptr, ptr %arrayidx.i194, align 4
  br label %err.i

err.i:                                            ; preds = %errthread-pre-split.i, %if.end64.err.i_crit_edge
  %94 = phi ptr [ %.pr.i, %errthread-pre-split.i ], [ %call5.i196, %if.end64.err.i_crit_edge ]
  %95 = phi ptr [ %.ph.i, %errthread-pre-split.i ], [ @.str.46, %if.end64.err.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %err.i.for.inc.i.i_crit_edge, label %if.end.i.i

err.i.for.inc.i.i_crit_edge:                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %94) #11
  %96 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i194, align 4
  call void @clk_put(ptr noundef %97) #11
  %98 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i194, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %err.i.for.inc.i.i_crit_edge
  %99 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.fimc_clk_get.exit_crit_edge, label %if.end.1.i.i

for.inc.i.i.fimc_clk_get.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_clk_get.exit

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %100) #11
  %101 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.1.i, align 4
  call void @clk_put(ptr noundef %102) #11
  %103 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %fimc_clk_get.exit

fimc_clk_get.exit:                                ; preds = %if.end.1.i.i, %for.inc.i.i.fimc_clk_get.exit_crit_edge
  %104 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev2, align 8
  %dev29.i = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %95) #14
  br label %cleanup

if.end68:                                         ; preds = %if.end.1.i
  %106 = ptrtoint ptr %lclk_freq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp69 = icmp eq i32 %107, 0
  br i1 %cmp69, label %if.then70, label %if.end68.if.end72_crit_edge

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %drv_data10 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %drv_data10, align 8
  %lclk_frequency = getelementptr inbounds %struct.fimc_drvdata, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %lclk_frequency to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lclk_frequency, align 4
  %112 = ptrtoint ptr %lclk_freq to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %lclk_freq, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68.if.end72_crit_edge
  %113 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i194, align 8
  %115 = ptrtoint ptr %lclk_freq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %lclk_freq, align 4
  %call74 = call i32 @clk_set_rate(ptr noundef %114, i32 noundef %116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end72.cleanup_crit_edge, label %if.end77

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %117 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i194, align 8
  %call80 = call i32 @clk_enable(ptr noundef %118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %119 = ptrtoint ptr %call58 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %call58, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i199 = icmp eq ptr %122, null
  br i1 %tobool.not.i199, label %if.end.i200, label %if.end83.dev_name.exit_crit_edge

if.end83.dev_name.exit_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i200:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i200, %if.end83.dev_name.exit_crit_edge
  %retval.0.i201 = phi ptr [ %124, %if.end.i200 ], [ %122, %if.end83.dev_name.exit_crit_edge ]
  %call.i202 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %120, ptr noundef nonnull @fimc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i201, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp86 = icmp slt i32 %call.i202, 0
  br i1 %cmp86, label %do.end90, label %if.end91

do.end90:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call.i202) #14
  br label %err_sclk

if.end91:                                         ; preds = %dev_name.exit
  %call92 = call i32 @fimc_initialize_capture_subdev(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.err_sclk_crit_edge, label %if.end95

if.end91.err_sclk_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_sclk

if.end95:                                         ; preds = %if.end91
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %125 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #11
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %126 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load.i203 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i203)
  %tobool.not.i204 = icmp ult i16 %bf.load.i203, 8192
  br i1 %tobool.not.i204, label %if.end95.if.end104_crit_edge, label %if.then97

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then97:                                        ; preds = %if.end95
  %127 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.1.i, align 4
  %call100 = call i32 @clk_enable(ptr noundef %128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %err_sd, label %if.then97.if.end104_crit_edge

if.then97.if.end104_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.end104:                                        ; preds = %if.then97.if.end104_crit_edge, %if.end95.if.end104_crit_edge
  %call105 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_probe, %if.then111)) #11
          to label %cleanup [label %if.then111], !srcloc !136

if.then111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id12, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fimc_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %130) #11
  br label %cleanup

err_sd:                                           ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  call void @fimc_unregister_capture_subdev(ptr noundef nonnull %call.i) #11
  br label %err_sclk

err_sclk:                                         ; preds = %err_sd, %if.end91.err_sclk_crit_edge, %do.end90
  %ret.0 = phi i32 [ %call.i202, %do.end90 ], [ %call92, %if.end91.err_sclk_crit_edge ], [ %call100, %err_sd ]
  %131 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i194, align 8
  call void @clk_disable(ptr noundef %132) #11
  call fastcc void @fimc_clk_put(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_sclk, %if.then111, %if.end104, %if.end77.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %fimc_clk_get.exit, %do.end63, %if.then54, %if.then45, %do.end, %fimc_parse_dt.exit, %fimc_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %79, %if.then45 ], [ %81, %if.then54 ], [ -6, %do.end63 ], [ %ret.0, %err_sclk ], [ -12, %entry.cleanup_crit_edge ], [ %call.i147.i, %fimc_parse_dt.exit ], [ -6, %fimc_clk_get.exit ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call80, %if.end77.cleanup_crit_edge ], [ 0, %if.then111 ], [ %retval.0.i190.ph, %fimc_parse_dt.exit.thread ], [ 0, %if.end104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lclk_freq) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.fimc_dev, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  tail call void @fimc_unregister_capture_subdev(ptr noundef %1) #11
  %clock6 = getelementptr %struct.fimc_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %clock6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock6, align 8
  tail call void @clk_disable(ptr noundef %7) #11
  %8 = ptrtoint ptr %clock6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock6, align 4
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.for.inc.i_crit_edge, label %if.end.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %9) #11
  %10 = ptrtoint ptr %clock6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock6, align 4
  tail call void @clk_put(ptr noundef %11) #11
  %12 = ptrtoint ptr %clock6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock6, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.end.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.fimc_dev, ptr %1, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.fimc_clk_put.exit_crit_edge, label %if.end.1.i

for.inc.i.fimc_clk_put.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fimc_clk_put.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %14) #11
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_put(ptr noundef %16) #11
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %fimc_clk_put.exit

fimc_clk_put.exit:                                ; preds = %if.end.1.i, %for.inc.i.fimc_clk_put.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.47) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_irq_handler(i32 noundef %irq, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fimc_hw_clear_irq(ptr noundef %priv) #11
  tail call void @_raw_spin_lock(ptr noundef %priv) #11
  %state = getelementptr inbounds %struct.fimc_dev, ptr %priv, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state) #11
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %priv, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %out

if.end:                                           ; preds = %if.then
  %m2m_dev = getelementptr inbounds %struct.fimc_dev, ptr %priv, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  %call6 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #11
  %cmp.not = icmp eq ptr %call6, null
  br i1 %cmp.not, label %if.end.out_crit_edge, label %if.then7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then7:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %priv) #11
  tail call void @fimc_m2m_job_finish(ptr noundef nonnull %call6, i32 noundef 5) #11
  %state9 = getelementptr inbounds %struct.fimc_ctx, ptr %call6, i32 0, i32 13
  %2 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state9, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %and13 = and i32 %3, -262145
  %4 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and13, ptr %state9, align 4
  %irq_queue14 = getelementptr inbounds %struct.fimc_dev, ptr %priv, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %irq_queue14, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool19.not = icmp eq i32 %7, 0
  br i1 %tobool19.not, label %if.else.out_crit_edge, label %if.then20

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then20:                                        ; preds = %if.else
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %if.then20.land.end_crit_edge, label %land.rhs

if.then20.land.end_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %reqbufs_count = getelementptr inbounds %struct.fimc_dev, ptr %priv, i32 0, i32 13, i32 14
  %11 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp24 = icmp ne i32 %12, 1
  %phi.cast = zext i1 %cmp24 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then20.land.end_crit_edge
  %13 = phi i32 [ 1, %if.then20.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  tail call void @fimc_capture_irq_handler(ptr noundef %priv, i32 noundef %13) #11
  br label %out

out:                                              ; preds = %land.end, %if.else.out_crit_edge, %if.end.out_crit_edge, %if.then4
  tail call void @_raw_spin_unlock(ptr noundef %priv) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11, %if.then7.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_initialize_capture_subdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_capture_subdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_clk_put(ptr nocapture noundef %fimc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.fimc_dev, ptr %fimc, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %1) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %3) #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.fimc_dev, ptr %fimc, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %8) #11
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_clear_irq(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_m2m_job_finish(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_capture_irq_handler(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_suspend.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_suspend, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_suspend.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 1085, i32 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state4, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 @fimc_capture_suspend(ptr noundef %1) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call fastcc i32 @fimc_m2m_suspend(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %call15, %if.end14 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_resume.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_resume, %if.then)) #11
          to label %do.body5 [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_resume.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 1063, i32 noundef %3, i32 noundef %5) #11
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %state13 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %call14 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body5.if.then22_crit_edge, label %lor.lhs.false

do.body5.if.then22_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

lor.lhs.false:                                    ; preds = %do.body5
  %6 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state13, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %land.lhs.true, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state13, align 4
  %11 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %land.lhs.true.if.then22_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %do.body5.if.then22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call8) #11
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  tail call void @fimc_hw_reset(ptr noundef %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call8) #11
  %12 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state13, align 4
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @fimc_capture_resume(ptr noundef %1) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %ctx5.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx5.i, align 4
  store ptr null, ptr %ctx5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #11
  %call9.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end31.cleanup_crit_edge, label %if.then.i

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fimc_m2m_job_finish(ptr noundef %16, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end31.cleanup_crit_edge, %if.then29, %if.then22
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ 0, %if.then22 ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @fimc_capture_suspend(ptr noundef %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @fimc_m2m_suspend(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.fimc_dev, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %6) #11
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_runtime_suspend.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_runtime_suspend, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !136

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_runtime_suspend.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i32 noundef 1052, i32 noundef %8, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_runtime_resume.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_runtime_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %state = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_runtime_resume.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef 1027, i32 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.fimc_dev, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %7) #11
  tail call void @fimc_hw_reset(ptr noundef %1) #11
  %state5 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state5, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @fimc_capture_resume(ptr noundef %1) #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %ctx5.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx5.i, align 4
  store ptr null, ptr %ctx5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #11
  %call9.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fimc_m2m_job_finish(ptr noundef %12, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end10.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_capture_suspend(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_m2m_suspend(ptr noundef %fimc) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fimc) #11
  %state = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call2) #11
  br label %cleanup62

if.end:                                           ; preds = %entry
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fimc, i32 noundef %call2) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 838) #11
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %if.then29, label %if.end57.thread

if.end57.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #11
  br label %cleanup62

if.then29:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %irq_queue = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 10
  %call3193 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool35.not94.not = icmp eq i32 %9, 0
  br i1 %tobool35.not94.not, label %if.then29.cleanup_crit_edge, label %if.then29.if.end57_crit_edge

if.then29.if.end57_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %__ret30.196 = phi i32 [ %__ret30.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then29.cleanup_crit_edge ]
  %call54 = call i32 @schedule_timeout(i32 noundef %__ret30.196) #11
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool40.not = icmp eq i32 %call54, 0
  %spec.store.select64 = select i1 %tobool40.not, i32 1, i32 %call54
  %__ret30.1 = select i1 %tobool35.not, i32 %call54, i32 %spec.store.select64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %tobool47.not = icmp eq i32 %__ret30.1, 0
  %not.tobool35.not = xor i1 %tobool35.not, true
  %13 = select i1 %not.tobool35.not, i1 true, i1 %tobool47.not
  br i1 %13, label %if.end57.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57.loopexit:                                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %phi.cmp = icmp eq i32 %__ret30.1, 0
  %phi.sel = select i1 %phi.cmp, i32 -11, i32 0
  br label %if.end57

if.end57:                                         ; preds = %if.end57.loopexit, %if.then29.if.end57_crit_edge
  %__ret30.1.lcssa = phi i32 [ 0, %if.then29.if.end57_crit_edge ], [ %phi.sel, %if.end57.loopexit ]
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #11
  br label %cleanup62

cleanup62:                                        ; preds = %if.end57, %if.end57.thread, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end57.thread ], [ %__ret30.1.lcssa, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_capture_resume(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !98, !100, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !121, !123, !124, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 245, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fimc_set_scaler_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fimc_set_scaler_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 252, i32 3}
!10 = !{ptr @fimc_set_scaler_info._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @fimc_set_scaler_info._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 340, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fimc_prepare_addr.__UNIQUE_ID_ddebug299, !13, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 375, i32 2}
!19 = !{ptr @fimc_prepare_addr.__UNIQUE_ID_ddebug300, !18, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 404, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fimc_set_yuv_order.__UNIQUE_ID_ddebug301, !21, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 421, i32 2}
!26 = !{ptr @fimc_set_yuv_order.__UNIQUE_ID_ddebug302, !25, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 455, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fimc_prepare_dma_offset.__UNIQUE_ID_ddebug303, !28, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!31 = !{ptr @fimc_ctrls_create._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 582, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fimc_formats, !35, !"fimc_formats", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 37, i32 24}
!36 = !{ptr @fimc_ctrl_ops, !37, !"fimc_ctrl_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 569, i32 35}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1167, i32 12}
!40 = !{ptr @fimc_driver, !41, !"fimc_driver", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1162, i32 31}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 946, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fimc_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fimc_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @fimc_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 953, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fimc_probe.__key.22, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 954, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fimc_probe.__key.24, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 955, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 970, i32 3}
!58 = !{ptr @fimc_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fimc_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 992, i32 3}
!62 = !{ptr @fimc_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @fimc_probe._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1011, i32 2}
!66 = !{ptr @fimc_probe.__UNIQUE_ID_ddebug306, !65, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 874, i32 34}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 885, i32 41}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 898, i32 41}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 902, i32 41}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 907, i32 35}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 911, i32 6}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 913, i32 46}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 914, i32 46}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 915, i32 29}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 916, i32 35}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/exynos4-is/fimc-core.h", i32 645, i32 47}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 816, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fimc_clk_get._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @fimc_clk_get._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 34, i32 2}
!96 = distinct !{null, !97, !"fimc_clocks", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 33, i32 14}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1111, i32 2}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @fimc_remove._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @fimc_remove._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @fimc_of_match, !105, !"fimc_of_match", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1143, i32 34}
!106 = !{ptr @fimc_drvdata_s5pv210, !107, !"fimc_drvdata_s5pv210", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1116, i32 34}
!108 = !{ptr @fimc_drvdata_exynos4210, !109, !"fimc_drvdata_exynos4210", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1124, i32 34}
!110 = !{ptr @fimc_drvdata_exynos4x12, !111, !"fimc_drvdata_exynos4x12", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1134, i32 34}
!112 = !{ptr @fimc_pm_ops, !113, !"fimc_pm_ops", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1157, i32 32}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1085, i32 2}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fimc_suspend.__UNIQUE_ID_ddebug310, !115, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1063, i32 2}
!120 = !{ptr @fimc_resume.__UNIQUE_ID_ddebug309, !119, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1052, i32 2}
!123 = !{ptr @fimc_runtime_suspend.__UNIQUE_ID_ddebug308, !122, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/exynos4-is/fimc-core.c", i32 1027, i32 2}
!126 = !{ptr @fimc_runtime_resume.__UNIQUE_ID_ddebug307, !125, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 2148980550, i64 2148980555, i64 2148980568, i64 2148980612, i64 2148980646, i64 2148980667}
!137 = !{i8 0, i8 2}
