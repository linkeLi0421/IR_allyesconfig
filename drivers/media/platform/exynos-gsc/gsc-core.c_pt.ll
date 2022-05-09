; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos-gsc/gsc-core.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
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
%struct.gsc_driverdata = type { [4 x ptr], [4 x ptr], i32, i32 }
%struct.gsc_variant = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_max = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_min = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_align = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
%struct.gsc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, i16, i32, [4 x ptr], ptr, %struct.wait_queue_head, %struct.gsc_m2m_device, i32, %struct.video_device, %struct.v4l2_device }
%struct.gsc_m2m_device = type { ptr, ptr, ptr, i32 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@gsc_formats = internal constant { [21 x %struct.gsc_fmt], [172 x i8] } { [21 x %struct.gsc_fmt] [%struct.gsc_fmt { i32 0, i32 1380075346, i32 1, i32 0, i32 0, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 877807426, i32 1, i32 0, i32 0, i16 1, i16 1, [8 x i8] c" \00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8200, i32 1448695129, i32 4, i32 16, i32 32, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8198, i32 1498831189, i32 4, i32 17, i32 32, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8199, i32 1498765654, i32 4, i32 17, i32 33, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8201, i32 1431918169, i32 4, i32 16, i32 33, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 878073177, i32 8, i32 16, i32 32, i16 1, i16 1, [8 x i8] c" \00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 1345466932, i32 4, i32 16, i32 32, i16 1, i16 3, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 909203022, i32 4, i32 16, i32 32, i16 1, i16 2, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 909200718, i32 4, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\08\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825644622, i32 4, i32 16, i32 33, i16 1, i16 2, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825642318, i32 4, i32 16, i32 33, i16 2, i16 2, [8 x i8] c"\08\08\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842093913, i32 2, i32 16, i32 32, i16 1, i16 3, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842094169, i32 2, i32 16, i32 33, i16 1, i16 3, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842094158, i32 2, i32 16, i32 32, i16 1, i16 2, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825382478, i32 2, i32 16, i32 33, i16 1, i16 2, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825380174, i32 2, i32 16, i32 33, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091854, i32 2, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091865, i32 2, i32 16, i32 32, i16 3, i16 3, [8 x i8] c"\08\02\02\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825380185, i32 2, i32 16, i32 33, i16 3, i16 3, [8 x i8] c"\08\02\02\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091862, i32 2, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }], [172 x i8] zeroinitializer }, align 32
@gsc_cal_prescaler_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Exceeded maximum downscaling ratio (1/16))\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gsc_cal_prescaler_ratio\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos-gsc/gsc-core.c\00", [51 x i8] zeroinitializer }, align 32
@gsc_cal_prescaler_ratio._entry_ptr = internal global ptr @gsc_cal_prescaler_ratio._entry, section ".printk_index", align 4
@gsc_check_src_scale_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016cropped src width size is recalculated from %d to %d\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gsc_check_src_scale_info\00", [39 x i8] zeroinitializer }, align 32
@gsc_check_src_scale_info._entry_ptr = internal global ptr @gsc_check_src_scale_info._entry, section ".printk_index", align 4
@gsc_check_src_scale_info._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cropped src height size is recalculated from %d to %d\00", [40 x i8] zeroinitializer }, align 32
@gsc_check_src_scale_info._entry_ptr.7 = internal global ptr @gsc_check_src_scale_info._entry.5, section ".printk_index", align 4
@gsc_set_prefbuf.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_gsc\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsc_set_prefbuf\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"f_addr = 0x%08x, f_len = %d, s_addr = 0x%08x, s_len = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gsc_try_fmt_mplane\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user put w: %d, h: %d\00", [42 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pixelformat format (0x%X) invalid\0A\00", [59 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane._entry_ptr = internal global ptr @gsc_try_fmt_mplane._entry, section ".printk_index", align 4
@gsc_try_fmt_mplane.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not supported field order(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mod_x: %d, mod_y: %d, max_w: %d, max_h = %d\00", [52 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Image size has been modified from %dx%d to %dx%d\0A\00", [46 x i8] zeroinitializer }, align 32
@gsc_try_fmt_mplane.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%d]: bpl: %d, sizeimage: %d\00", [35 x i8] zeroinitializer }, align 32
@gsc_check_crop_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016Cropped size has been modified from %dx%d to %dx%d\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gsc_check_crop_change\00", [42 x i8] zeroinitializer }, align 32
@gsc_check_crop_change._entry_ptr = internal global ptr @gsc_check_crop_change._entry, section ".printk_index", align 4
@gsc_try_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013doesn't support negative values for top & left\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gsc_try_selection\00", [46 x i8] zeroinitializer }, align 32
@gsc_try_selection._entry_ptr = internal global ptr @gsc_try_selection._entry, section ".printk_index", align 4
@gsc_try_selection.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.12, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gsc_try_selection.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mod_x: %d, mod_y: %d, min_w: %d, min_h = %d\00", [52 x i8] zeroinitializer }, align 32
@gsc_try_selection.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tmp_w : %d, tmp_h : %d\00", [41 x i8] zeroinitializer }, align 32
@gsc_try_selection.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Aligned l:%d, t:%d, w:%d, h:%d, f_w: %d, f_h: %d\00", [47 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013out of scaler range\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsc_set_scaler_info\00", [44 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info._entry_ptr = internal global ptr @gsc_set_scaler_info._entry, section ".printk_index", align 4
@gsc_set_scaler_info._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 662, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid target size: %dx%d\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info._entry_ptr.31 = internal global ptr @gsc_set_scaler_info._entry.27, section ".printk_index", align 4
@gsc_set_scaler_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Horizontal scale ratio is out of range\00", [55 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info._entry_ptr.34 = internal global ptr @gsc_set_scaler_info._entry.32, section ".printk_index", align 4
@gsc_set_scaler_info._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.26, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Vertical scale ratio is out of range\00", [57 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info._entry_ptr.37 = internal global ptr @gsc_set_scaler_info._entry.35, section ".printk_index", align 4
@gsc_set_scaler_info.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.2, ptr @.str.38, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"scaler input/output size : sx = %d, sy = %d, tx = %d, ty = %d\00", [34 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.2, ptr @.str.39, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scaler ratio info : pre_shfactor : %d, pre_h : %d\00", [46 x i8] zeroinitializer }, align 32
@gsc_set_scaler_info.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.2, ptr @.str.40, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pre_v :%d, main_h : %d, main_v : %d\00", [60 x i8] zeroinitializer }, align 32
@gsc_ctrls_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Control handler of this context was created already\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gsc_ctrls_create\00", [47 x i8] zeroinitializer }, align 32
@gsc_ctrls_create._entry_ptr = internal global ptr @gsc_ctrls_create._entry, section ".printk_index", align 4
@gsc_ctrls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gsc_core:768:(&ctx->ctrl_handler)->_lock\00", [55 x i8] zeroinitializer }, align 32
@gsc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @gsc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@gsc_ctrls_create._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to create G-Scaler control handlers\00", [51 x i8] zeroinitializer }, align 32
@gsc_ctrls_create._entry_ptr.46 = internal global ptr @gsc_ctrls_create._entry.44, section ".printk_index", align 4
@gsc_prepare_addr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gsc_prepare_addr\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"num_planes= %d, num_comp= %d, pix_size= %d\00", [53 x i8] zeroinitializer }, align 32
@gsc_prepare_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Invalid the number of color planes\00", [59 x i8] zeroinitializer }, align 32
@gsc_prepare_addr._entry_ptr = internal global ptr @gsc_prepare_addr._entry, section ".printk_index", align 4
@gsc_prepare_addr.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ADDR: y= %pad  cb= %pad cr= %pad ret= %d\00", [55 x i8] zeroinitializer }, align 32
@__initcall__kmod_exynos_gsc__328_1325_gsc_driver_init6 = internal global ptr @gsc_driver_init, section ".initcall6.init", align 4
@gsc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gsc_probe, ptr @gsc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.56, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_gsc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gsc_driver_exit = internal global ptr @gsc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author329 = internal constant [57 x i8] c"exynos_gsc.author=Hyunwong Kim <khw0178.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [66 x i8] c"exynos_gsc.description=Samsung EXYNOS5 Soc series G-Scaler driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [61 x i8] c"exynos_gsc.file=drivers/media/platform/exynos-gsc/exynos-gsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [23 x i8] c"exynos_gsc.license=GPL\00", section ".modinfo", align 1
@get_plane_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Plane address is wrong\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_plane_info\00", [17 x i8] zeroinitializer }, align 32
@get_plane_info._entry_ptr = internal global ptr @get_plane_info._entry, section ".printk_index", align 4
@ctx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.55, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Wrong buffer/video queue type (%d)\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx_get_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos-gsc/gsc-core.h\00", [51 x i8] zeroinitializer }, align 32
@ctx_get_frame._entry_ptr = internal global ptr @ctx_get_frame._entry, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-gsc\00", [21 x i8] zeroinitializer }, align 32
@exynos_gsc_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_5420_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_5433_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_100_drvdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@gsc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_runtime_suspend, ptr @gsc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gsc\00", [28 x i8] zeroinitializer }, align 32
@gsc_v_100_drvdata = internal global { %struct.gsc_driverdata, [56 x i8] } { %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_100_variant, ptr @gsc_v_100_variant, ptr @gsc_v_100_variant, ptr @gsc_v_100_variant], [4 x ptr] [ptr @.str.82, ptr null, ptr null, ptr null], i32 1, i32 4 }, [56 x i8] zeroinitializer }, align 32
@gsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1124, ptr @.str.60, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"compatible 'exynos5-gsc' is deprecated\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr = internal global ptr @gsc_probe._entry, section ".printk_index", align 4
@gsc_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1128, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid platform device id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.63 = internal global ptr @gsc_probe._entry.61, section ".printk_index", align 4
@gsc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gsc->irq_queue\00", [16 x i8] zeroinitializer }, align 32
@gsc_probe.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gsc->slock\00", [20 x i8] zeroinitializer }, align 32
@gsc_probe.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gsc->lock\00", [21 x i8] zeroinitializer }, align 32
@gsc_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 1146, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get IRQ resource\0A\00", [36 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.71 = internal global ptr @gsc_probe._entry.69, section ".printk_index", align 4
@gsc_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.59, ptr @.str.2, i32 1154, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.74 = internal global ptr @gsc_probe._entry.72, section ".printk_index", align 4
@gsc_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.2, i32 1163, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clock prepare failed for clock: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.77 = internal global ptr @gsc_probe._entry.75, section ".printk_index", align 4
@gsc_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.2, i32 1173, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.80 = internal global ptr @gsc_probe._entry.78, section ".printk_index", align 4
@gsc_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.59, ptr @.str.2, ptr @.str.81, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gsc-%d registered successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@gsc_v_100_variant = internal global { %struct.gsc_variant, [36 x i8] } { %struct.gsc_variant { ptr @gsc_v_100_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gscl\00", [27 x i8] zeroinitializer }, align 32
@gsc_v_100_max = internal global { %struct.gsc_pix_max, [40 x i8] } { %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2047, i16 2047, i16 4800, i16 3344, i16 2016, i16 2016 }, [40 x i8] zeroinitializer }, align 32
@gsc_v_100_min = internal global { %struct.gsc_pix_min, [16 x i8] } { %struct.gsc_pix_min { i16 64, i16 32, i16 64, i16 32, i16 64, i16 32, i16 32, i16 16 }, [16 x i8] zeroinitializer }, align 32
@gsc_v_100_align = internal global { %struct.gsc_pix_align, [18 x i8] } { %struct.gsc_pix_align { i16 16, i16 16, i16 2, i16 16, i16 16, i16 2, i16 2 }, [18 x i8] zeroinitializer }, align 32
@gsc_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Local path input over-run interrupt has occurred!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsc_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@gsc_irq_handler._entry_ptr = internal global ptr @gsc_irq_handler._entry, section ".printk_index", align 4
@gsc_remove.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gsc_remove\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s driver unloaded\0A\00", [44 x i8] zeroinitializer }, align 32
@gsc_v_5250_drvdata = internal global { %struct.gsc_driverdata, [56 x i8] } { %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant], [4 x ptr] [ptr @.str.82, ptr null, ptr null, ptr null], i32 1, i32 4 }, [56 x i8] zeroinitializer }, align 32
@gsc_v_5420_drvdata = internal global { %struct.gsc_driverdata, [56 x i8] } { %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5420_variant, ptr @gsc_v_5420_variant, ptr null, ptr null], [4 x ptr] [ptr @.str.82, ptr null, ptr null, ptr null], i32 1, i32 2 }, [56 x i8] zeroinitializer }, align 32
@gsc_5433_drvdata = internal global { %struct.gsc_driverdata, [56 x i8] } { %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5433_variant, ptr @gsc_v_5433_variant, ptr @gsc_v_5433_variant, ptr null], [4 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], i32 4, i32 3 }, [56 x i8] zeroinitializer }, align 32
@gsc_v_5250_variant = internal global { %struct.gsc_variant, [36 x i8] } { %struct.gsc_variant { ptr @gsc_v_5250_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, [36 x i8] zeroinitializer }, align 32
@gsc_v_5250_max = internal global { %struct.gsc_pix_max, [40 x i8] } { %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2016, i16 2016, i16 4800, i16 3344, i16 2016, i16 2016 }, [40 x i8] zeroinitializer }, align 32
@gsc_v_5420_variant = internal global { %struct.gsc_variant, [36 x i8] } { %struct.gsc_variant { ptr @gsc_v_5420_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, [36 x i8] zeroinitializer }, align 32
@gsc_v_5420_max = internal global { %struct.gsc_pix_max, [40 x i8] } { %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2048, i16 2048, i16 4800, i16 3344, i16 2016, i16 2016 }, [40 x i8] zeroinitializer }, align 32
@gsc_v_5433_variant = internal global { %struct.gsc_variant, [36 x i8] } { %struct.gsc_variant { ptr @gsc_v_5433_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_xiu\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_gsclbend\00", [18 x i8] zeroinitializer }, align 32
@gsc_v_5433_max = internal global { %struct.gsc_pix_max, [40 x i8] } { %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2047, i16 2047, i16 4800, i16 3344, i16 2016, i16 2016 }, [40 x i8] zeroinitializer }, align 32
@gsc_runtime_suspend.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsc_runtime_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsc%d: state: 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@gsc_runtime_resume.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.93, ptr @.str.2, ptr @.str.92, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gsc_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.102 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 825380185, i64 842094169, i64 1431918169, i64 1498765654]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9963810, i64 9963817]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"gsc_formats\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 28, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 249, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 296, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 304, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 386, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 400, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 404, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 412, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 434, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 445, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 472, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 511, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 527, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 573, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 575, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 601, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 648, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 662, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 669, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 676, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 689, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 691, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 693, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 764, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 768, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"gsc_ctrl_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 757, i32 35 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 784, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 811, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 838, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 855, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [11 x i8] c"gsc_driver\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1315, i32 31 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 334, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [48 x i8] c"../drivers/media/platform/exynos-gsc/gsc-core.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 489, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1319, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"exynos_gsc_match\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1085, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant [11 x i8] c"gsc_pm_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1309, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1119, i32 43 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"gsc_v_100_drvdata\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1040, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1124, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1128, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1136, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1137, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1138, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1146, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1153, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1162, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1173, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1192, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [18 x i8] c"gsc_v_100_variant\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 988, i32 27 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1048, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant [14 x i8] c"gsc_v_100_max\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 907, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant [14 x i8] c"gsc_v_100_min\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 967, i32 27 }
@___asan_gen_.397 = private unnamed_addr constant [16 x i8] c"gsc_v_100_align\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 978, i32 29 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 871, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1225, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [19 x i8] c"gsc_v_5250_drvdata\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1052, i32 30 }
@___asan_gen_.418 = private unnamed_addr constant [19 x i8] c"gsc_v_5420_drvdata\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1064, i32 30 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"gsc_5433_drvdata\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1074, i32 30 }
@___asan_gen_.424 = private unnamed_addr constant [19 x i8] c"gsc_v_5250_variant\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1001, i32 27 }
@___asan_gen_.427 = private unnamed_addr constant [15 x i8] c"gsc_v_5250_max\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 922, i32 27 }
@___asan_gen_.430 = private unnamed_addr constant [19 x i8] c"gsc_v_5420_variant\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1014, i32 27 }
@___asan_gen_.433 = private unnamed_addr constant [15 x i8] c"gsc_v_5420_max\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 937, i32 27 }
@___asan_gen_.436 = private unnamed_addr constant [19 x i8] c"gsc_v_5433_variant\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1027, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1081, i32 17 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1081, i32 25 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1081, i32 33 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1081, i32 45 }
@___asan_gen_.451 = private unnamed_addr constant [15 x i8] c"gsc_v_5433_max\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 952, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1304, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private constant [48 x i8] c"../drivers/media/platform/exynos-gsc/gsc-core.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1273, i32 2 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_gsc_driver_exit, ptr @__initcall__kmod_exynos_gsc__328_1325_gsc_driver_init6, ptr @ctx_get_frame._entry, ptr @ctx_get_frame._entry_ptr, ptr @get_plane_info._entry, ptr @get_plane_info._entry_ptr, ptr @gsc_cal_prescaler_ratio._entry, ptr @gsc_cal_prescaler_ratio._entry_ptr, ptr @gsc_check_crop_change._entry, ptr @gsc_check_crop_change._entry_ptr, ptr @gsc_check_src_scale_info._entry, ptr @gsc_check_src_scale_info._entry.5, ptr @gsc_check_src_scale_info._entry_ptr, ptr @gsc_check_src_scale_info._entry_ptr.7, ptr @gsc_ctrls_create._entry, ptr @gsc_ctrls_create._entry.44, ptr @gsc_ctrls_create._entry_ptr, ptr @gsc_ctrls_create._entry_ptr.46, ptr @gsc_driver_exit, ptr @gsc_irq_handler._entry, ptr @gsc_irq_handler._entry_ptr, ptr @gsc_prepare_addr._entry, ptr @gsc_prepare_addr._entry_ptr, ptr @gsc_probe._entry, ptr @gsc_probe._entry.61, ptr @gsc_probe._entry.69, ptr @gsc_probe._entry.72, ptr @gsc_probe._entry.75, ptr @gsc_probe._entry.78, ptr @gsc_probe._entry_ptr, ptr @gsc_probe._entry_ptr.63, ptr @gsc_probe._entry_ptr.71, ptr @gsc_probe._entry_ptr.74, ptr @gsc_probe._entry_ptr.77, ptr @gsc_probe._entry_ptr.80, ptr @gsc_set_scaler_info._entry, ptr @gsc_set_scaler_info._entry.27, ptr @gsc_set_scaler_info._entry.32, ptr @gsc_set_scaler_info._entry.35, ptr @gsc_set_scaler_info._entry_ptr, ptr @gsc_set_scaler_info._entry_ptr.31, ptr @gsc_set_scaler_info._entry_ptr.34, ptr @gsc_set_scaler_info._entry_ptr.37, ptr @gsc_try_fmt_mplane._entry, ptr @gsc_try_fmt_mplane._entry_ptr, ptr @gsc_try_selection._entry, ptr @gsc_try_selection._entry_ptr, ptr @gsc_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @gsc_ctrls_create._key, ptr @.str.43, ptr @gsc_ctrl_ops, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @gsc_driver, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @exynos_gsc_match, ptr @gsc_pm_ops, ptr @.str.57, ptr @gsc_v_100_drvdata, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @gsc_probe.__key, ptr @.str.64, ptr @gsc_probe.__key.65, ptr @.str.66, ptr @gsc_probe.__key.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @gsc_v_100_variant, ptr @.str.82, ptr @gsc_v_100_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @gsc_v_5250_drvdata, ptr @gsc_v_5420_drvdata, ptr @gsc_5433_drvdata, ptr @gsc_v_5250_variant, ptr @gsc_v_5250_max, ptr @gsc_v_5420_variant, ptr @gsc_v_5420_max, ptr @gsc_v_5433_variant, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @gsc_v_5433_max, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_formats to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_cal_prescaler_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_check_src_scale_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_check_src_scale_info._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_try_fmt_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_check_crop_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_try_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_set_scaler_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_set_scaler_info._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_set_scaler_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_set_scaler_info._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_ctrls_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_ctrls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_ctrls_create._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_prepare_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_plane_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_gsc_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_100_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_100_variant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_100_max to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_100_min to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_100_align to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5250_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5420_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_5433_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5250_variant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5250_max to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5420_variant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5420_max to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5433_variant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_v_5433_max to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_format(i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %index)
  %cmp = icmp ugt i32 %index, 20
  %arrayidx = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %index
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_fmt(ptr noundef readonly %pixelformat, ptr noundef readonly %mbus_code, i32 noundef %index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %index)
  %cmp = icmp ugt i32 %index, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tobool.not = icmp eq ptr %pixelformat, null
  %tobool6.not = icmp eq ptr %mbus_code, null
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader
  %i.028 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end11.for.body_crit_edge ]
  %def_fmt.027 = phi ptr [ null, %for.cond.preheader ], [ %spec.select, %if.end11.for.body_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %i.028
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %land.lhs.true

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %pixelformat2 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %i.028, i32 1
  %0 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat2, align 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3 = icmp eq i32 %1, %3
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %for.body.if.end5_crit_edge
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9 = icmp eq i32 %5, %7
  br i1 %cmp9, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028, i32 %index)
  %cmp12 = icmp eq i32 %i.028, %index
  %spec.select = select i1 %cmp12, ptr %arrayidx.i, ptr %def_fmt.027
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end11.cleanup_crit_edge ], [ %arrayidx.i, %land.lhs.true7.cleanup_crit_edge ], [ %arrayidx.i, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gsc_set_frame_size(ptr nocapture noundef writeonly %frame, i32 noundef %width, i32 noundef %height) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %width, ptr %frame, align 4
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 1
  %1 = ptrtoint ptr %f_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %height, ptr %f_height, align 4
  %crop = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 2
  %width1 = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %width, ptr %width1, align 4
  %height3 = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %height, ptr %height3, align 4
  %4 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %top, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_cal_prescaler_ratio(ptr nocapture noundef readonly %var, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef writeonly %ratio) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %dst, i32 %src)
  %cmp = icmp ugt i32 %dst, %src
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %poly_sc_down_max = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 7
  %0 = ptrtoint ptr %poly_sc_down_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %poly_sc_down_max, align 4
  %conv = zext i16 %1 to i32
  %div = udiv i32 %src, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %dst)
  %cmp1.not = icmp ugt i32 %div, %dst
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ratio, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %pre_sc_down_max = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 8
  %3 = ptrtoint ptr %pre_sc_down_max to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pre_sc_down_max, align 2
  %conv6 = zext i16 %4 to i32
  %div7 = udiv i32 %div, %conv6
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %dst)
  %cmp8 = icmp ugt i32 %div7, %dst
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %div1224 = lshr i32 %src, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1224, i32 %dst)
  %cmp13 = icmp ult i32 %div1224, %dst
  %cond = select i1 %cmp13, i32 2, i32 4
  %5 = ptrtoint ptr %ratio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %ratio, align 4
  br label %return

return:                                           ; preds = %if.end11, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gsc_get_prescaler_shfactor(i32 noundef %hratio, i32 noundef %vratio, ptr nocapture noundef writeonly %sh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hratio)
  %cmp = icmp eq i32 %hratio, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %vratio)
  %cmp1 = icmp eq i32 %vratio, 4
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.if.end30_crit_edge, label %if.else

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vratio)
  %cmp4 = icmp eq i32 %vratio, 2
  %or.cond47 = and i1 %cmp, %cmp4
  br i1 %or.cond47, label %if.else.if.end30_crit_edge, label %lor.lhs.false

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hratio)
  %cmp5 = icmp eq i32 %hratio, 2
  %or.cond48 = and i1 %cmp5, %cmp1
  br i1 %or.cond48, label %lor.lhs.false.if.end30_crit_edge, label %if.else9

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else9:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vratio)
  %cmp12 = icmp eq i32 %vratio, 1
  %or.cond49 = and i1 %cmp, %cmp12
  br i1 %or.cond49, label %if.else9.if.end30_crit_edge, label %lor.lhs.false13

if.else9.if.end30_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

lor.lhs.false13:                                  ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hratio)
  %cmp14 = icmp eq i32 %hratio, 1
  %or.cond50 = and i1 %cmp14, %cmp1
  %or.cond51 = and i1 %cmp5, %cmp4
  %or.cond53 = or i1 %or.cond50, %or.cond51
  br i1 %or.cond53, label %lor.lhs.false13.if.end30_crit_edge, label %if.else22

lor.lhs.false13.if.end30_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else22:                                        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  %or.cond52 = and i1 %cmp14, %cmp12
  %not.or.cond52 = xor i1 %or.cond52, true
  %. = zext i1 %not.or.cond52 to i32
  br label %if.end30

if.end30:                                         ; preds = %if.else22, %lor.lhs.false13.if.end30_crit_edge, %if.else9.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge, %if.else.if.end30_crit_edge, %entry.if.end30_crit_edge
  %.sink = phi i32 [ 4, %entry.if.end30_crit_edge ], [ 3, %lor.lhs.false.if.end30_crit_edge ], [ 3, %if.else.if.end30_crit_edge ], [ 2, %lor.lhs.false13.if.end30_crit_edge ], [ 2, %if.else9.if.end30_crit_edge ], [ %., %if.else22 ]
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %sh, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_check_src_scale_info(ptr nocapture noundef readonly %var, ptr nocapture noundef %s_frame, ptr nocapture noundef %wratio, i32 noundef %tx, i32 noundef %ty, ptr nocapture noundef %hratio) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %s_frame, i32 0, i32 5
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %halign.0 = select i1 %tobool.not, i32 2, i32 4
  %4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %walign.0 = select i1 %5, i32 2, i32 4
  %width = getelementptr inbounds %struct.gsc_frame, ptr %s_frame, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %8 = ptrtoint ptr %wratio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wratio, align 4
  %mul = mul i32 %walign.0, %9
  %rem = urem i32 %7, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  br i1 %tobool8.not, label %entry.if.end19_crit_edge, label %if.then9

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then9:                                         ; preds = %entry
  %sub = sub i32 %7, %rem
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %tx)
  %cmp.i = icmp ult i32 %sub, %tx
  br i1 %cmp.i, label %if.then9.if.then.i_crit_edge, label %lor.lhs.false.i

if.then9.if.then.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then9
  %poly_sc_down_max.i = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 7
  %11 = ptrtoint ptr %poly_sc_down_max.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %poly_sc_down_max.i, align 4
  %conv.i = zext i16 %12 to i32
  %div.i = udiv i32 %sub, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %tx)
  %cmp1.not.i = icmp ugt i32 %div.i, %tx
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then9.if.then.i_crit_edge
  %13 = ptrtoint ptr %wratio to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %wratio, align 4
  br label %gsc_cal_prescaler_ratio.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pre_sc_down_max.i = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 8
  %14 = ptrtoint ptr %pre_sc_down_max.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pre_sc_down_max.i, align 2
  %conv6.i = zext i16 %15 to i32
  %div7.i = udiv i32 %div.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %tx)
  %cmp8.i = icmp ugt i32 %div7.i, %tx
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %gsc_cal_prescaler_ratio.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %div1224.i = lshr i32 %sub, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1224.i, i32 %tx)
  %cmp13.i = icmp ult i32 %div1224.i, %tx
  %cond.i = select i1 %cmp13.i, i32 2, i32 4
  %16 = ptrtoint ptr %wratio to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i, ptr %wratio, align 4
  br label %gsc_cal_prescaler_ratio.exit

gsc_cal_prescaler_ratio.exit:                     ; preds = %if.end11.i, %do.end.i, %if.then.i
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %add = add i32 %18, %rem
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %add, i32 noundef %18) #14
  br label %if.end19

if.end19:                                         ; preds = %gsc_cal_prescaler_ratio.exit, %entry.if.end19_crit_edge
  %height = getelementptr inbounds %struct.gsc_frame, ptr %s_frame, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %21 = ptrtoint ptr %hratio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hratio, align 4
  %mul21 = mul i32 %22, %halign.0
  %rem22 = urem i32 %20, %mul21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem22)
  %tobool23.not = icmp eq i32 %rem22, 0
  br i1 %tobool23.not, label %if.end19.if.end41_crit_edge, label %if.then24

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then24:                                        ; preds = %if.end19
  %sub27 = sub i32 %20, %rem22
  %23 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub27, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %ty)
  %cmp.i61 = icmp ult i32 %sub27, %ty
  br i1 %cmp.i61, label %if.then24.if.then.i67_crit_edge, label %lor.lhs.false.i66

if.then24.if.then.i67_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i67

lor.lhs.false.i66:                                ; preds = %if.then24
  %poly_sc_down_max.i62 = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 7
  %24 = ptrtoint ptr %poly_sc_down_max.i62 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %poly_sc_down_max.i62, align 4
  %conv.i63 = zext i16 %25 to i32
  %div.i64 = udiv i32 %sub27, %conv.i63
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i64, i32 %ty)
  %cmp1.not.i65 = icmp ugt i32 %div.i64, %ty
  br i1 %cmp1.not.i65, label %if.end.i72, label %lor.lhs.false.i66.if.then.i67_crit_edge

lor.lhs.false.i66.if.then.i67_crit_edge:          ; preds = %lor.lhs.false.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i67

if.then.i67:                                      ; preds = %lor.lhs.false.i66.if.then.i67_crit_edge, %if.then24.if.then.i67_crit_edge
  %26 = ptrtoint ptr %hratio to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %hratio, align 4
  br label %gsc_cal_prescaler_ratio.exit80

if.end.i72:                                       ; preds = %lor.lhs.false.i66
  %pre_sc_down_max.i68 = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 8
  %27 = ptrtoint ptr %pre_sc_down_max.i68 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pre_sc_down_max.i68, align 2
  %conv6.i69 = zext i16 %28 to i32
  %div7.i70 = udiv i32 %div.i64, %conv6.i69
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i70, i32 %ty)
  %cmp8.i71 = icmp ugt i32 %div7.i70, %ty
  br i1 %cmp8.i71, label %do.end.i74, label %if.end11.i78

do.end.i74:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  %call.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %gsc_cal_prescaler_ratio.exit80

if.end11.i78:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  %div1224.i75 = lshr i32 %sub27, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1224.i75, i32 %ty)
  %cmp13.i76 = icmp ult i32 %div1224.i75, %ty
  %cond.i77 = select i1 %cmp13.i76, i32 2, i32 4
  %29 = ptrtoint ptr %hratio to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i77, ptr %hratio, align 4
  br label %gsc_cal_prescaler_ratio.exit80

gsc_cal_prescaler_ratio.exit80:                   ; preds = %if.end11.i78, %do.end.i74, %if.then.i67
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %add37 = add i32 %31, %rem22
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %add37, i32 noundef %31) #14
  br label %if.end41

if.end41:                                         ; preds = %gsc_cal_prescaler_ratio.exit80, %if.end19.if.end41_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_enum_fmt(ptr nocapture noundef %f) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp.i = icmp ugt i32 %1, 20
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %cmp12.i, ptr @gsc_formats, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp12.i.1 = icmp eq i32 %1, 1
  %spec.select.i.1 = select i1 %cmp12.i.1, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 1), ptr %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp12.i.2 = icmp eq i32 %1, 2
  %spec.select.i.2 = select i1 %cmp12.i.2, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 2), ptr %spec.select.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp12.i.3 = icmp eq i32 %1, 3
  %spec.select.i.3 = select i1 %cmp12.i.3, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 3), ptr %spec.select.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp12.i.4 = icmp eq i32 %1, 4
  %spec.select.i.4 = select i1 %cmp12.i.4, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 4), ptr %spec.select.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp12.i.5 = icmp eq i32 %1, 5
  %spec.select.i.5 = select i1 %cmp12.i.5, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 5), ptr %spec.select.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp12.i.6 = icmp eq i32 %1, 6
  %spec.select.i.6 = select i1 %cmp12.i.6, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 6), ptr %spec.select.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp12.i.7 = icmp eq i32 %1, 7
  %spec.select.i.7 = select i1 %cmp12.i.7, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 7), ptr %spec.select.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp12.i.8 = icmp eq i32 %1, 8
  %spec.select.i.8 = select i1 %cmp12.i.8, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 8), ptr %spec.select.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp12.i.9 = icmp eq i32 %1, 9
  %spec.select.i.9 = select i1 %cmp12.i.9, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 9), ptr %spec.select.i.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp12.i.10 = icmp eq i32 %1, 10
  %spec.select.i.10 = select i1 %cmp12.i.10, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 10), ptr %spec.select.i.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp12.i.11 = icmp eq i32 %1, 11
  %spec.select.i.11 = select i1 %cmp12.i.11, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 11), ptr %spec.select.i.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp12.i.12 = icmp eq i32 %1, 12
  %spec.select.i.12 = select i1 %cmp12.i.12, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 12), ptr %spec.select.i.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp12.i.13 = icmp eq i32 %1, 13
  %spec.select.i.13 = select i1 %cmp12.i.13, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 13), ptr %spec.select.i.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp12.i.14 = icmp eq i32 %1, 14
  %spec.select.i.14 = select i1 %cmp12.i.14, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 14), ptr %spec.select.i.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp12.i.15 = icmp eq i32 %1, 15
  %spec.select.i.15 = select i1 %cmp12.i.15, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 15), ptr %spec.select.i.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp12.i.16 = icmp eq i32 %1, 16
  %spec.select.i.16 = select i1 %cmp12.i.16, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 16), ptr %spec.select.i.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp12.i.17 = icmp eq i32 %1, 17
  %spec.select.i.17 = select i1 %cmp12.i.17, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 17), ptr %spec.select.i.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp12.i.18 = icmp eq i32 %1, 18
  %spec.select.i.18 = select i1 %cmp12.i.18, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 18), ptr %spec.select.i.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %1)
  %cmp12.i.19 = icmp eq i32 %1, 19
  %spec.select.i.19 = select i1 %cmp12.i.19, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 19), ptr %spec.select.i.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp12.i.20 = icmp eq i32 %1, 20
  %spec.select.i.20 = select i1 %cmp12.i.20, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 20), ptr %spec.select.i.19
  %tobool.not = icmp eq ptr %spec.select.i.20, null
  br i1 %tobool.not, label %for.body.i.preheader.cleanup_crit_edge, label %if.end

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %pixelformat = getelementptr inbounds %struct.gsc_fmt, ptr %spec.select.i.20, i32 0, i32 1
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %pixelformat1 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.i.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.body.i.preheader.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_set_prefbuf(ptr nocapture noundef readnone %gsc, ptr nocapture noundef readonly %frm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 4
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %payload = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 3
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload, align 4
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 5
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_planes, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.do.body_crit_edge [
    i16 2, label %if.then
    i16 3, label %if.then10
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb, align 4
  %arrayidx4 = getelementptr %struct.gsc_frame, ptr %frm, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  br label %do.body

if.then10:                                        ; preds = %entry
  %cb14 = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %cb14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb14, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %1, i32 %14)
  %cr = getelementptr inbounds %struct.gsc_frame, ptr %frm, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cr, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %18)
  %cmp.i = icmp eq i32 %1, %18
  br i1 %cmp.i, label %if.then10.if.end_crit_edge, label %if.else.i

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp5.i = icmp eq i32 %14, %18
  br i1 %cmp5.i, label %if.else.i.if.end_crit_edge, label %if.else9.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp11.i.not = icmp ugt i32 %17, %15
  br i1 %cmp11.i.not, label %get_plane_info.exit, label %if.else9.i.if.end_crit_edge

if.else9.i.if.end_crit_edge:                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_plane_info.exit:                              ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  br label %cleanup112

if.end:                                           ; preds = %if.else9.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.then10.if.end_crit_edge
  %low_addr.0.ph = phi i32 [ %17, %if.else9.i.if.end_crit_edge ], [ %14, %if.else.i.if.end_crit_edge ], [ %1, %if.then10.if.end_crit_edge ]
  %low_plane.0.ph = phi i32 [ 2, %if.else9.i.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ], [ 0, %if.then10.if.end_crit_edge ]
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %21 = ptrtoint ptr %cb14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cb14, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %22)
  %24 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cr, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %23, i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp.i165 = icmp eq i32 %20, %26
  br i1 %cmp.i165, label %if.end.if.end49_crit_edge, label %if.else.i169

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.else.i169:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp5.i168 = icmp eq i32 %22, %26
  br i1 %cmp5.i168, label %if.else.i169.if.end49_crit_edge, label %if.else9.i173

if.else.i169.if.end49_crit_edge:                  ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.else9.i173:                                    ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp11.i172.not = icmp ult i32 %25, %23
  br i1 %cmp11.i172.not, label %get_plane_info.exit178, label %if.else9.i173.if.end49_crit_edge

if.else9.i173.if.end49_crit_edge:                 ; preds = %if.else9.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

get_plane_info.exit178:                           ; preds = %if.else9.i173
  call void @__sanitizer_cov_trace_pc() #13
  %call.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  br label %cleanup112

if.end49:                                         ; preds = %if.else9.i173.if.end49_crit_edge, %if.else.i169.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %high_addr.0.ph = phi i32 [ %25, %if.else9.i173.if.end49_crit_edge ], [ %22, %if.else.i169.if.end49_crit_edge ], [ %20, %if.end.if.end49_crit_edge ]
  %high_plane.0.ph = phi i32 [ 2, %if.else9.i173.if.end49_crit_edge ], [ 1, %if.else.i169.if.end49_crit_edge ], [ 0, %if.end.if.end49_crit_edge ]
  %add = add nuw nsw i32 %high_plane.0.ph, %low_plane.0.ph
  %sub = sub nsw i32 3, %add
  %27 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %add, label %if.end49.cleanup112_crit_edge [
    i32 3, label %if.end49.if.end70_crit_edge
    i32 2, label %if.then58
    i32 1, label %if.then64
  ]

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end49.cleanup112_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then64:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.then58, %if.end49.if.end70_crit_edge
  %mid_addr.0.in = phi ptr [ %cb14, %if.then58 ], [ %cr, %if.then64 ], [ %addr, %if.end49.if.end70_crit_edge ]
  %28 = ptrtoint ptr %mid_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %mid_addr.0 = load i32, ptr %mid_addr.0.in, align 4
  %arrayidx72 = getelementptr %struct.gsc_frame, ptr %frm, i32 0, i32 3, i32 %sub
  %29 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx72, align 4
  %add73 = sub i32 %mid_addr.0, %low_addr.0.ph
  %sub74 = add i32 %add73, %30
  %arrayidx76 = getelementptr %struct.gsc_frame, ptr %frm, i32 0, i32 3, i32 %high_plane.0.ph
  %31 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx76, align 4
  %add77 = sub i32 %high_addr.0.ph, %mid_addr.0
  %sub78 = add i32 %add77, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub74, i32 %sub78)
  %cmp79 = icmp ugt i32 %sub74, %sub78
  br i1 %cmp79, label %if.then81, label %if.end70.do.body_crit_edge

if.end70.do.body_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then81:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx83 = getelementptr %struct.gsc_frame, ptr %frm, i32 0, i32 3, i32 %low_plane.0.ph
  %33 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx83, align 4
  br label %do.body

do.body:                                          ; preds = %if.then81, %if.end70.do.body_crit_edge, %if.then, %entry.do.body_crit_edge
  %s_chk_len.2 = phi i32 [ %12, %if.then ], [ 0, %entry.do.body_crit_edge ], [ %sub78, %if.then81 ], [ %32, %if.end70.do.body_crit_edge ]
  %s_chk_addr.2 = phi i32 [ %10, %if.then ], [ 0, %entry.do.body_crit_edge ], [ %mid_addr.0, %if.then81 ], [ %high_addr.0.ph, %if.end70.do.body_crit_edge ]
  %f_chk_len.2 = phi i32 [ %3, %if.then ], [ %3, %entry.do.body_crit_edge ], [ %34, %if.then81 ], [ %sub74, %if.end70.do.body_crit_edge ]
  %f_chk_addr.1 = phi i32 [ %1, %if.then ], [ %1, %entry.do.body_crit_edge ], [ %low_addr.0.ph, %if.then81 ], [ %low_addr.0.ph, %if.end70.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_set_prefbuf.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_set_prefbuf, %if.then110)) #11
          to label %cleanup112 [label %if.then110], !srcloc !248

if.then110:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_set_prefbuf.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.10, i32 noundef %f_chk_addr.1, i32 noundef %f_chk_len.2, i32 noundef %s_chk_addr.2, i32 noundef %s_chk_len.2) #11
  br label %cleanup112

cleanup112:                                       ; preds = %if.then110, %do.body, %if.end49.cleanup112_crit_edge, %get_plane_info.exit178, %get_plane_info.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_try_fmt_mplane(ptr nocapture noundef %ctx, ptr noundef %f) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %variant1 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_fmt_mplane, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %pixelformat, null
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %do.end
  %i.028.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %def_fmt.027.i = phi ptr [ null, %do.end ], [ %spec.select.i, %if.end5.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.if.end5.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pixelformat2.i = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pixelformat2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat2.i, align 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.i = icmp eq i32 %9, %11
  br i1 %cmp3.i, label %find_fmt.exit.split.loop.exit, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %for.body.i.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028.i)
  %cmp12.i = icmp eq i32 %i.028.i, 0
  %spec.select.i = select i1 %cmp12.i, ptr @gsc_formats, ptr %def_fmt.027.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %if.end5.i.find_fmt.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end5.i.find_fmt.exit_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_fmt.exit

find_fmt.exit.split.loop.exit:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.le = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %i.028.i
  br label %find_fmt.exit

find_fmt.exit:                                    ; preds = %find_fmt.exit.split.loop.exit, %if.end5.i.find_fmt.exit_crit_edge
  %retval.0.i381 = phi ptr [ %arrayidx.i.i.le, %find_fmt.exit.split.loop.exit ], [ %spec.select.i, %if.end5.i.find_fmt.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %retval.0.i381, null
  br i1 %tobool6.not, label %do.end10, label %if.end14

do.end10:                                         ; preds = %find_fmt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %pixelformat, align 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %13) #14
  br label %cleanup

if.end14:                                         ; preds = %find_fmt.exit
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %field, align 1
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %15, label %do.body20 [
    i32 0, label %if.then15
    i32 1, label %if.end14.if.end38_crit_edge
  ]

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 1, ptr %field, align 1
  br label %if.end38

do.body20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_fmt_mplane, %if.then32)) #11
          to label %cleanup [label %if.then32], !srcloc !248

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %field, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.14, i32 noundef %19) #11
  br label %cleanup

if.end38:                                         ; preds = %if.then15, %if.end14.if.end38_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %target_rot_dis_w = getelementptr inbounds %struct.gsc_pix_max, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %target_rot_dis_w to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %target_rot_dis_w, align 2
  %conv = zext i16 %23 to i32
  %target_rot_dis_h = getelementptr inbounds %struct.gsc_pix_max, ptr %21, i32 0, i32 9
  %24 = ptrtoint ptr %target_rot_dis_h to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_rot_dis_h, align 2
  %conv40 = zext i16 %25 to i32
  %pix_align = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %pix_align to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pix_align, align 4
  %org_w = getelementptr inbounds %struct.gsc_pix_align, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %org_w to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %org_w, align 2
  %30 = tail call i16 @llvm.cttz.i16(i16 %29, i1 true), !range !249
  %31 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %iszero = icmp eq i16 %29, 0
  %sub = select i1 %iszero, i32 -1, i32 %31
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 2
  %32 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %color, align 4
  %and = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %27, align 2
  %36 = tail call i16 @llvm.cttz.i16(i16 %35, i1 true), !range !249
  %37 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %iszero53 = icmp eq i16 %35, 0
  %sub48 = select i1 %iszero53, i32 -1, i32 %37
  %.op = add nsw i32 %37, -1
  %sub55 = select i1 %iszero53, i32 -2, i32 %.op
  %mod_y.0 = select i1 %tobool42.not, i32 %sub55, i32 %sub48
  %38 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %39, label %if.else92 [
    i32 2, label %if.end38.if.then86_crit_edge
    i32 10, label %if.end38.if.then86_crit_edge401
    i32 3, label %if.end38.if.then86_crit_edge402
    i32 8, label %if.end38.if.then86_crit_edge403
    i32 5, label %if.end38.if.then86_crit_edge404
    i32 7, label %if.end38.if.then86_crit_edge405
    i32 12, label %if.end38.if.then86_crit_edge406
    i32 14, label %if.end38.if.then86_crit_edge407
  ]

if.end38.if.then86_crit_edge407:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge406:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge405:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge404:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge403:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge402:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge401:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.end38.if.then86_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.then86:                                        ; preds = %if.end38.if.then86_crit_edge, %if.end38.if.then86_crit_edge401, %if.end38.if.then86_crit_edge402, %if.end38.if.then86_crit_edge403, %if.end38.if.then86_crit_edge404, %if.end38.if.then86_crit_edge405, %if.end38.if.then86_crit_edge406, %if.end38.if.then86_crit_edge407
  %pix_min = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %pix_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pix_min, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %org_h90 = getelementptr inbounds %struct.gsc_pix_min, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %org_h90 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %org_h90, align 2
  br label %do.body100

if.else92:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %pix_min93 = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %pix_min93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pix_min93, align 4
  %target_rot_dis_w94 = getelementptr inbounds %struct.gsc_pix_min, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %target_rot_dis_w94 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %target_rot_dis_w94, align 2
  %target_rot_dis_h97 = getelementptr inbounds %struct.gsc_pix_min, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %target_rot_dis_h97 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %target_rot_dis_h97, align 2
  %out_colorspace = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 15
  %53 = ptrtoint ptr %out_colorspace to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out_colorspace, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %colorspace, align 1
  br label %do.body100

do.body100:                                       ; preds = %if.else92, %if.then86
  %min_h.0.in = phi i16 [ %46, %if.then86 ], [ %52, %if.else92 ]
  %min_w.0.in = phi i16 [ %44, %if.then86 ], [ %50, %if.else92 ]
  %min_w.0 = zext i16 %min_w.0.in to i32
  %min_h.0 = zext i16 %min_h.0.in to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_fmt_mplane, %if.then112)) #11
          to label %do.end115 [label %if.then112], !srcloc !248

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.15, i32 noundef %sub, i32 noundef %mod_y.0, i32 noundef %conv, i32 noundef %conv40) #11
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %do.body100
  %56 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %fmt, align 1
  %height117 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %height117 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %height117, align 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef %min_w.0, i32 noundef %conv, i32 noundef %sub, ptr noundef %height117, i32 noundef %min_h.0, i32 noundef %conv40, i32 noundef %mod_y.0, i32 noundef 0) #11
  %60 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %61)
  %cmp121.not = icmp eq i32 %57, %61
  br i1 %cmp121.not, label %lor.lhs.false123, label %do.end115.do.body128_crit_edge

do.end115.do.body128_crit_edge:                   ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

lor.lhs.false123:                                 ; preds = %do.end115
  %62 = ptrtoint ptr %height117 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %height117, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %63)
  %cmp125.not = icmp eq i32 %59, %63
  br i1 %cmp125.not, label %lor.lhs.false123.if.end146_crit_edge, label %lor.lhs.false123.do.body128_crit_edge

lor.lhs.false123.do.body128_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

lor.lhs.false123.if.end146_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

do.body128:                                       ; preds = %lor.lhs.false123.do.body128_crit_edge, %do.end115.do.body128_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_fmt_mplane, %if.then140)) #11
          to label %if.end146 [label %if.then140], !srcloc !248

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %fmt, align 1
  %66 = ptrtoint ptr %height117 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %height117, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.16, i32 noundef %57, i32 noundef %59, i32 noundef %65, i32 noundef %67) #11
  br label %if.end146

if.end146:                                        ; preds = %if.then140, %do.body128, %lor.lhs.false123.if.end146_crit_edge
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 5
  %68 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_planes, align 4
  %conv147 = trunc i16 %69 to i8
  %num_planes148 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %70 = ptrtoint ptr %num_planes148 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv147, ptr %num_planes148, align 1
  %71 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %f, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %72, label %if.end146.if.end183_crit_edge [
    i32 2, label %if.end146.if.then180_crit_edge
    i32 10, label %if.end146.if.then180_crit_edge408
    i32 3, label %if.end146.if.then180_crit_edge409
    i32 8, label %if.end146.if.then180_crit_edge410
    i32 5, label %if.end146.if.then180_crit_edge411
    i32 7, label %if.end146.if.then180_crit_edge412
    i32 12, label %if.end146.if.then180_crit_edge413
    i32 14, label %if.end146.if.then180_crit_edge414
  ]

if.end146.if.then180_crit_edge414:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge413:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge412:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge411:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge410:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge409:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge408:                ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.then180_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then180

if.end146.if.end183_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

if.then180:                                       ; preds = %if.end146.if.then180_crit_edge, %if.end146.if.then180_crit_edge408, %if.end146.if.then180_crit_edge409, %if.end146.if.then180_crit_edge410, %if.end146.if.then180_crit_edge411, %if.end146.if.then180_crit_edge412, %if.end146.if.then180_crit_edge413, %if.end146.if.then180_crit_edge414
  %colorspace181 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %74 = ptrtoint ptr %colorspace181 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %colorspace181, align 1
  %out_colorspace182 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 15
  %76 = ptrtoint ptr %out_colorspace182 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %out_colorspace182, align 4
  %77 = ptrtoint ptr %num_planes148 to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr = load i8, ptr %num_planes148, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.end146.if.end183_crit_edge
  %78 = phi i8 [ %conv147, %if.end146.if.end183_crit_edge ], [ %.pr, %if.then180 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp186392.not = icmp eq i8 %78, 0
  br i1 %cmp186392.not, label %if.end183.cleanup_crit_edge, label %for.body.lr.ph

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end183
  %num_comp = getelementptr inbounds %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end263.for.body_crit_edge, %for.body.lr.ph
  %i.0393 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end263.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0393
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0393, i32 1
  %79 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %bytesperline, align 1
  %81 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_comp, align 2
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %82, label %land.lhs.true212 [
    i16 1, label %land.lhs.true
    i16 0, label %for.body.if.end221_crit_edge
  ]

for.body.if.end221_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp192 = icmp eq i32 %80, 0
  br i1 %cmp192, label %land.lhs.true.if.then200_crit_edge, label %lor.lhs.false194

land.lhs.true.if.then200_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

lor.lhs.false194:                                 ; preds = %land.lhs.true
  %mul = shl i32 %80, 3
  %arrayidx195 = getelementptr %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 7, i32 %i.0393
  %84 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %85 to i32
  %div = udiv i32 %mul, %conv196
  %86 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %87)
  %cmp198 = icmp ult i32 %div, %87
  br i1 %cmp198, label %lor.lhs.false194.if.then200_crit_edge, label %lor.lhs.false194.if.end221_crit_edge

lor.lhs.false194.if.end221_crit_edge:             ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

lor.lhs.false194.if.then200_crit_edge:            ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

if.then200:                                       ; preds = %lor.lhs.false194.if.then200_crit_edge, %land.lhs.true.if.then200_crit_edge
  %88 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %fmt, align 1
  %arrayidx203 = getelementptr %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 7, i32 %i.0393
  %90 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx203, align 1
  %conv204 = zext i8 %91 to i32
  %mul205 = mul i32 %89, %conv204
  %div206368 = lshr i32 %mul205, 3
  br label %if.end221

land.lhs.true212:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp213 = icmp eq i32 %80, 0
  br i1 %cmp213, label %land.lhs.true212.if.then219_crit_edge, label %lor.lhs.false215

land.lhs.true212.if.then219_crit_edge:            ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then219

lor.lhs.false215:                                 ; preds = %land.lhs.true212
  %92 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %93)
  %cmp217 = icmp ult i32 %80, %93
  br i1 %cmp217, label %lor.lhs.false215.if.then219_crit_edge, label %lor.lhs.false215.if.end221_crit_edge

lor.lhs.false215.if.end221_crit_edge:             ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

lor.lhs.false215.if.then219_crit_edge:            ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then219

if.then219:                                       ; preds = %lor.lhs.false215.if.then219_crit_edge, %land.lhs.true212.if.then219_crit_edge
  %94 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %fmt, align 1
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %lor.lhs.false215.if.end221_crit_edge, %if.then200, %lor.lhs.false194.if.end221_crit_edge, %for.body.if.end221_crit_edge
  %bpl.1 = phi i32 [ %95, %if.then219 ], [ %80, %lor.lhs.false215.if.end221_crit_edge ], [ %80, %lor.lhs.false194.if.end221_crit_edge ], [ %div206368, %if.then200 ], [ %80, %for.body.if.end221_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0393)
  %cmp222.not = icmp ne i32 %i.0393, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %82)
  %cmp227 = icmp eq i16 %82, 3
  %narrow = select i1 %cmp222.not, i1 %cmp227, i1 false
  %spec.select = zext i1 %narrow to i32
  %bpl.2 = lshr i32 %bpl.1, %spec.select
  %96 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %bpl.2, ptr %bytesperline, align 1
  %97 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %fmt, align 1
  %99 = ptrtoint ptr %height117 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %height117, align 1
  %mul235 = mul i32 %100, %98
  %arrayidx237 = getelementptr %struct.gsc_fmt, ptr %retval.0.i381, i32 0, i32 7, i32 %i.0393
  %101 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %102 to i32
  %mul239 = mul i32 %mul235, %conv238
  %div240366 = lshr i32 %mul239, 3
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %arrayidx, align 1
  %105 = tail call i32 @llvm.umax.i32(i32 %div240366, i32 %104)
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_fmt_mplane, %if.then257)) #11
          to label %do.end263 [label %if.then257], !srcloc !248

if.then257:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.17, i32 noundef %i.0393, i32 noundef %bpl.2, i32 noundef %108) #11
  br label %do.end263

do.end263:                                        ; preds = %if.then257, %if.end221
  %inc = add nuw nsw i32 %i.0393, 1
  %109 = ptrtoint ptr %num_planes148 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_planes148, align 1
  %conv185 = zext i8 %110 to i32
  %cmp186 = icmp ult i32 %inc, %conv185
  br i1 %cmp186, label %do.end263.for.body_crit_edge, label %do.end263.cleanup_crit_edge

do.end263.cleanup_crit_edge:                      ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end263.for.body_crit_edge:                     ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %do.end263.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.then32, %do.body20, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %if.then32 ], [ -22, %do.body20 ], [ 0, %if.end183.cleanup_crit_edge ], [ 0, %do.end263.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_g_fmt_mplane(ptr noundef %ctx, ptr nocapture noundef %f) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %1, label %ctx_get_frame.exit.thread [
    i32 10, label %entry.ctx_get_frame.exit_crit_edge
    i32 9, label %if.then2.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctx_get_frame.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_frame.i = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %1) #14
  br label %if.then

ctx_get_frame.exit:                               ; preds = %if.then2.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %d_frame.i, %if.then2.i ], [ %ctx, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.if.then_crit_edge, label %if.end

ctx_get_frame.exit.if.then_crit_edge:             ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %ctx_get_frame.exit.if.then_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i50 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i50 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retval.0.i, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %fmt, align 1
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %field, align 1
  %fmt3 = getelementptr inbounds %struct.gsc_frame, ptr %retval.0.i, i32 0, i32 5
  %11 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt3, align 4
  %pixelformat = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %pixelformat4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat4, align 1
  %16 = load ptr, ptr %fmt3, align 4
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_planes, align 4
  %conv = trunc i16 %18 to i8
  %num_planes6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %num_planes6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %num_planes6, align 1
  %out_colorspace = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 15
  %20 = ptrtoint ptr %out_colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_colorspace, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %colorspace, align 1
  %conv.mask = and i16 %18, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.mask)
  %cmp52.not = icmp eq i16 %conv.mask, 0
  br i1 %cmp52.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i, align 4
  %25 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fmt3, align 4
  %arrayidx = getelementptr %struct.gsc_fmt, ptr %26, i32 0, i32 7, i32 %i.053
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %28 to i32
  %mul = mul i32 %24, %conv12
  %div47 = lshr i32 %mul, 3
  %arrayidx13 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.053
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.053, i32 1
  %29 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %div47, ptr %bytesperline, align 1
  %30 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_height, align 4
  %mul18 = mul i32 %div47, %31
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %mul18, ptr %arrayidx13, align 1
  %inc = add nuw nsw i32 %i.053, 1
  %33 = ptrtoint ptr %num_planes6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_planes6, align 1
  %conv8 = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_check_crop_change(i32 noundef %tmp_w, i32 noundef %tmp_h, ptr nocapture noundef %w, ptr nocapture noundef %h) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tmp_w)
  %cmp.not = icmp eq i32 %1, %tmp_w
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tmp_h)
  %cmp1.not = icmp eq i32 %3, %tmp_h
  br i1 %cmp1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %h, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %5, i32 noundef %tmp_w, i32 noundef %tmp_h) #14
  %6 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %tmp_w, ptr %w, align 4
  %7 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tmp_h, ptr %h, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_try_selection(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %s) local_unnamed_addr #4 align 64 {
entry:
  %tmp_w = alloca i32, align 4
  %tmp_h = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %variant1 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_w) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_h) #11
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %do.body4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_selection.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_selection, %if.then9)) #11
          to label %do.end14 [label %if.then9], !srcloc !248

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_selection.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %11) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body4
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %13, label %do.end14.cleanup_crit_edge [
    i32 1, label %if.else81
    i32 2, label %if.then50
  ]

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50:                                        ; preds = %do.end14
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx, align 4
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_height, align 4
  %width24 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %width24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width24, align 4
  %21 = ptrtoint ptr %tmp_w to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp_w, align 4
  %height26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height26, align 4
  %24 = ptrtoint ptr %tmp_h to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp_h, align 4
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 5
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %color, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end62.thread397, label %land.lhs.true

if.end62.thread397:                               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %and58398 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58398)
  %tobool59.not399 = icmp eq i32 %and58398, 0
  %spec.select400 = select i1 %tobool59.not399, i32 64, i32 32
  br label %lor.lhs.false73

land.lhs.true:                                    ; preds = %if.then50
  %num_comp = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_comp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp53 = icmp eq i16 %30, 1
  %and58 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %spec.select = select i1 %tobool59.not, i32 64, i32 32
  %min_w.0395 = select i1 %cmp53, i32 32, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp71 = icmp eq i16 %30, 3
  br i1 %cmp71, label %land.lhs.true.do.body130_crit_edge, label %land.lhs.true.lor.lhs.false73_crit_edge

land.lhs.true.lor.lhs.false73_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false73

land.lhs.true.do.body130_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

lor.lhs.false73:                                  ; preds = %land.lhs.true.lor.lhs.false73_crit_edge, %if.end62.thread397
  %min_w.0396 = phi i32 [ %min_w.0395, %land.lhs.true.lor.lhs.false73_crit_edge ], [ %spec.select400, %if.end62.thread397 ]
  %and76 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %spec.select367 = select i1 %tobool77.not, i16 16, i16 32
  br label %do.body130

if.else81:                                        ; preds = %do.end14
  %d_frame = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %d_frame to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d_frame, align 4
  %f_height385 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %f_height385 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_height385, align 4
  %width24386 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %width24386 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width24386, align 4
  %37 = ptrtoint ptr %tmp_w to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp_w, align 4
  %height26387 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %height26387 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height26387, align 4
  %40 = ptrtoint ptr %tmp_h to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp_h, align 4
  %fmt82 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %fmt82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fmt82, align 4
  %color83 = getelementptr inbounds %struct.gsc_fmt, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %color83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %color83, align 4
  %and84 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %45 = and i32 %44, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %if.else81.if.end93_crit_edge, label %if.then91

if.else81.if.end93_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #13
  %pix_align = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %pix_align to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pix_align, align 4
  %target_w = getelementptr inbounds %struct.gsc_pix_align, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %target_w to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %target_w, align 2
  %51 = tail call i16 @llvm.cttz.i16(i16 %50, i1 true), !range !249
  %52 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %iszero = icmp eq i16 %50, 0
  %sub = select i1 %iszero, i32 -1, i32 %52
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.else81.if.end93_crit_edge
  %mod_x.0 = phi i32 [ %sub, %if.then91 ], [ 0, %if.else81.if.end93_crit_edge ]
  br i1 %tobool85.not, label %if.end93.if.end104_crit_edge, label %if.then98

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %pix_align99 = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %pix_align99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pix_align99, align 4
  %target_h = getelementptr inbounds %struct.gsc_pix_align, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %target_h to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %target_h, align 2
  %57 = tail call i16 @llvm.cttz.i16(i16 %56, i1 true), !range !249
  %58 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %iszero101 = icmp eq i16 %56, 0
  %sub103 = select i1 %iszero101, i32 -1, i32 %58
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.end93.if.end104_crit_edge
  %mod_y.0 = phi i32 [ %sub103, %if.then98 ], [ 0, %if.end93.if.end104_crit_edge ]
  %gsc_ctrls = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %59 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gsc_ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %62, label %if.else123 [
    i32 90, label %if.end104.if.then113_crit_edge
    i32 270, label %if.end104.if.then113_crit_edge405
  ]

if.end104.if.then113_crit_edge405:                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

if.end104.if.then113_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

if.then113:                                       ; preds = %if.end104.if.then113_crit_edge, %if.end104.if.then113_crit_edge405
  %pix_min = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 1
  %64 = ptrtoint ptr %pix_min to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pix_min, align 4
  %target_rot_en_w = getelementptr inbounds %struct.gsc_pix_min, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %target_rot_en_w to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %target_rot_en_w, align 2
  %conv116 = zext i16 %67 to i32
  %target_rot_en_h = getelementptr inbounds %struct.gsc_pix_min, ptr %65, i32 0, i32 7
  %68 = ptrtoint ptr %target_rot_en_h to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %target_rot_en_h, align 2
  %70 = ptrtoint ptr %tmp_w to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %39, ptr %tmp_w, align 4
  %71 = ptrtoint ptr %tmp_h to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %36, ptr %tmp_h, align 4
  br label %do.body130

if.else123:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %pix_min124 = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %pix_min124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pix_min124, align 4
  %target_rot_dis_w = getelementptr inbounds %struct.gsc_pix_min, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %target_rot_dis_w to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %target_rot_dis_w, align 2
  %conv125 = zext i16 %75 to i32
  %target_rot_dis_h = getelementptr inbounds %struct.gsc_pix_min, ptr %73, i32 0, i32 5
  %76 = ptrtoint ptr %target_rot_dis_h to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %target_rot_dis_h, align 2
  br label %do.body130

do.body130:                                       ; preds = %if.else123, %if.then113, %lor.lhs.false73, %land.lhs.true.do.body130_crit_edge
  %height26392 = phi ptr [ %height26387, %if.then113 ], [ %height26387, %if.else123 ], [ %height26, %land.lhs.true.do.body130_crit_edge ], [ %height26, %lor.lhs.false73 ]
  %width24390 = phi ptr [ %width24386, %if.then113 ], [ %width24386, %if.else123 ], [ %width24, %land.lhs.true.do.body130_crit_edge ], [ %width24, %lor.lhs.false73 ]
  %f.0388 = phi ptr [ %d_frame, %if.then113 ], [ %d_frame, %if.else123 ], [ %ctx, %land.lhs.true.do.body130_crit_edge ], [ %ctx, %lor.lhs.false73 ]
  %max_h.0 = phi i32 [ %32, %if.then113 ], [ %34, %if.else123 ], [ %18, %land.lhs.true.do.body130_crit_edge ], [ %18, %lor.lhs.false73 ]
  %max_w.0 = phi i32 [ %34, %if.then113 ], [ %32, %if.else123 ], [ %16, %land.lhs.true.do.body130_crit_edge ], [ %16, %lor.lhs.false73 ]
  %min_h.0.shrunk = phi i16 [ %69, %if.then113 ], [ %77, %if.else123 ], [ 32, %land.lhs.true.do.body130_crit_edge ], [ %spec.select367, %lor.lhs.false73 ]
  %min_w.1 = phi i32 [ %conv116, %if.then113 ], [ %conv125, %if.else123 ], [ %min_w.0395, %land.lhs.true.do.body130_crit_edge ], [ %min_w.0396, %lor.lhs.false73 ]
  %mod_y.1 = phi i32 [ %mod_y.0, %if.then113 ], [ %mod_y.0, %if.else123 ], [ 0, %land.lhs.true.do.body130_crit_edge ], [ 0, %lor.lhs.false73 ]
  %mod_x.1 = phi i32 [ %mod_x.0, %if.then113 ], [ %mod_x.0, %if.else123 ], [ 0, %land.lhs.true.do.body130_crit_edge ], [ 0, %lor.lhs.false73 ]
  %min_h.0 = zext i16 %min_h.0.shrunk to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_selection.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_selection, %if.then142)) #11
          to label %do.body146 [label %if.then142], !srcloc !248

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_selection.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.22, i32 noundef %mod_x.1, i32 noundef %mod_y.1, i32 noundef %min_w.1, i32 noundef %min_h.0) #11
  br label %do.body146

do.body146:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_selection.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_selection, %if.then158)) #11
          to label %do.end161 [label %if.then158], !srcloc !248

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %tmp_w to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp_w, align 4
  %80 = ptrtoint ptr %tmp_h to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tmp_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_selection.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.23, i32 noundef %79, i32 noundef %81) #11
  br label %do.end161

do.end161:                                        ; preds = %if.then158, %do.body146
  call void @v4l_bound_align_image(ptr noundef nonnull %tmp_w, i32 noundef %min_w.1, i32 noundef %max_w.0, i32 noundef %mod_x.1, ptr noundef nonnull %tmp_h, i32 noundef %min_h.0, i32 noundef %max_h.0, i32 noundef %mod_y.1, i32 noundef 0) #11
  %82 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %83, label %land.lhs.true193 [
    i32 2, label %do.end161.if.else210_crit_edge
    i32 10, label %do.end161.if.else210_crit_edge406
    i32 3, label %do.end161.if.else210_crit_edge407
    i32 8, label %do.end161.if.else210_crit_edge408
    i32 5, label %do.end161.if.else210_crit_edge409
    i32 7, label %do.end161.if.else210_crit_edge410
    i32 12, label %do.end161.if.else210_crit_edge411
    i32 14, label %do.end161.if.else210_crit_edge412
  ]

do.end161.if.else210_crit_edge412:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge411:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge410:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge409:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge408:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge407:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge406:                ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

do.end161.if.else210_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

land.lhs.true193:                                 ; preds = %do.end161
  %gsc_ctrls194 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %85 = ptrtoint ptr %gsc_ctrls194 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gsc_ctrls194, align 4
  %val196 = getelementptr inbounds %struct.v4l2_ctrl, ptr %86, i32 0, i32 22
  %87 = ptrtoint ptr %val196 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val196, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %88, label %land.lhs.true193.if.else210_crit_edge [
    i32 90, label %land.lhs.true193.if.then205_crit_edge
    i32 270, label %land.lhs.true193.if.then205_crit_edge413
  ]

land.lhs.true193.if.then205_crit_edge413:         ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then205

land.lhs.true193.if.then205_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then205

land.lhs.true193.if.else210_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else210

if.then205:                                       ; preds = %land.lhs.true193.if.then205_crit_edge, %land.lhs.true193.if.then205_crit_edge413
  %90 = ptrtoint ptr %tmp_h to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tmp_h, align 4
  %92 = ptrtoint ptr %tmp_w to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tmp_w, align 4
  %94 = ptrtoint ptr %width24390 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %width24390, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %91)
  %cmp.not.i = icmp eq i32 %95, %91
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then205.do.end.i_crit_edge

if.then205.do.end.i_crit_edge:                    ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then205
  %96 = ptrtoint ptr %height26392 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %height26392, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %93)
  %cmp1.not.i = icmp eq i32 %97, %93
  br i1 %cmp1.not.i, label %lor.lhs.false.i.if.end215_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i.if.end215_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then205.do.end.i_crit_edge
  %98 = ptrtoint ptr %height26392 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height26392, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %95, i32 noundef %99, i32 noundef %91, i32 noundef %93) #14
  br label %if.end215.sink.split

if.else210:                                       ; preds = %land.lhs.true193.if.else210_crit_edge, %do.end161.if.else210_crit_edge, %do.end161.if.else210_crit_edge406, %do.end161.if.else210_crit_edge407, %do.end161.if.else210_crit_edge408, %do.end161.if.else210_crit_edge409, %do.end161.if.else210_crit_edge410, %do.end161.if.else210_crit_edge411, %do.end161.if.else210_crit_edge412
  %100 = ptrtoint ptr %tmp_w to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tmp_w, align 4
  %102 = ptrtoint ptr %tmp_h to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tmp_h, align 4
  %104 = ptrtoint ptr %width24390 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %width24390, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %101)
  %cmp.not.i377 = icmp eq i32 %105, %101
  br i1 %cmp.not.i377, label %lor.lhs.false.i379, label %if.else210.do.end.i381_crit_edge

if.else210.do.end.i381_crit_edge:                 ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i381

lor.lhs.false.i379:                               ; preds = %if.else210
  %106 = ptrtoint ptr %height26392 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %height26392, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %103)
  %cmp1.not.i378 = icmp eq i32 %107, %103
  br i1 %cmp1.not.i378, label %lor.lhs.false.i379.if.end215_crit_edge, label %lor.lhs.false.i379.do.end.i381_crit_edge

lor.lhs.false.i379.do.end.i381_crit_edge:         ; preds = %lor.lhs.false.i379
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i381

lor.lhs.false.i379.if.end215_crit_edge:           ; preds = %lor.lhs.false.i379
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

do.end.i381:                                      ; preds = %lor.lhs.false.i379.do.end.i381_crit_edge, %if.else210.do.end.i381_crit_edge
  %108 = ptrtoint ptr %height26392 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height26392, align 4
  %call.i380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %105, i32 noundef %109, i32 noundef %101, i32 noundef %103) #14
  br label %if.end215.sink.split

if.end215.sink.split:                             ; preds = %do.end.i381, %do.end.i
  %.sink404 = phi i32 [ %101, %do.end.i381 ], [ %91, %do.end.i ]
  %.sink = phi i32 [ %103, %do.end.i381 ], [ %93, %do.end.i ]
  %110 = ptrtoint ptr %width24390 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.sink404, ptr %width24390, align 4
  %111 = ptrtoint ptr %height26392 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink, ptr %height26392, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.end215.sink.split, %lor.lhs.false.i379.if.end215_crit_edge, %lor.lhs.false.i.if.end215_crit_edge
  %112 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %r, align 4
  %114 = ptrtoint ptr %tmp_w to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tmp_w, align 4
  %add = add i32 %115, %113
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_w.0)
  %cmp218 = icmp ugt i32 %add, %max_w.0
  br i1 %cmp218, label %if.then220, label %if.end215.if.end224_crit_edge

if.end215.if.end224_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end224

if.then220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  %sub221 = sub i32 %max_w.0, %115
  %116 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub221, ptr %r, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then220, %if.end215.if.end224_crit_edge
  %117 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %top, align 4
  %119 = ptrtoint ptr %tmp_h to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tmp_h, align 4
  %add227 = add i32 %120, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %add227, i32 %max_h.0)
  %cmp228 = icmp ugt i32 %add227, %max_h.0
  br i1 %cmp228, label %if.then230, label %if.end224.if.end234_crit_edge

if.end224.if.end234_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end234

if.then230:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  %sub231 = sub i32 %max_h.0, %120
  %121 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub231, ptr %top, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.then230, %if.end224.if.end234_crit_edge
  %fmt235 = getelementptr inbounds %struct.gsc_frame, ptr %f.0388, i32 0, i32 5
  %122 = ptrtoint ptr %fmt235 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fmt235, align 4
  %color236 = getelementptr inbounds %struct.gsc_fmt, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %color236 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %color236, align 4
  %126 = and i32 %125, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %if.end234.do.body254_crit_edge, label %land.lhs.true244

if.end234.do.body254_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body254

land.lhs.true244:                                 ; preds = %if.end234
  %128 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %r, align 4
  %and247 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %land.lhs.true244.do.body254_crit_edge, label %if.then249

land.lhs.true244.do.body254_crit_edge:            ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body254

if.then249:                                       ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #13
  %sub252 = add i32 %129, -1
  %130 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub252, ptr %r, align 4
  br label %do.body254

do.body254:                                       ; preds = %if.then249, %land.lhs.true244.do.body254_crit_edge, %if.end234.do.body254_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_try_selection.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_try_selection, %if.then266)) #11
          to label %cleanup [label %if.then266], !srcloc !248

if.then266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %r, align 4
  %133 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %top, align 4
  %135 = ptrtoint ptr %width24390 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %width24390, align 4
  %137 = ptrtoint ptr %height26392 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %height26392, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_try_selection.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.24, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %max_w.0, i32 noundef %max_h.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then266, %do.body254, %do.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14.cleanup_crit_edge ], [ 0, %if.then266 ], [ 0, %do.body254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_h) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_w) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gsc_check_scaler_ratio(ptr nocapture noundef readonly %var, i32 noundef %sw, i32 noundef %sh, i32 noundef %dw, i32 noundef %dh, i32 noundef %rot, i32 noundef %out_path) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %out_path)
  %cmp = icmp eq i32 %out_path, 2
  %sc_down_max1 = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 6
  %local_sc_down = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 9
  %sc_down_max.0.in.in = select i1 %cmp, ptr %sc_down_max1, ptr %local_sc_down
  %0 = ptrtoint ptr %sc_down_max.0.in.in to i32
  call void @__asan_load2_noabort(i32 %0)
  %sc_down_max.0.in = load i16, ptr %sc_down_max.0.in.in, align 2
  %sc_down_max.0 = zext i16 %sc_down_max.0.in to i32
  %1 = zext i32 %rot to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %rot, label %if.else8 [
    i32 90, label %entry.if.end9_crit_edge
    i32 270, label %entry.if.end9_crit_edge42
  ]

entry.if.end9_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %entry.if.end9_crit_edge, %entry.if.end9_crit_edge42
  %tmp_w.0 = phi i32 [ %dw, %if.else8 ], [ %dh, %entry.if.end9_crit_edge ], [ %dh, %entry.if.end9_crit_edge42 ]
  %tmp_h.0 = phi i32 [ %dh, %if.else8 ], [ %dw, %entry.if.end9_crit_edge ], [ %dw, %entry.if.end9_crit_edge42 ]
  %div = sdiv i32 %sw, %tmp_w.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sc_down_max.0)
  %cmp10 = icmp sgt i32 %div, %sc_down_max.0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %lor.lhs.false12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end9
  %div13 = sdiv i32 %sh, %tmp_h.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %sc_down_max.0)
  %cmp14 = icmp sgt i32 %div13, %sc_down_max.0
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %div17 = sdiv i32 %tmp_w.0, %sw
  %sc_up_max = getelementptr inbounds %struct.gsc_variant, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %sc_up_max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sc_up_max, align 4
  %conv18 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div17, i32 %conv18)
  %cmp19 = icmp sgt i32 %div17, %conv18
  br i1 %cmp19, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  %div22 = sdiv i32 %tmp_h.0, %sh
  call void @__sanitizer_cov_trace_cmp4(i32 %div22, i32 %conv18)
  %cmp25 = icmp sgt i32 %div22, %conv18
  %spec.select = select i1 %cmp25, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_set_scaler_info(ptr nocapture noundef %ctx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scaler = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %variant3 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant3, align 4
  %pdev = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %width = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %width8 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %10 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width8, align 4
  %height10 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %12 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height10, align 4
  %gsc_ctrls = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %14 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gsc_ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %out_path = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  %sc_down_max1.i = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 6
  %local_sc_down.i = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 9
  %sc_down_max.0.in.in.i = select i1 %cmp.i, ptr %sc_down_max1.i, ptr %local_sc_down.i
  %20 = ptrtoint ptr %sc_down_max.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %sc_down_max.0.in.i = load i16, ptr %sc_down_max.0.in.in.i, align 2
  %sc_down_max.0.i = zext i16 %sc_down_max.0.in.i to i32
  %21 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %17, label %if.else8.i [
    i32 90, label %entry.if.end9.i_crit_edge
    i32 270, label %entry.if.end9.i_crit_edge223
  ]

entry.if.end9.i_crit_edge223:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.else8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else8.i, %entry.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge223
  %tmp_w.0.i = phi i32 [ %11, %if.else8.i ], [ %13, %entry.if.end9.i_crit_edge ], [ %13, %entry.if.end9.i_crit_edge223 ]
  %tmp_h.0.i = phi i32 [ %13, %if.else8.i ], [ %11, %entry.if.end9.i_crit_edge ], [ %11, %entry.if.end9.i_crit_edge223 ]
  %div.i = sdiv i32 %7, %tmp_w.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %sc_down_max.0.i)
  %cmp10.i = icmp sgt i32 %div.i, %sc_down_max.0.i
  br i1 %cmp10.i, label %if.end9.i.do.end_crit_edge, label %lor.lhs.false12.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false12.i:                                ; preds = %if.end9.i
  %div13.i = sdiv i32 %9, %tmp_h.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %sc_down_max.0.i)
  %cmp14.i = icmp sgt i32 %div13.i, %sc_down_max.0.i
  br i1 %cmp14.i, label %lor.lhs.false12.i.do.end_crit_edge, label %lor.lhs.false16.i

lor.lhs.false12.i.do.end_crit_edge:               ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false16.i:                                ; preds = %lor.lhs.false12.i
  %div17.i = sdiv i32 %tmp_w.0.i, %7
  %sc_up_max.i = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %sc_up_max.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sc_up_max.i, align 4
  %conv18.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.i, i32 %conv18.i)
  %cmp19.i = icmp sgt i32 %div17.i, %conv18.i
  br i1 %cmp19.i, label %lor.lhs.false16.i.do.end_crit_edge, label %lor.lhs.false21.i

lor.lhs.false16.i.do.end_crit_edge:               ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false21.i:                                ; preds = %lor.lhs.false16.i
  %div22.i = sdiv i32 %tmp_h.0.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %conv18.i)
  %cmp25.i = icmp sgt i32 %div22.i, %conv18.i
  br i1 %cmp25.i, label %lor.lhs.false21.i.do.end_crit_edge, label %if.end

lor.lhs.false21.i.do.end_crit_edge:               ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false21.i.do.end_crit_edge, %lor.lhs.false16.i.do.end_crit_edge, %lor.lhs.false12.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false21.i
  %24 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %17, label %if.else [
    i32 90, label %if.end.if.end28_crit_edge
    i32 270, label %if.end.if.end28_crit_edge224
  ]

if.end.if.end28_crit_edge224:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end.if.end28_crit_edge, %if.end.if.end28_crit_edge224
  %ty.0.in = phi ptr [ %height10, %if.else ], [ %width8, %if.end.if.end28_crit_edge ], [ %width8, %if.end.if.end28_crit_edge224 ]
  %tx.0.in = phi ptr [ %width8, %if.else ], [ %height10, %if.end.if.end28_crit_edge ], [ %height10, %if.end.if.end28_crit_edge224 ]
  %25 = ptrtoint ptr %tx.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %tx.0 = load i32, ptr %tx.0.in, align 4
  %26 = ptrtoint ptr %ty.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %ty.0 = load i32, ptr %ty.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx.0)
  %cmp29 = icmp slt i32 %tx.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ty.0)
  %cmp31 = icmp slt i32 %ty.0, 1
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.28, i32 noundef %tx.0, i32 noundef %ty.0) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %pre_hratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tx.0, i32 %7)
  %cmp.i186 = icmp ugt i32 %tx.0, %7
  br i1 %cmp.i186, label %if.end36.if.end47_crit_edge, label %lor.lhs.false.i

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

lor.lhs.false.i:                                  ; preds = %if.end36
  %poly_sc_down_max.i = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %poly_sc_down_max.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %poly_sc_down_max.i, align 4
  %conv.i = zext i16 %28 to i32
  %div.i187 = udiv i32 %7, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i187, i32 %tx.0)
  %cmp1.not.i = icmp ugt i32 %div.i187, %tx.0
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end47_crit_edge

lor.lhs.false.i.if.end47_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pre_sc_down_max.i = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %pre_sc_down_max.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pre_sc_down_max.i, align 2
  %conv6.i = zext i16 %30 to i32
  %div7.i = udiv i32 %div.i187, %conv6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %tx.0)
  %cmp8.i = icmp ugt i32 %div7.i, %tx.0
  br i1 %cmp8.i, label %do.end44, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %div1224.i = lshr i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1224.i, i32 %tx.0)
  %cmp13.i = icmp ult i32 %div1224.i, %tx.0
  %cond.i = select i1 %cmp13.i, i32 2, i32 4
  br label %if.end47

do.end44:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end47:                                         ; preds = %if.end11.i, %lor.lhs.false.i.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %storemerge = phi i32 [ %cond.i, %if.end11.i ], [ 1, %lor.lhs.false.i.if.end47_crit_edge ], [ 1, %if.end36.if.end47_crit_edge ]
  %31 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %pre_hratio, align 4
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %pre_vratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %ty.0, i32 %33)
  %cmp.i189 = icmp ugt i32 %ty.0, %33
  br i1 %cmp.i189, label %if.end47.if.end58_crit_edge, label %lor.lhs.false.i194

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

lor.lhs.false.i194:                               ; preds = %if.end47
  %poly_sc_down_max.i190 = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %poly_sc_down_max.i190 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %poly_sc_down_max.i190, align 4
  %conv.i191 = zext i16 %35 to i32
  %div.i192 = udiv i32 %33, %conv.i191
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i192, i32 %ty.0)
  %cmp1.not.i193 = icmp ugt i32 %div.i192, %ty.0
  br i1 %cmp1.not.i193, label %if.end.i200, label %lor.lhs.false.i194.if.end58_crit_edge

lor.lhs.false.i194.if.end58_crit_edge:            ; preds = %lor.lhs.false.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end.i200:                                      ; preds = %lor.lhs.false.i194
  %pre_sc_down_max.i196 = getelementptr inbounds %struct.gsc_variant, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %pre_sc_down_max.i196 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pre_sc_down_max.i196, align 2
  %conv6.i197 = zext i16 %37 to i32
  %div7.i198 = udiv i32 %div.i192, %conv6.i197
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i198, i32 %ty.0)
  %cmp8.i199 = icmp ugt i32 %div7.i198, %ty.0
  br i1 %cmp8.i199, label %do.end55, label %if.end11.i206

if.end11.i206:                                    ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #13
  %div1224.i203 = lshr i32 %33, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1224.i203, i32 %ty.0)
  %cmp13.i204 = icmp ult i32 %div1224.i203, %ty.0
  %cond.i205 = select i1 %cmp13.i204, i32 2, i32 4
  br label %if.end58

do.end55:                                         ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #13
  %call.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end11.i206, %lor.lhs.false.i194.if.end58_crit_edge, %if.end47.if.end58_crit_edge
  %storemerge222 = phi i32 [ %cond.i205, %if.end11.i206 ], [ 1, %lor.lhs.false.i194.if.end58_crit_edge ], [ 1, %if.end47.if.end58_crit_edge ]
  %38 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge222, ptr %pre_vratio, align 4
  tail call void @gsc_check_src_scale_info(ptr noundef %3, ptr noundef %ctx, ptr noundef %pre_hratio, i32 noundef %tx.0, i32 noundef %ty.0, ptr noundef %pre_vratio)
  %39 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pre_hratio, align 4
  %41 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pre_vratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.i209 = icmp eq i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp1.i = icmp eq i32 %42, 4
  %or.cond.i = and i1 %cmp.i209, %cmp1.i
  br i1 %or.cond.i, label %if.end58.gsc_get_prescaler_shfactor.exit_crit_edge, label %if.else.i

if.end58.gsc_get_prescaler_shfactor.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_get_prescaler_shfactor.exit

if.else.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp4.i = icmp eq i32 %42, 2
  %or.cond47.i = and i1 %cmp.i209, %cmp4.i
  br i1 %or.cond47.i, label %if.else.i.gsc_get_prescaler_shfactor.exit_crit_edge, label %lor.lhs.false.i210

if.else.i.gsc_get_prescaler_shfactor.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_get_prescaler_shfactor.exit

lor.lhs.false.i210:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp5.i = icmp eq i32 %40, 2
  %or.cond48.i = and i1 %cmp5.i, %cmp1.i
  br i1 %or.cond48.i, label %lor.lhs.false.i210.gsc_get_prescaler_shfactor.exit_crit_edge, label %if.else9.i

lor.lhs.false.i210.gsc_get_prescaler_shfactor.exit_crit_edge: ; preds = %lor.lhs.false.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_get_prescaler_shfactor.exit

if.else9.i:                                       ; preds = %lor.lhs.false.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp12.i = icmp eq i32 %42, 1
  %or.cond49.i = and i1 %cmp.i209, %cmp12.i
  br i1 %or.cond49.i, label %if.else9.i.gsc_get_prescaler_shfactor.exit_crit_edge, label %lor.lhs.false13.i

if.else9.i.gsc_get_prescaler_shfactor.exit_crit_edge: ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_get_prescaler_shfactor.exit

lor.lhs.false13.i:                                ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp14.i211 = icmp eq i32 %40, 1
  %or.cond50.i = and i1 %cmp14.i211, %cmp1.i
  %or.cond51.i = and i1 %cmp5.i, %cmp4.i
  %or.cond53.i = or i1 %or.cond50.i, %or.cond51.i
  br i1 %or.cond53.i, label %lor.lhs.false13.i.gsc_get_prescaler_shfactor.exit_crit_edge, label %if.else22.i

lor.lhs.false13.i.gsc_get_prescaler_shfactor.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_get_prescaler_shfactor.exit

if.else22.i:                                      ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.cond52.i = and i1 %cmp14.i211, %cmp12.i
  %not.or.cond52.i = xor i1 %or.cond52.i, true
  %..i = zext i1 %not.or.cond52.i to i32
  br label %gsc_get_prescaler_shfactor.exit

gsc_get_prescaler_shfactor.exit:                  ; preds = %if.else22.i, %lor.lhs.false13.i.gsc_get_prescaler_shfactor.exit_crit_edge, %if.else9.i.gsc_get_prescaler_shfactor.exit_crit_edge, %lor.lhs.false.i210.gsc_get_prescaler_shfactor.exit_crit_edge, %if.else.i.gsc_get_prescaler_shfactor.exit_crit_edge, %if.end58.gsc_get_prescaler_shfactor.exit_crit_edge
  %.sink.i = phi i32 [ 4, %if.end58.gsc_get_prescaler_shfactor.exit_crit_edge ], [ 3, %lor.lhs.false.i210.gsc_get_prescaler_shfactor.exit_crit_edge ], [ 3, %if.else.i.gsc_get_prescaler_shfactor.exit_crit_edge ], [ 2, %lor.lhs.false13.i.gsc_get_prescaler_shfactor.exit_crit_edge ], [ 2, %if.else9.i.gsc_get_prescaler_shfactor.exit_crit_edge ], [ %..i, %if.else22.i ]
  %43 = ptrtoint ptr %scaler to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %scaler, align 4
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width, align 4
  %shl = shl i32 %45, 16
  %div = udiv i32 %shl, %tx.0
  %main_hratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %main_hratio to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div, ptr %main_hratio, align 4
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %shl67 = shl i32 %48, 16
  %div68 = udiv i32 %shl67, %ty.0
  %main_vratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %main_vratio to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div68, ptr %main_vratio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_set_scaler_info, %if.then75)) #11
          to label %do.body83 [label %if.then75], !srcloc !248

if.then75:                                        ; preds = %gsc_get_prescaler_shfactor.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width, align 4
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_set_scaler_info.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.38, i32 noundef %51, i32 noundef %53, i32 noundef %tx.0, i32 noundef %ty.0) #11
  br label %do.body83

do.body83:                                        ; preds = %if.then75, %gsc_get_prescaler_shfactor.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_set_scaler_info, %if.then95)) #11
          to label %do.body101 [label %if.then95], !srcloc !248

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %scaler, align 4
  %56 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pre_hratio, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_set_scaler_info.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.39, i32 noundef %55, i32 noundef %57) #11
  br label %do.body101

do.body101:                                       ; preds = %if.then95, %do.body83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_set_scaler_info, %if.then113)) #11
          to label %cleanup [label %if.then113], !srcloc !248

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pre_vratio, align 4
  %60 = ptrtoint ptr %main_hratio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %main_hratio, align 4
  %62 = ptrtoint ptr %main_vratio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %main_vratio, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_set_scaler_info.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.40, i32 noundef %59, i32 noundef %61, i32 noundef %63) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %do.end55, %do.end44, %do.end35, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end35 ], [ -22, %do.end44 ], [ -22, %do.end55 ], [ 0, %if.then113 ], [ 0, %do.body101 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_ctrls_create(ptr noundef %ctx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls_rdy = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %ctrls_rdy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrls_rdy, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %ctrl_handler = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 12
  %call2 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 10, ptr noundef nonnull @gsc_ctrls_create._key, ptr noundef nonnull @.str.43) #11
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #11
  %gsc_ctrls = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %2 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %gsc_ctrls, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %hflip = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %hflip, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %vflip = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %vflip, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #11
  %global_alpha = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %global_alpha, align 4
  %error = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 12, i32 9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %frombool = zext i1 %cmp to i8
  %8 = ptrtoint ptr %ctrls_rdy to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %ctrls_rdy, align 4
  br i1 %cmp, label %if.end.return_crit_edge, label %if.then19

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then19, %entry.return.sink.split_crit_edge
  %.str.45.sink = phi ptr [ @.str.45, %if.then19 ], [ @.str.41, %entry.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %7, %if.then19 ], [ 0, %entry.return.sink.split_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.45.sink) #14
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_ctrls_delete(ptr noundef %ctx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls_rdy = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %ctrls_rdy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrls_rdy, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_handler = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  %2 = ptrtoint ptr %ctrls_rdy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ctrls_rdy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_prepare_addr(ptr nocapture noundef readnone %ctx, ptr noundef %vb, ptr noundef readonly %frame, ptr noundef %addr) local_unnamed_addr #4 align 64 {
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
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame, align 4
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 1
  %2 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_height, align 4
  %mul = mul i32 %3, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_prepare_addr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_prepare_addr, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !248

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 5
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %7 to i32
  %num_comp = getelementptr inbounds %struct.gsc_fmt, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_comp, align 2
  %conv6 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_prepare_addr.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %conv6, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 0) #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr, align 4
  %fmt9 = getelementptr inbounds %struct.gsc_frame, ptr %frame, i32 0, i32 5
  %13 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt9, align 4
  %num_planes10 = getelementptr inbounds %struct.gsc_fmt, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %num_planes10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_planes10, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %16, label %if.then49 [
    i16 1, label %if.then14
    i16 0, label %do.end.if.end52_crit_edge
  ]

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then14:                                        ; preds = %do.end
  %num_comp16 = getelementptr inbounds %struct.gsc_fmt, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %num_comp16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_comp16, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %19, label %do.end40 [
    i16 1, label %sw.bb
    i16 2, label %sw.bb18
    i16 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %21 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cb, align 4
  br label %if.end62.sink.split

sw.bb18:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %11, %mul
  %cb20 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %22 = ptrtoint ptr %cb20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %cb20, align 4
  br label %if.end62.sink.split

sw.bb22:                                          ; preds = %if.then14
  %add24 = add i32 %11, %mul
  %cb25 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %23 = ptrtoint ptr %cb25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add24, ptr %cb25, align 4
  %24 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fmt9, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp27 = icmp eq i32 %27, 2
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %mul, 2
  %add31 = add i32 %add24, %shr
  br label %if.end62.sink.split

if.else:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %shr34 = lshr i32 %mul, 1
  %add35 = add i32 %add24, %shr34
  br label %if.end62.sink.split

do.end40:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i154 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 1) #11
  %28 = ptrtoint ptr %call.i154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i154, align 4
  %cb51 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %30 = ptrtoint ptr %cb51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cb51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.end.if.end52_crit_edge
  %31 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt9, align 4
  %num_planes54 = getelementptr inbounds %struct.gsc_fmt, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %num_planes54 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_planes54, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %34)
  %cmp56 = icmp eq i16 %34, 3
  br i1 %cmp56, label %if.then58, label %if.end52.if.end62_crit_edge

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call.i155 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 2) #11
  %35 = ptrtoint ptr %call.i155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i155, align 4
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then58, %if.else, %if.then29, %sw.bb18, %sw.bb
  %.sink = phi i32 [ %36, %if.then58 ], [ 0, %sw.bb ], [ 0, %sw.bb18 ], [ %add35, %if.else ], [ %add31, %if.then29 ]
  %cr60 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  %37 = ptrtoint ptr %cr60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %cr60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end52.if.end62_crit_edge
  %38 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fmt9, align 4
  %pixelformat = getelementptr inbounds %struct.gsc_fmt, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pixelformat, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %41, label %if.end62.do.body90_crit_edge [
    i32 1498765654, label %if.end62.do.body82_crit_edge
    i32 1431918169, label %if.end62.do.body82_crit_edge158
    i32 842094169, label %if.end62.do.body82_crit_edge159
    i32 825380185, label %if.end62.do.body82_crit_edge160
  ]

if.end62.do.body82_crit_edge160:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end62.do.body82_crit_edge159:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end62.do.body82_crit_edge158:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end62.do.body82_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.end62.do.body90_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

do.body82:                                        ; preds = %if.end62.do.body82_crit_edge, %if.end62.do.body82_crit_edge158, %if.end62.do.body82_crit_edge159, %if.end62.do.body82_crit_edge160
  %cb83 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %43 = ptrtoint ptr %cb83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cb83, align 4
  %cr84 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  %45 = ptrtoint ptr %cr84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cr84, align 4
  store i32 %46, ptr %cb83, align 4
  store i32 %44, ptr %cr84, align 4
  br label %do.body90

do.body90:                                        ; preds = %do.body82, %if.end62.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_prepare_addr.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_prepare_addr, %if.then102)) #11
          to label %cleanup [label %if.then102], !srcloc !248

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %cb104 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %cr105 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_prepare_addr.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.50, ptr noundef %addr, ptr noundef %cb104, ptr noundef %cr105, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %do.body90, %do.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end40 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then102 ], [ 0, %do.body90 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_driver_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gsc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gsc_driver_exit() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @gsc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %gsc_dev = getelementptr i8, ptr %1, i32 -200
  %2 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsc_dev, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %4 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gsc_dev, align 4
  %variant1.i = getelementptr inbounds %struct.gsc_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant1.i, align 4
  %flags2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %8 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__gsc_s_ctrl.exit_crit_edge

entry.__gsc_s_ctrl.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__gsc_s_ctrl.exit

if.end.i:                                         ; preds = %entry
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %11, label %if.end.i.sw.epilog.i_crit_edge [
    i32 9963796, label %sw.bb.i
    i32 9963797, label %sw.bb3.i
    i32 9963810, label %sw.bb11.i
    i32 9963817, label %sw.bb27.i
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
  %hflip.i = getelementptr i8, ptr %1, i32 -204
  %15 = trunc i32 %14 to i8
  %16 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  %bf.shl.i = shl i8 %15, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %hflip.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %val4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val4.i, align 4
  %vflip.i = getelementptr i8, ptr %1, i32 -204
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load5.i = load i8, ptr %vflip.i, align 4
  %bf.value6.i = shl i8 %19, 6
  %bf.shl7.i = and i8 %bf.value6.i, 64
  %bf.clear8.i = and i8 %bf.load5.i, -65
  %bf.set9.i = or i8 %bf.shl7.i, %bf.clear8.i
  store i8 %bf.set9.i, ptr %vflip.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  %state.i = getelementptr i8, ptr %1, i32 -212
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 4
  %and12.i = and i32 %22, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and12.i)
  %cmp.i = icmp eq i32 %and12.i, 6
  br i1 %cmp.i, label %if.then13.i, label %sw.bb11.i.if.end25.i_crit_edge

sw.bb11.i.if.end25.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then13.i:                                      ; preds = %sw.bb11.i
  %width.i = getelementptr i8, ptr %1, i32 -388
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width.i, align 4
  %height.i = getelementptr i8, ptr %1, i32 -384
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %width17.i = getelementptr i8, ptr %1, i32 -308
  %27 = ptrtoint ptr %width17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width17.i, align 4
  %height20.i = getelementptr i8, ptr %1, i32 -304
  %29 = ptrtoint ptr %height20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height20.i, align 4
  %gsc_ctrls.i = getelementptr i8, ptr %1, i32 184
  %31 = ptrtoint ptr %gsc_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gsc_ctrls.i, align 4
  %val21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val21.i, align 4
  %out_path.i = getelementptr i8, ptr %1, i32 -240
  %35 = ptrtoint ptr %out_path.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 2
  %sc_down_max1.i.i = getelementptr inbounds %struct.gsc_variant, ptr %7, i32 0, i32 6
  %local_sc_down.i.i = getelementptr inbounds %struct.gsc_variant, ptr %7, i32 0, i32 9
  %sc_down_max.0.in.in.i.i = select i1 %cmp.i.i, ptr %sc_down_max1.i.i, ptr %local_sc_down.i.i
  %37 = ptrtoint ptr %sc_down_max.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %sc_down_max.0.in.i.i = load i16, ptr %sc_down_max.0.in.in.i.i, align 2
  %sc_down_max.0.i.i = zext i16 %sc_down_max.0.in.i.i to i32
  %38 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %34, label %if.else8.i.i [
    i32 90, label %if.then13.i.if.end9.i.i_crit_edge
    i32 270, label %if.then13.i.if.end9.i.i_crit_edge12
  ]

if.then13.i.if.end9.i.i_crit_edge12:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then13.i.if.end9.i.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.else8.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.else8.i.i, %if.then13.i.if.end9.i.i_crit_edge, %if.then13.i.if.end9.i.i_crit_edge12
  %tmp_w.0.i.i = phi i32 [ %28, %if.else8.i.i ], [ %30, %if.then13.i.if.end9.i.i_crit_edge ], [ %30, %if.then13.i.if.end9.i.i_crit_edge12 ]
  %tmp_h.0.i.i = phi i32 [ %30, %if.else8.i.i ], [ %28, %if.then13.i.if.end9.i.i_crit_edge ], [ %28, %if.then13.i.if.end9.i.i_crit_edge12 ]
  %div.i.i = sdiv i32 %24, %tmp_w.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %sc_down_max.0.i.i)
  %cmp10.i.i = icmp sgt i32 %div.i.i, %sc_down_max.0.i.i
  br i1 %cmp10.i.i, label %if.end9.i.i.__gsc_s_ctrl.exit_crit_edge, label %lor.lhs.false12.i.i

if.end9.i.i.__gsc_s_ctrl.exit_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__gsc_s_ctrl.exit

lor.lhs.false12.i.i:                              ; preds = %if.end9.i.i
  %div13.i.i = sdiv i32 %26, %tmp_h.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i.i, i32 %sc_down_max.0.i.i)
  %cmp14.i.i = icmp sgt i32 %div13.i.i, %sc_down_max.0.i.i
  br i1 %cmp14.i.i, label %lor.lhs.false12.i.i.__gsc_s_ctrl.exit_crit_edge, label %lor.lhs.false16.i.i

lor.lhs.false12.i.i.__gsc_s_ctrl.exit_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__gsc_s_ctrl.exit

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false12.i.i
  %div17.i.i = sdiv i32 %tmp_w.0.i.i, %24
  %sc_up_max.i.i = getelementptr inbounds %struct.gsc_variant, ptr %7, i32 0, i32 5
  %39 = ptrtoint ptr %sc_up_max.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sc_up_max.i.i, align 4
  %conv18.i.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.i.i, i32 %conv18.i.i)
  %cmp19.i.i = icmp sgt i32 %div17.i.i, %conv18.i.i
  br i1 %cmp19.i.i, label %lor.lhs.false16.i.i.__gsc_s_ctrl.exit_crit_edge, label %lor.lhs.false21.i.i

lor.lhs.false16.i.i.__gsc_s_ctrl.exit_crit_edge:  ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__gsc_s_ctrl.exit

lor.lhs.false21.i.i:                              ; preds = %lor.lhs.false16.i.i
  %div22.i.i = sdiv i32 %tmp_h.0.i.i, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i.i, i32 %conv18.i.i)
  %cmp25.i.i = icmp sgt i32 %div22.i.i, %conv18.i.i
  br i1 %cmp25.i.i, label %lor.lhs.false21.i.i.__gsc_s_ctrl.exit_crit_edge, label %lor.lhs.false21.i.i.if.end25.i_crit_edge

lor.lhs.false21.i.i.if.end25.i_crit_edge:         ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

lor.lhs.false21.i.i.__gsc_s_ctrl.exit_crit_edge:  ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__gsc_s_ctrl.exit

if.end25.i:                                       ; preds = %lor.lhs.false21.i.i.if.end25.i_crit_edge, %sw.bb11.i.if.end25.i_crit_edge
  %val26.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val26.i, align 4
  %rotation.i = getelementptr i8, ptr %1, i32 -208
  %43 = ptrtoint ptr %rotation.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rotation.i, align 4
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %val28.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val28.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val28.i, align 4
  %conv.i = trunc i32 %45 to i8
  %alpha.i = getelementptr i8, ptr %1, i32 -248
  %46 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %alpha.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %if.end25.i, %sw.bb3.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %state30.i = getelementptr i8, ptr %1, i32 -212
  %47 = ptrtoint ptr %state30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state30.i, align 4
  %or.i = or i32 %48, 1
  store i32 %or.i, ptr %state30.i, align 4
  br label %__gsc_s_ctrl.exit

__gsc_s_ctrl.exit:                                ; preds = %sw.epilog.i, %lor.lhs.false21.i.i.__gsc_s_ctrl.exit_crit_edge, %lor.lhs.false16.i.i.__gsc_s_ctrl.exit_crit_edge, %lor.lhs.false12.i.i.__gsc_s_ctrl.exit_crit_edge, %if.end9.i.i.__gsc_s_ctrl.exit_crit_edge, %entry.__gsc_s_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 0, %entry.__gsc_s_ctrl.exit_crit_edge ], [ -22, %lor.lhs.false16.i.i.__gsc_s_ctrl.exit_crit_edge ], [ -22, %lor.lhs.false12.i.i.__gsc_s_ctrl.exit_crit_edge ], [ -22, %if.end9.i.i.__gsc_s_ctrl.exit_crit_edge ], [ -22, %lor.lhs.false21.i.i.__gsc_s_ctrl.exit_crit_edge ]
  %49 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gsc_dev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %call3) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1728, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq ptr %call, @gsc_v_100_drvdata
  br i1 %cmp7, label %do.end, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.58) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end6.if.end9_crit_edge
  %conv = trunc i32 %call4 to i16
  %id = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %id, align 8
  %conv11 = and i32 %call4, 65535
  %num_entities = getelementptr inbounds %struct.gsc_driverdata, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %num_entities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_entities, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %4)
  %cmp12.not = icmp slt i32 %conv11, %4
  br i1 %cmp12.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %conv11) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %num_clocks = getelementptr inbounds %struct.gsc_driverdata, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clocks, align 4
  %num_clocks21 = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %num_clocks21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_clocks21, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %call, i32 0, i32 %conv11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %variant23 = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %variant23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %variant23, align 4
  %pdev24 = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pdev24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev24, align 8
  %irq_queue = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.64, ptr noundef nonnull @gsc_probe.__key) #11
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @gsc_probe.__key.65, i16 noundef signext 3) #11
  %lock = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @gsc_probe.__key.67) #11
  %call35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call35, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end20
  %call42 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end41
  %14 = ptrtoint ptr %num_clocks21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_clocks21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp50232 = icmp sgt i32 %15, 0
  br i1 %cmp50232, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end90_crit_edge

for.cond.preheader.for.end90_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70) #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0233, 1
  %16 = ptrtoint ptr %num_clocks21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks21, align 4
  %cmp50 = icmp slt i32 %inc, %17
  br i1 %cmp50, label %for.cond.for.body_crit_edge, label %for.cond68.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond68.preheader:                             ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp70234 = icmp sgt i32 %17, 0
  br i1 %cmp70234, label %for.cond68.preheader.for.body72_crit_edge, label %for.cond68.preheader.for.end90_crit_edge

for.cond68.preheader.for.end90_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.cond68.preheader.for.body72_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body72

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0233 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx52 = getelementptr %struct.gsc_driverdata, ptr %call, i32 0, i32 1, i32 %i.0233
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx52, align 4
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %19) #11
  %arrayidx54 = getelementptr %struct.gsc_dev, ptr %call.i, i32 0, i32 6, i32 %i.0233
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call53, ptr %arrayidx54, align 4
  %cmp.i217 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %do.end61, label %for.cond

do.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73, ptr noundef %22) #14
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx54, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

for.body72:                                       ; preds = %for.inc88.for.body72_crit_edge, %for.cond68.preheader.for.body72_crit_edge
  %i.1235 = phi i32 [ %inc89, %for.inc88.for.body72_crit_edge ], [ 0, %for.cond68.preheader.for.body72_crit_edge ]
  %arrayidx74 = getelementptr %struct.gsc_dev, ptr %call.i, i32 0, i32 6, i32 %i.1235
  %26 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx74, align 4
  %call.i218 = tail call i32 @clk_prepare(ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body72.do.end80_crit_edge

for.body72.do.end80_crit_edge:                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

if.end.i:                                         ; preds = %for.body72
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc88, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %27) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then3.i, %for.body72.do.end80_crit_edge
  %retval.0.i219.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i218, %for.body72.do.end80_crit_edge ]
  %arrayidx82 = getelementptr %struct.gsc_driverdata, ptr %call, i32 0, i32 1, i32 %i.1235
  %28 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76, ptr noundef %29) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1235)
  %cmp83240.not = icmp eq i32 %i.1235, 0
  br i1 %cmp83240.not, label %do.end80.cleanup_crit_edge, label %do.end80.while.body_crit_edge

do.end80.while.body_crit_edge:                    ; preds = %do.end80
  br label %while.body

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end80.while.body_crit_edge
  %dec241.in = phi i32 [ %dec241, %while.body.while.body_crit_edge ], [ %i.1235, %do.end80.while.body_crit_edge ]
  %dec241 = add nsw i32 %dec241.in, -1
  %arrayidx86 = getelementptr %struct.gsc_dev, ptr %call.i, i32 0, i32 6, i32 %dec241
  %30 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx86, align 4
  tail call void @clk_disable(ptr noundef %31) #11
  tail call void @clk_unprepare(ptr noundef %31) #11
  %cmp83 = icmp sgt i32 %dec241.in, 1
  br i1 %cmp83, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.inc88:                                        ; preds = %if.end.i
  %inc89 = add nuw nsw i32 %i.1235, 1
  %32 = ptrtoint ptr %num_clocks21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_clocks21, align 4
  %cmp70 = icmp slt i32 %inc89, %33
  br i1 %cmp70, label %for.inc88.for.body72_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.inc88.for.body72_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %for.cond68.preheader.for.end90_crit_edge, %for.cond.preheader.for.end90_crit_edge
  %34 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call42, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call.i220 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %35, ptr noundef nonnull @gsc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %37, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool92.not = icmp eq i32 %call.i220, 0
  br i1 %tobool92.not, label %if.end97, label %do.end96

do.end96:                                         ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79, i32 noundef %call.i220) #14
  br label %err_clk

if.end97:                                         ; preds = %for.end90
  %v4l2_dev = getelementptr inbounds %struct.gsc_dev, ptr %call.i, i32 0, i32 12
  %call98 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.err_clk_crit_edge

if.end97.err_clk_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk

if.end101:                                        ; preds = %if.end97
  %call102 = tail call i32 @gsc_register_m2m_device(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %err_v4l2

if.end105:                                        ; preds = %if.end101
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @gsc_hw_set_sw_reset(ptr noundef nonnull %call.i) #11
  %call106 = tail call i32 @gsc_wait_reset(ptr noundef nonnull %call.i) #11
  %call107 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_probe, %if.then113)) #11
          to label %do.end118 [label %if.then113], !srcloc !248

if.then113:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %id, align 8
  %conv115 = zext i16 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsc_probe.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.81, i32 noundef %conv115) #11
  br label %do.end118

do.end118:                                        ; preds = %if.then113, %if.end105
  %call.i221 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  br label %cleanup

err_v4l2:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %err_clk

err_clk:                                          ; preds = %err_v4l2, %if.end97.err_clk_crit_edge, %do.end96
  %ret.0 = phi i32 [ %call.i220, %do.end96 ], [ %call98, %if.end97.err_clk_crit_edge ], [ %call102, %err_v4l2 ]
  %41 = ptrtoint ptr %num_clocks21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_clocks21, align 4
  %i.3236 = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.3236)
  %cmp123237 = icmp sgt i32 %i.3236, -1
  br i1 %cmp123237, label %err_clk.for.body125_crit_edge, label %err_clk.cleanup_crit_edge

err_clk.cleanup_crit_edge:                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_clk.for.body125_crit_edge:                    ; preds = %err_clk
  br label %for.body125

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %err_clk.for.body125_crit_edge
  %i.3238 = phi i32 [ %i.3, %for.body125.for.body125_crit_edge ], [ %i.3236, %err_clk.for.body125_crit_edge ]
  %arrayidx127 = getelementptr %struct.gsc_dev, ptr %call.i, i32 0, i32 6, i32 %i.3238
  %43 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx127, align 4
  tail call void @clk_disable(ptr noundef %44) #11
  tail call void @clk_unprepare(ptr noundef %44) #11
  %i.3 = add nsw i32 %i.3238, -1
  %cmp123 = icmp sgt i32 %i.3238, 0
  br i1 %cmp123, label %for.body125.for.body125_crit_edge, label %for.body125.cleanup_crit_edge

for.body125.cleanup_crit_edge:                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body125

cleanup:                                          ; preds = %for.body125.cleanup_crit_edge, %err_clk.cleanup_crit_edge, %do.end118, %while.body.cleanup_crit_edge, %do.end80.cleanup_crit_edge, %do.end61, %do.end47, %if.then38, %do.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end17 ], [ %13, %if.then38 ], [ %25, %do.end61 ], [ 0, %do.end118 ], [ -6, %do.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %retval.0.i219.ph, %do.end80.cleanup_crit_edge ], [ %ret.0, %err_clk.cleanup_crit_edge ], [ %ret.0, %for.body125.cleanup_crit_edge ], [ %retval.0.i219.ph, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @gsc_unregister_m2m_device(ptr noundef %1) #11
  %v4l2_dev = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_clocks = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24 = icmp sgt i32 %5, 0
  br i1 %cmp24, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_dev, ptr %1, i32 0, i32 6, i32 %i.025
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %inc = add nuw nsw i32 %i.025, 1
  %8 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_remove.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_remove, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !248

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsc_remove.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.86, ptr noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_irq_handler(i32 noundef %irq, ptr noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.gsc_dev, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #11, !srcloc !251
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  %7 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.not = icmp eq i32 %7, 0
  %cfg.0.i.v = select i1 %switch.not, i32 65536, i32 131072
  %cfg.0.i = or i32 %6, %cfg.0.i.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #11
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %8) #11, !srcloc !255
  br i1 %switch.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %priv) #11
  %state = getelementptr inbounds %struct.gsc_dev, ptr %priv, i32 0, i32 10
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.isr_unlock_crit_edge, label %if.then3

if.end.isr_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_unlock

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !255
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #11
  %irq_queue = getelementptr inbounds %struct.gsc_dev, ptr %priv, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %isr_unlock

if.end9:                                          ; preds = %if.then3
  %m2m_dev = getelementptr inbounds %struct.gsc_dev, ptr %priv, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_dev, align 4
  %call10 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %18) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.isr_unlock_crit_edge, label %lor.lhs.false

if.end9.isr_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_unlock

lor.lhs.false:                                    ; preds = %if.end9
  %m2m_ctx = getelementptr inbounds %struct.gsc_ctx, ptr %call10, i32 0, i32 10
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %lor.lhs.false.isr_unlock_crit_edge, label %if.end14

lor.lhs.false.isr_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_unlock

if.end14:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %priv) #11
  tail call void @gsc_m2m_job_finish(ptr noundef nonnull %call10, i32 noundef 5) #11
  %state16 = getelementptr inbounds %struct.gsc_ctx, ptr %call10, i32 0, i32 6
  %21 = ptrtoint ptr %state16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state16, align 4
  %and = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.then18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %and20 = and i32 %22, -65
  %23 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and20, ptr %state16, align 4
  %irq_queue21 = getelementptr inbounds %struct.gsc_dev, ptr %priv, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %irq_queue21, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

isr_unlock:                                       ; preds = %lor.lhs.false.isr_unlock_crit_edge, %if.end9.isr_unlock_crit_edge, %if.then7, %if.end.isr_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %priv) #11
  br label %cleanup

cleanup:                                          ; preds = %isr_unlock, %if.then18, %if.end14.cleanup_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_register_m2m_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_sw_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_wait_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_m2m_job_finish(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_unregister_m2m_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %state.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state.i) #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1246) #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool18.not.i = icmp eq i32 %7, 0
  br i1 %tobool18.not.i, label %if.then29.i, label %if.end57.thread.i

if.end57.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #11
  br label %if.end

if.then29.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %8 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %irq_queue.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 8
  %call3193.i = call i32 @prepare_to_wait_event(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool35.not94.not.i = icmp eq i32 %11, 0
  br i1 %tobool35.not94.not.i, label %if.then29.i.cleanup.i_crit_edge, label %if.then29.i.gsc_m2m_suspend.exit_crit_edge

if.then29.i.gsc_m2m_suspend.exit_crit_edge:       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gsc_m2m_suspend.exit

if.then29.i.cleanup.i_crit_edge:                  ; preds = %if.then29.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then29.i.cleanup.i_crit_edge
  %__ret30.196.i = phi i32 [ %__ret30.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then29.i.cleanup.i_crit_edge ]
  %call54.i = call i32 @schedule_timeout(i32 noundef %__ret30.196.i) #11
  %call31.i = call i32 @prepare_to_wait_event(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool40.not.i = icmp eq i32 %call54.i, 0
  %spec.store.select64.i = select i1 %tobool40.not.i, i32 1, i32 %call54.i
  %__ret30.1.i = select i1 %tobool35.not.i, i32 %call54.i, i32 %spec.store.select64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1.i)
  %tobool47.not.i = icmp eq i32 %__ret30.1.i, 0
  %not.tobool35.not.i = xor i1 %tobool35.not.i, true
  %15 = select i1 %not.tobool35.not.i, i1 true, i1 %tobool47.not.i
  br i1 %15, label %if.end57.loopexit.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end57.loopexit.i:                              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool47.not.i, i32 -11, i32 0
  br label %gsc_m2m_suspend.exit

gsc_m2m_suspend.exit:                             ; preds = %if.end57.loopexit.i, %if.then29.i.gsc_m2m_suspend.exit_crit_edge
  %__ret30.1.lcssa.i = phi i32 [ 0, %if.then29.i.gsc_m2m_suspend.exit_crit_edge ], [ %spec.select, %if.end57.loopexit.i ]
  call void @finish_wait(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1.lcssa.i)
  %tobool.not = icmp eq i32 %__ret30.1.lcssa.i, 0
  br i1 %tobool.not, label %gsc_m2m_suspend.exit.if.end_crit_edge, label %gsc_m2m_suspend.exit.cleanup_crit_edge

gsc_m2m_suspend.exit.cleanup_crit_edge:           ; preds = %gsc_m2m_suspend.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

gsc_m2m_suspend.exit.if.end_crit_edge:            ; preds = %gsc_m2m_suspend.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %gsc_m2m_suspend.exit.if.end_crit_edge, %if.end57.thread.i, %if.then.i
  %num_clocks = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks, align 4
  %i.024 = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.024)
  %cmp25 = icmp sgt i32 %i.024, -1
  br i1 %cmp25, label %if.end.for.body_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.026 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.024, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_dev, ptr %1, i32 0, i32 6, i32 %i.026
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  call void @clk_disable(ptr noundef %19) #11
  call void @clk_unprepare(ptr noundef %19) #11
  %i.0 = add nsw i32 %i.026, -1
  %cmp = icmp sgt i32 %i.026, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_runtime_suspend.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_runtime_suspend, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !248

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id, align 8
  %conv = zext i16 %21 to i32
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_runtime_suspend.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %gsc_m2m_suspend.exit.cleanup_crit_edge
  %retval.0.i1821 = phi i32 [ 0, %if.then6 ], [ %__ret30.1.lcssa.i, %gsc_m2m_suspend.exit.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0.i1821
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_runtime_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_runtime_resume.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_runtime_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 8
  %conv = zext i16 %3 to i32
  %state = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_runtime_resume.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_clocks = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39 = icmp sgt i32 %7, 0
  br i1 %cmp39, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_dev, ptr %1, i32 0, i32 6, i32 %i.040
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp842.not = icmp eq i32 %i.040, 0
  br i1 %cmp842.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.while.body_crit_edge

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %dec43.in = phi i32 [ %dec43, %while.body.while.body_crit_edge ], [ %i.040, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec43 = add nsw i32 %dec43.in, -1
  %arrayidx11 = getelementptr %struct.gsc_dev, ptr %1, i32 0, i32 6, i32 %dec43
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %cmp8 = icmp sgt i32 %dec43.in, 1
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.040, 1
  %12 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @gsc_hw_set_sw_reset(ptr noundef %1) #11
  %call13 = tail call i32 @gsc_wait_reset(ptr noundef %1) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %ctx5.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx5.i, align 8
  store ptr null, ptr %ctx5.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #11
  %state.i = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %call9.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i29 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i29, label %for.end.cleanup_crit_edge, label %if.then.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gsc_m2m_job_finish(ptr noundef %15, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %for.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %retval.0.i28, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %retval.0.i28, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !139, !141, !143, !145, !146, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 249, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gsc_cal_prescaler_ratio._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gsc_cal_prescaler_ratio._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 296, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gsc_check_src_scale_info._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @gsc_check_src_scale_info._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 304, i32 3}
!13 = !{ptr @gsc_check_src_scale_info._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @gsc_check_src_scale_info._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 386, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gsc_set_prefbuf.__UNIQUE_ID_ddebug307, !16, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 400, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug308, !21, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 404, i32 3}
!26 = !{ptr @gsc_try_fmt_mplane._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gsc_try_fmt_mplane._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 412, i32 3}
!30 = !{ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug309, !29, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 434, i32 2}
!33 = !{ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug310, !32, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 445, i32 3}
!36 = !{ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug311, !35, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 472, i32 3}
!39 = !{ptr @gsc_try_fmt_mplane.__UNIQUE_ID_ddebug314, !38, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 511, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gsc_check_crop_change._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gsc_check_crop_change._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 527, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gsc_try_selection._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gsc_try_selection._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @gsc_try_selection.__UNIQUE_ID_ddebug315, !51, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 530, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 573, i32 2}
!54 = !{ptr @gsc_try_selection.__UNIQUE_ID_ddebug316, !53, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 575, i32 2}
!57 = !{ptr @gsc_try_selection.__UNIQUE_ID_ddebug317, !56, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 601, i32 2}
!60 = !{ptr @gsc_try_selection.__UNIQUE_ID_ddebug318, !59, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 648, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gsc_set_scaler_info._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gsc_set_scaler_info._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 662, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gsc_set_scaler_info._entry.27, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @gsc_set_scaler_info._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 669, i32 3}
!74 = !{ptr @gsc_set_scaler_info._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @gsc_set_scaler_info._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 676, i32 3}
!78 = !{ptr @gsc_set_scaler_info._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @gsc_set_scaler_info._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 689, i32 2}
!82 = !{ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug319, !81, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 691, i32 2}
!85 = !{ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug320, !84, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 693, i32 2}
!88 = !{ptr @gsc_set_scaler_info.__UNIQUE_ID_ddebug321, !87, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 764, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @gsc_ctrls_create._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @gsc_ctrls_create._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @gsc_ctrls_create._key, !95, !"_key", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 768, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 784, i32 3}
!99 = !{ptr @gsc_ctrls_create._entry.44, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gsc_ctrls_create._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 811, i32 2}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @gsc_prepare_addr.__UNIQUE_ID_ddebug322, !102, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 838, i32 4}
!107 = !{ptr @gsc_prepare_addr._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @gsc_prepare_addr._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 855, i32 2}
!111 = !{ptr @gsc_prepare_addr.__UNIQUE_ID_ddebug323, !110, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!112 = !{ptr @__initcall__kmod_exynos_gsc__328_1325_gsc_driver_init6, !113, !"__initcall__kmod_exynos_gsc__328_1325_gsc_driver_init6", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1325, i32 1}
!114 = !{ptr @__exitcall_gsc_driver_exit, !113, !"__exitcall_gsc_driver_exit", i1 false, i1 false}
!115 = !{ptr @__UNIQUE_ID_author329, !116, !"__UNIQUE_ID_author329", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1327, i32 1}
!117 = !{ptr @__UNIQUE_ID_description330, !118, !"__UNIQUE_ID_description330", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1328, i32 1}
!119 = !{ptr @__UNIQUE_ID_file331, !120, !"__UNIQUE_ID_file331", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1329, i32 1}
!121 = !{ptr @__UNIQUE_ID_license332, !120, !"__UNIQUE_ID_license332", i1 false, i1 false}
!122 = !{ptr @gsc_formats, !123, !"gsc_formats", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 28, i32 29}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 334, i32 3}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @get_plane_info._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @get_plane_info._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.h", i32 489, i32 3}
!131 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ctx_get_frame._entry, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @ctx_get_frame._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @gsc_ctrl_ops, !136, !"gsc_ctrl_ops", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 757, i32 35}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1319, i32 11}
!139 = !{ptr @gsc_driver, !140, !"gsc_driver", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1315, i32 31}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1119, i32 43}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1124, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @gsc_probe._entry, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @gsc_probe._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1128, i32 3}
!151 = !{ptr @gsc_probe._entry.61, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @gsc_probe._entry_ptr.63, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @gsc_probe.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1136, i32 2}
!155 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @gsc_probe.__key.65, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1137, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @gsc_probe.__key.67, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1138, i32 2}
!161 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1146, i32 3}
!164 = !{ptr @gsc_probe._entry.69, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @gsc_probe._entry_ptr.71, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1153, i32 4}
!168 = !{ptr @gsc_probe._entry.72, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @gsc_probe._entry_ptr.74, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1162, i32 4}
!172 = !{ptr @gsc_probe._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @gsc_probe._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1173, i32 3}
!176 = !{ptr @gsc_probe._entry.78, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @gsc_probe._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1192, i32 2}
!180 = !{ptr @gsc_probe.__UNIQUE_ID_ddebug324, !179, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1048, i32 17}
!183 = !{ptr @gsc_v_100_drvdata, !184, !"gsc_v_100_drvdata", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1040, i32 30}
!185 = !{ptr @gsc_v_100_variant, !186, !"gsc_v_100_variant", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 988, i32 27}
!187 = !{ptr @gsc_v_100_max, !188, !"gsc_v_100_max", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 907, i32 27}
!189 = !{ptr @gsc_v_100_min, !190, !"gsc_v_100_min", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 967, i32 27}
!191 = !{ptr @gsc_v_100_align, !192, !"gsc_v_100_align", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 978, i32 29}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 871, i32 3}
!195 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @gsc_irq_handler._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @gsc_irq_handler._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1225, i32 2}
!200 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @gsc_remove.__UNIQUE_ID_ddebug325, !199, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!202 = !{ptr @exynos_gsc_match, !203, !"exynos_gsc_match", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1085, i32 34}
!204 = !{ptr @gsc_v_5250_drvdata, !205, !"gsc_v_5250_drvdata", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1052, i32 30}
!206 = !{ptr @gsc_v_5250_variant, !207, !"gsc_v_5250_variant", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1001, i32 27}
!208 = !{ptr @gsc_v_5250_max, !209, !"gsc_v_5250_max", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 922, i32 27}
!210 = !{ptr @gsc_v_5420_drvdata, !211, !"gsc_v_5420_drvdata", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1064, i32 30}
!212 = !{ptr @gsc_v_5420_variant, !213, !"gsc_v_5420_variant", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1014, i32 27}
!214 = !{ptr @gsc_v_5420_max, !215, !"gsc_v_5420_max", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 937, i32 27}
!216 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1081, i32 17}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1081, i32 25}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1081, i32 33}
!222 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1081, i32 45}
!224 = !{ptr @gsc_5433_drvdata, !225, !"gsc_5433_drvdata", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1074, i32 30}
!226 = !{ptr @gsc_v_5433_variant, !227, !"gsc_v_5433_variant", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1027, i32 27}
!228 = !{ptr @gsc_v_5433_max, !229, !"gsc_v_5433_max", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 952, i32 27}
!230 = !{ptr @gsc_pm_ops, !231, !"gsc_pm_ops", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1309, i32 32}
!232 = !{ptr @.str.91, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1304, i32 2}
!234 = !{ptr @.str.92, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @gsc_runtime_suspend.__UNIQUE_ID_ddebug327, !233, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/platform/exynos-gsc/gsc-core.c", i32 1273, i32 2}
!238 = !{ptr @gsc_runtime_resume.__UNIQUE_ID_ddebug326, !237, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i64 2148983833, i64 2148983838, i64 2148983851, i64 2148983895, i64 2148983929, i64 2148983950}
!249 = !{i16 0, i16 17}
!250 = !{i8 0, i8 2}
!251 = !{i64 4646756}
!252 = !{i64 2156585419}
!253 = !{i64 2156586085}
!254 = !{i64 2156586323}
!255 = !{i64 4646338}
!256 = !{i64 2156584353}
!257 = !{i64 2156584589}
