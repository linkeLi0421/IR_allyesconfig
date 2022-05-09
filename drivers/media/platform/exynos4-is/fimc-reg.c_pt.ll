; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-reg.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mbus_pixfmt_desc = type { i32, i32, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.95, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.95 = type { ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fimc_hw_set_target_format.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p_fimc\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fimc_hw_set_target_format\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos4-is/fimc-reg.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d: w= %d, h= %d color: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fimc_hw_set_mainscaler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fimc_hw_set_mainscaler\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d: main_hratio= 0x%X  main_vratio= 0x%X\0A\00", [51 x i8] zeroinitializer }, align 32
@fimc_hw_set_output_addr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_hw_set_output_addr\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d: dst_buf[%d]: 0x%X, cb: 0x%X, cr: 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@pix_desc = internal constant { [4 x %struct.mbus_pixfmt_desc], [48 x i8] } { [4 x %struct.mbus_pixfmt_desc] [%struct.mbus_pixfmt_desc { i32 8200, i32 0, i16 8 }, %struct.mbus_pixfmt_desc { i32 8201, i32 16384, i16 8 }, %struct.mbus_pixfmt_desc { i32 8199, i32 49152, i16 8 }, %struct.mbus_pixfmt_desc { i32 8198, i32 32768, i16 8 }], [48 x i8] zeroinitializer }, align 32
@fimc_hw_set_camera_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Camera color format not supported: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fimc_hw_set_camera_source\00", [38 x i8] zeroinitializer }, align 32
@fimc_hw_set_camera_source._entry_ptr = internal global ptr @fimc_hw_set_camera_source._entry, section ".printk_index", align 4
@fimc_hw_set_camera_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Not supported camera pixel format: %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fimc_hw_set_camera_type\00", [40 x i8] zeroinitializer }, align 32
@fimc_hw_set_camera_type._entry_ptr = internal global ptr @fimc_hw_set_camera_type._entry, section ".printk_index", align 4
@fimc_hw_set_camera_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ISP Writeback input is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@fimc_hw_set_camera_type._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Invalid FIMC bus type selected: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@fimc_hw_set_camera_type._entry_ptr.15 = internal global ptr @fimc_hw_set_camera_type._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"not supported id: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@switch.table.fimc_hw_set_camera_source = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.23 = internal global [10 x i64] [i64 8, i64 32, i64 18, i64 19, i64 20, i64 32, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 8199, i64 16385, i64 20481]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 110, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 318, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 551, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"pix_desc\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 591, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 623, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 703, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 725, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 728, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [48 x i8] c"../drivers/media/platform/exynos4-is/fimc-reg.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 821, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant [39 x i8] c"switch.table.fimc_hw_set_camera_source\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @fimc_hw_set_camera_source._entry, ptr @fimc_hw_set_camera_source._entry_ptr, ptr @fimc_hw_set_camera_type._entry, ptr @fimc_hw_set_camera_type._entry.13, ptr @fimc_hw_set_camera_type._entry_ptr, ptr @fimc_hw_set_camera_type._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pix_desc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @switch.table.fimc_hw_set_camera_source], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pix_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_hw_set_camera_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_hw_set_camera_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_hw_set_camera_type._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fimc_hw_set_camera_source to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !47
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %9 = or i32 %8, 4224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %9) #5, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %16 = and i32 %15, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %16) #5, !srcloc !47
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_data, align 8
  %out_buf_count = getelementptr inbounds %struct.fimc_drvdata, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %out_buf_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %out_buf_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp = icmp ugt i8 %22, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #5, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_rotation(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %5 = and i32 %4, -14680193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rotation = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %7 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rotation, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.if.end7_crit_edge [
    i32 90, label %entry.if.then_crit_edge
    i32 270, label %entry.if.then_crit_edge52
  ]

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge52
  %out_path = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 7
  %10 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp4 = icmp eq i32 %11, 3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %6, -2147483648
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %6, 8192
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %entry.if.end7_crit_edge
  %cfg.0 = phi i32 [ %or, %if.then5 ], [ %or6, %if.else ], [ %6, %entry.if.end7_crit_edge ]
  %out_path8 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 7
  %12 = ptrtoint ptr %out_path8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_path8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp9 = icmp eq i32 %13, 2
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %hflip.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 11
  %14 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  %15 = and i8 %bf.load.i, -64
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %8)
  %cmp.i = icmp slt i32 %8, 91
  %and.i = xor i32 %17, 49152
  %retval.0.i = select i1 %cmp.i, i32 %17, i32 %and.i
  %or12 = or i32 %retval.0.i, %cfg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %18) #5, !srcloc !47
  br label %if.end31

if.else15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %22, i32 252
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %24 = and i32 %23, -6291457
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %hflip.i47 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 11
  %26 = ptrtoint ptr %hflip.i47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i48 = load i8, ptr %hflip.i47, align 4
  %27 = and i8 %bf.load.i48, -128
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 7
  %30 = and i8 %bf.load.i48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i = icmp eq i8 %30, 0
  %spec.store.select9.i = select i1 %tobool4.not.i, i32 %29, i32 8192
  %31 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %32)
  %cmp.i50 = icmp slt i32 %32, 91
  %xor.i = xor i32 %spec.store.select9.i, 24576
  %retval.0.i51 = select i1 %cmp.i50, i32 %spec.store.select9.i, i32 %xor.i
  %or25 = or i32 %retval.0.i51, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %35, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %33) #5, !srcloc !47
  br label %if.end31

if.end31:                                         ; preds = %if.else15, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_target_format(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_hw_set_target_format.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_hw_set_target_format, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %width = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %fmt = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %color, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_hw_set_target_format.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef %3, i32 noundef %5, i32 noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %13 = and i32 %12, 15728784
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %fmt6 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt6, align 4
  %color7 = getelementptr inbounds %struct.fimc_fmt, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %color7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %color7, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %18, label %do.end.sw.epilog_crit_edge [
    i32 16, label %do.end.sw.bb_crit_edge
    i32 17, label %do.end.sw.bb_crit_edge82
    i32 18, label %do.end.sw.bb_crit_edge83
    i32 19, label %do.end.sw.bb_crit_edge84
    i32 20, label %do.end.sw.bb_crit_edge85
    i32 36, label %do.end.sw.bb10_crit_edge
    i32 33, label %do.end.sw.bb10_crit_edge86
    i32 34, label %do.end.sw.bb10_crit_edge87
    i32 35, label %do.end.sw.bb10_crit_edge88
  ]

do.end.sw.bb10_crit_edge88:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end.sw.bb10_crit_edge87:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end.sw.bb10_crit_edge86:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end.sw.bb_crit_edge85:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge84:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge83:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge82:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge82, %do.end.sw.bb_crit_edge83, %do.end.sw.bb_crit_edge84, %do.end.sw.bb_crit_edge85
  %or = or i32 %14, 1610612736
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge86, %do.end.sw.bb10_crit_edge87, %do.end.sw.bb10_crit_edge88
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %colplanes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp = icmp eq i16 %21, 1
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %or14 = or i32 %14, 1073741824
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %or15 = or i32 %14, 536870912
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then13, %sw.bb, %do.end.sw.epilog_crit_edge
  %cfg.0 = phi i32 [ %or14, %if.then13 ], [ %or15, %if.else ], [ %or, %sw.bb ], [ %14, %do.end.sw.epilog_crit_edge ]
  %rotation = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 10
  %22 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rotation, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %23, label %if.else27 [
    i32 90, label %sw.epilog.if.then22_crit_edge
    i32 270, label %sw.epilog.if.then22_crit_edge89
  ]

sw.epilog.if.then22_crit_edge89:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

sw.epilog.if.then22_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then22:                                        ; preds = %sw.epilog.if.then22_crit_edge, %sw.epilog.if.then22_crit_edge89
  %height23 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %width24 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  br label %do.body34

if.else27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %width28 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %height30 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  br label %do.body34

do.body34:                                        ; preds = %if.else27, %if.then22
  %width24.sink = phi ptr [ %width24, %if.then22 ], [ %height30, %if.else27 ]
  %shl.sink.in.in = phi ptr [ %height23, %if.then22 ], [ %width28, %if.else27 ]
  %25 = ptrtoint ptr %shl.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %shl.sink.in = load i32, ptr %shl.sink.in.in, align 4
  %shl.sink = shl i32 %shl.sink.in, 16
  %26 = ptrtoint ptr %width24.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width24.sink, align 4
  %or25 = or i32 %shl.sink, %27
  %cfg.1 = or i32 %or25, %cfg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %28) #5, !srcloc !47
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  %add.ptr42 = getelementptr i8, ptr %32, i32 92
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #5, !srcloc !44
  %34 = shl i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %and46 = and i32 %34, -268435456
  %width47 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %width47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width47, align 4
  %height48 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %height48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height48, align 4
  %mul = mul i32 %38, %36
  %or49 = or i32 %mul, %and46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %add.ptr54 = getelementptr i8, ptr %41, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %39) #5, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_out_dma(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %dma_offset = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11
  %fmt1 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt1, align 4
  %y_v = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 1
  %4 = ptrtoint ptr %y_v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_v, align 4
  %shl = shl i32 %5, 16
  %6 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_offset, align 4
  %or = or i32 %shl, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !47
  %cb_v = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 3
  %11 = ptrtoint ptr %cb_v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_v, align 4
  %shl2 = shl i32 %12, 16
  %cb_h = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 2
  %13 = ptrtoint ptr %cb_h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb_h, align 4
  %or3 = or i32 %shl2, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %17, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %15) #5, !srcloc !47
  %cr_v = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 5
  %18 = ptrtoint ptr %cr_v to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cr_v, align 4
  %shl9 = shl i32 %19, 16
  %cr_h = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 4
  %20 = ptrtoint ptr %cr_h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cr_h, align 4
  %or10 = or i32 %shl9, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %24, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %22) #5, !srcloc !47
  %25 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fimc_dev, align 4
  %d_frame.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1
  %f_height.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_height.i, align 4
  %shl.i = shl i32 %28, 16
  %29 = ptrtoint ptr %d_frame.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %d_frame.i, align 4
  %or.i = or i32 %shl.i, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %regs.i = getelementptr inbounds %struct.fimc_dev, ptr %26, i32 0, i32 9
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #5, !srcloc !47
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %37 = ptrtoint ptr %d_frame.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %38)
  %cmp.i = icmp ugt i32 %38, 1279
  %39 = and i32 %36, -536870913
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %masksel.i = select i1 %cmp.i, i32 32, i32 0
  %cfg.0.i = or i32 %masksel.i, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #5
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %41) #5, !srcloc !47
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr17 = getelementptr i8, ptr %45, i32 76
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %47 = and i32 %46, -184550148
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 4
  %49 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %colplanes, align 2
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %50, label %entry.if.end36_crit_edge [
    i16 1, label %if.then
    i16 2, label %if.then25
  ]

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %out_order_1p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 2
  %52 = ptrtoint ptr %out_order_1p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %out_order_1p, align 4
  %or20 = or i32 %53, %48
  br label %if.end36

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %out_order_2p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 3
  %54 = ptrtoint ptr %out_order_2p to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out_order_2p, align 4
  %or26 = or i32 %48, %55
  %or27 = or i32 %or26, 8
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %if.then, %entry.if.end36_crit_edge
  %cfg.0 = phi i32 [ %or20, %if.then ], [ %or27, %if.then25 ], [ %48, %entry.if.end36_crit_edge ]
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %color, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %57, label %if.end36.do.body56_crit_edge [
    i32 16, label %if.then51
    i32 17, label %if.then45
  ]

if.end36.do.body56_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %or46 = or i32 %cfg.0, 65536
  br label %do.body56

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %or52 = or i32 %cfg.0, 131072
  br label %do.body56

do.body56:                                        ; preds = %if.then51, %if.then45, %if.end36.do.body56_crit_edge
  %cfg.1 = phi i32 [ %or46, %if.then45 ], [ %or52, %if.then51 ], [ %cfg.0, %if.end36.do.body56_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %59 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr60 = getelementptr i8, ptr %61, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %59) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_en_lastirq(ptr nocapture noundef readonly %dev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %3 = and i32 %2, -67108865
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_prescaler(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %hfactor = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %hfactor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfactor, align 4
  %vfactor = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %vfactor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfactor, align 4
  %add = add i32 %5, %3
  %.neg = mul i32 %add, -268435456
  %shl = add i32 %.neg, -1610612736
  %pre_hratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_hratio, align 4
  %shl1 = shl i32 %7, 16
  %pre_vratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pre_vratio, align 4
  %or = or i32 %shl1, %9
  %or2 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #5, !srcloc !47
  %pre_dst_width = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 5
  %13 = ptrtoint ptr %pre_dst_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pre_dst_width, align 4
  %shl3 = shl i32 %14, 16
  %pre_dst_height = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %pre_dst_height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pre_dst_height, align 4
  %or4 = or i32 %shl3, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_mainscaler(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %variant1 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_hw_set_mainscaler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_hw_set_mainscaler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %main_hratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %main_hratio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %main_hratio, align 4
  %main_vratio = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 8
  %6 = ptrtoint ptr %main_vratio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %main_vratio, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_hw_set_mainscaler.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 319, i32 noundef %5, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fimc_dev, align 4
  %scaler.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8
  %regs.i = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %13 = and i32 %12, -8257787
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %flags.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 12
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %or.i = or i32 %14, 402653184
  %spec.select.i = select i1 %tobool.not.i, i32 %or.i, i32 %14
  %17 = ptrtoint ptr %scaler.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %scaler.i, align 4
  %18 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  %or5.i = or i32 %spec.select.i, -2147483648
  %cfg.1.i = select i1 %tobool3.not.i, i32 %or5.i, i32 %spec.select.i
  %or12.i = or i32 %cfg.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool10.not96.i = icmp slt i8 %bf.load.i, 0
  %cfg.2.i = select i1 %tobool10.not96.i, i32 %or12.i, i32 %cfg.1.i
  %19 = and i8 %bf.load.i, 64
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 23
  %22 = and i8 %bf.load.i, 32
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 4
  %25 = or i32 %24, %21
  %26 = or i32 %cfg.2.i, %25
  %in_path.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 6
  %27 = ptrtoint ptr %in_path.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp eq i32 %28, 2
  br i1 %cmp.i, label %if.then30.i, label %do.end.if.end36.i_crit_edge

do.end.if.end36.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then30.i:                                      ; preds = %do.end
  %fmt.i = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %29 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fmt.i, align 4
  %color.i = getelementptr inbounds %struct.fimc_fmt, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %color.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %32, label %if.then30.i.if.end36.i_crit_edge [
    i32 20, label %sw.bb34.i
    i32 19, label %sw.bb32.i
  ]

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

sw.bb32.i:                                        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i = or i32 %26, 8192
  br label %if.end36.i

sw.bb34.i:                                        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %or35.i = or i32 %26, 16384
  br label %if.end36.i

if.end36.i:                                       ; preds = %sw.bb34.i, %sw.bb32.i, %if.then30.i.if.end36.i_crit_edge, %do.end.if.end36.i_crit_edge
  %cfg.5.i = phi i32 [ %or35.i, %sw.bb34.i ], [ %or33.i, %sw.bb32.i ], [ %26, %do.end.if.end36.i_crit_edge ], [ %26, %if.then30.i.if.end36.i_crit_edge ]
  %out_path.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 7
  %34 = ptrtoint ptr %out_path.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp37.i = icmp eq i32 %35, 2
  br i1 %cmp37.i, label %if.then38.i, label %if.else56.i

if.then38.i:                                      ; preds = %if.end36.i
  %fmt40.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %36 = ptrtoint ptr %fmt40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fmt40.i, align 4
  %color41.i = getelementptr inbounds %struct.fimc_fmt, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %color41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %color41.i, align 4
  %40 = add i32 %39, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %if.then38.i.fimc_hw_set_scaler.exit_crit_edge, label %if.else.i

if.then38.i.fimc_hw_set_scaler.exit_crit_edge:    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_hw_set_scaler.exit

if.else.i:                                        ; preds = %if.then38.i
  %42 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %39, label %if.else.i.fimc_hw_set_scaler.exit_crit_edge [
    i32 19, label %if.then47.i
    i32 20, label %if.then51.i
  ]

if.else.i.fimc_hw_set_scaler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_hw_set_scaler.exit

if.then47.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %or48.i = or i32 %cfg.5.i, 2048
  br label %fimc_hw_set_scaler.exit

if.then51.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %or52.i = or i32 %cfg.5.i, 4096
  br label %fimc_hw_set_scaler.exit

if.else56.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %and59.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %spec.select95.v.i = select i1 %tobool60.not.i, i32 4096, i32 33558528
  %spec.select95.i = or i32 %cfg.5.i, %spec.select95.v.i
  br label %fimc_hw_set_scaler.exit

fimc_hw_set_scaler.exit:                          ; preds = %if.else56.i, %if.then51.i, %if.then47.i, %if.else.i.fimc_hw_set_scaler.exit_crit_edge, %if.then38.i.fimc_hw_set_scaler.exit_crit_edge
  %cfg.7.i = phi i32 [ %or48.i, %if.then47.i ], [ %or52.i, %if.then51.i ], [ %cfg.5.i, %if.then38.i.fimc_hw_set_scaler.exit_crit_edge ], [ %cfg.5.i, %if.else.i.fimc_hw_set_scaler.exit_crit_edge ], [ %spec.select95.i, %if.else56.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %cfg.7.i) #5
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr66.i = getelementptr i8, ptr %45, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %43) #5, !srcloc !47
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %47, i32 88
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %49 = and i32 %48, 16646398
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %3, align 4
  %52 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool7.not = icmp eq i8 %52, 0
  %main_hratio39 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 7
  %53 = ptrtoint ptr %main_hratio39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %main_hratio39, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %fimc_hw_set_scaler.exit
  call void @__sanitizer_cov_trace_pc() #7
  %55 = shl i32 %54, 10
  %shl = and i32 %55, -65536
  %or = or i32 %shl, %50
  %main_vratio10 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 8
  %56 = ptrtoint ptr %main_vratio10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %main_vratio10, align 4
  %shr11 = lshr i32 %57, 6
  %or13 = or i32 %or, %shr11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %60, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %58) #5, !srcloc !47
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 8
  %add.ptr22 = getelementptr i8, ptr %62, i32 392
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %64 = and i32 %63, -1073479681
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %main_hratio39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %main_hratio39, align 4
  %and28 = shl i32 %67, 10
  %shl29 = and i32 %and28, 64512
  %or30 = or i32 %shl29, %65
  %68 = ptrtoint ptr %main_vratio10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %main_vratio10, align 4
  %and32 = and i32 %69, 63
  %or33 = or i32 %or30, %and32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %72, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %70) #5, !srcloc !47
  br label %if.end50

if.else:                                          ; preds = %fimc_hw_set_scaler.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl40 = shl i32 %54, 16
  %or41 = or i32 %shl40, %50
  %main_vratio42 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8, i32 8
  %73 = ptrtoint ptr %main_vratio42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %main_vratio42, align 4
  %or44 = or i32 %or41, %74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 8
  %add.ptr49 = getelementptr i8, ptr %77, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %75) #5, !srcloc !47
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_enable_capture(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %5 = or i32 %4, 2
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %scaler = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8
  %7 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %scaler, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %or2 = or i32 %6, 1073741824
  %and = and i32 %6, 1073741824
  %cfg.0 = select i1 %tobool.not, i32 %and, i32 %or2
  %or3 = or i32 %cfg.0, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_disable_capture(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %3 = and i32 %2, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_effect(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %effect1 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9
  %2 = ptrtoint ptr %effect1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %effect1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  %or3 = or i32 %3, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %3)
  %cmp5 = icmp eq i32 %3, 67108864
  br i1 %cmp5, label %if.then6, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pat_cb = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %pat_cb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pat_cb, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 13
  %pat_cr = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %pat_cr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pat_cr, align 1
  %conv7 = zext i8 %7 to i32
  %or8 = or i32 %or3, %conv7
  %or9 = or i32 %or8, %shl
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %cfg.0 = phi i32 [ %or9, %if.then6 ], [ %or3, %if.then.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_rgb_alpha(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %5 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fimc_dev, align 4
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 76
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %10 = and i32 %9, 267452415
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %alpha = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 13
  %12 = ptrtoint ptr %alpha to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alpha, align 4
  %conv3 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv3, 4
  %or = or i32 %shl, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %14) #5, !srcloc !47
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_in_dma(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %dma_offset = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11
  %y_v = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %y_v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_v, align 4
  %shl = shl i32 %3, 16
  %4 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_offset, align 4
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !47
  %cb_v = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %cb_v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb_v, align 4
  %shl1 = shl i32 %10, 16
  %cb_h = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %cb_h to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_h, align 4
  %or2 = or i32 %shl1, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %15, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #5, !srcloc !47
  %cr_v = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %cr_v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cr_v, align 4
  %shl8 = shl i32 %17, 16
  %cr_h = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %cr_h to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cr_h, align 4
  %or9 = or i32 %shl8, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %22, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #5, !srcloc !47
  %23 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fimc_dev, align 4
  %out_path.i = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 7
  %25 = ptrtoint ptr %out_path.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %out_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i = icmp eq i32 %26, 3
  %spec.select.i = select i1 %cmp.i, i32 -2147483648, i32 0
  %f_height.i = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 1
  %27 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_height.i, align 4
  %shl.i = shl i32 %28, 16
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctx, align 4
  %or1.i = or i32 %shl.i, %30
  %height.i = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 7
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %shl3.i = shl i32 %32, 16
  %width.i = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 6
  %33 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width.i, align 4
  %or4.i = or i32 %34, %spec.select.i
  %or5.i = or i32 %or4.i, %shl3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #5
  %regs.i = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 9
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #5
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %40, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %38) #5, !srcloc !47
  %41 = ptrtoint ptr %out_path.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.not = icmp eq i32 %42, 3
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %add.ptr.i125 = getelementptr i8, ptr %44, i32 384
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %46 = and i32 %45, -129
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %masksel.i = select i1 %cmp.not, i32 -2147483648, i32 0
  %cfg.0.i = or i32 %47, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #5
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %add.ptr3.i = getelementptr i8, ptr %50, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %48) #5, !srcloc !47
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %52, i32 252
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %54 = and i32 %53, -1049625360
  %55 = or i32 %54, 135266308
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %ctx, i32 0, i32 12
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %color, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %60, label %entry.do.body53_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 19, label %entry.sw.bb_crit_edge130
    i32 20, label %entry.sw.bb_crit_edge131
    i32 32, label %sw.bb20
    i32 33, label %entry.sw.bb29_crit_edge
    i32 34, label %entry.sw.bb29_crit_edge132
    i32 35, label %entry.sw.bb29_crit_edge133
    i32 36, label %entry.sw.bb29_crit_edge134
  ]

entry.sw.bb29_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

entry.sw.bb29_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

entry.sw.bb29_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

entry.sw.bb29_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

entry.sw.bb_crit_edge131:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge130:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge130, %entry.sw.bb_crit_edge131
  %or19 = or i32 %56, 6
  br label %do.body53

sw.bb20:                                          ; preds = %entry
  %colplanes = getelementptr inbounds %struct.fimc_fmt, ptr %58, i32 0, i32 4
  %62 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %colplanes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %63)
  %cmp24 = icmp eq i16 %63, 2
  br i1 %cmp24, label %if.then, label %sw.bb20.do.body53_crit_edge

sw.bb20.do.body53_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

if.then:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %in_order_2p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 5
  %64 = ptrtoint ptr %in_order_2p to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %in_order_2p, align 4
  %or26 = or i32 %56, %65
  %or27 = or i32 %or26, 32768
  br label %do.body53

sw.bb29:                                          ; preds = %entry.sw.bb29_crit_edge, %entry.sw.bb29_crit_edge132, %entry.sw.bb29_crit_edge133, %entry.sw.bb29_crit_edge134
  %colplanes31 = getelementptr inbounds %struct.fimc_fmt, ptr %58, i32 0, i32 4
  %66 = ptrtoint ptr %colplanes31 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %colplanes31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %67)
  %cmp33 = icmp eq i16 %67, 1
  br i1 %cmp33, label %if.then35, label %if.else38

if.then35:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %in_order_1p = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 4
  %68 = ptrtoint ptr %in_order_1p to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %in_order_1p, align 4
  %or36 = or i32 %56, %69
  %or37 = or i32 %or36, 4
  br label %do.body53

if.else38:                                        ; preds = %sw.bb29
  %or39 = or i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %67)
  %cmp43 = icmp eq i16 %67, 2
  br i1 %cmp43, label %if.then45, label %if.else38.do.body53_crit_edge

if.else38.do.body53_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

if.then45:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  %in_order_2p46 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 5
  %70 = ptrtoint ptr %in_order_2p46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %in_order_2p46, align 4
  %or47 = or i32 %56, %71
  %or48 = or i32 %or47, 32770
  br label %do.body53

do.body53:                                        ; preds = %if.then45, %if.else38.do.body53_crit_edge, %if.then35, %if.then, %sw.bb20.do.body53_crit_edge, %sw.bb, %entry.do.body53_crit_edge
  %cfg.0 = phi i32 [ %56, %entry.do.body53_crit_edge ], [ %or37, %if.then35 ], [ %or48, %if.then45 ], [ %or27, %if.then ], [ %or19, %sw.bb ], [ %56, %sw.bb20.do.body53_crit_edge ], [ %or39, %if.else38.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %72 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 8
  %add.ptr57 = getelementptr i8, ptr %74, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %72) #5, !srcloc !47
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 8
  %add.ptr61 = getelementptr i8, ptr %76, i32 396
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %78 = and i32 %77, -6291553
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fmt, align 4
  %fourcc.i = getelementptr inbounds %struct.fimc_fmt, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091860, i32 %83)
  %cmp.i126.not = icmp eq i32 %83, 842091860
  %or70 = or i32 %79, 1610612736
  %spec.select = select i1 %cmp.i126.not, i32 %or70, i32 %79
  %fmt72 = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %84 = ptrtoint ptr %fmt72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fmt72, align 4
  %fourcc.i127 = getelementptr inbounds %struct.fimc_fmt, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %fourcc.i127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fourcc.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091860, i32 %87)
  %cmp.i128.not = icmp eq i32 %87, 842091860
  %or76 = or i32 %spec.select, 24576
  %cfg.2 = select i1 %cmp.i128.not, i32 %or76, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %cfg.2)
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 8
  %add.ptr82 = getelementptr i8, ptr %90, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %88) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_input_path(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %5 = and i32 %4, -134217729
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %in_path = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 6
  %7 = ptrtoint ptr %in_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  %or = or i32 %6, 8
  %cfg.0 = select i1 %cmp, i32 %or, i32 %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_output_path(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 88
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %5 = and i32 %4, -5
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %out_path = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 7
  %7 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  %or = or i32 %6, 67108864
  %spec.select = select i1 %cmp, i32 %or, i32 %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %11, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_input_addr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %3 = or i32 %2, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %cb = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %15, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %13) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %cr = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 2
  %16 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %20, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #5, !srcloc !47
  %21 = and i32 %2, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr23 = getelementptr i8, ptr %23, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_output_addr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp = icmp eq i32 %index, -1
  %spec.select = select i1 %cmp, i32 0, i32 %index
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %cb = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 1
  %cr = getelementptr inbounds %struct.fimc_addr, ptr %addr, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond24.do.body_crit_edge, %entry
  %i.0 = phi i32 [ %spec.select, %entry ], [ %inc, %do.cond24.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %mul = shl i32 %i.0, 2
  %add = add i32 %mul, 24
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add7 = add i32 %mul, 40
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add14 = add i32 %mul, 56
  %add.ptr15 = getelementptr i8, ptr %14, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #5, !srcloc !47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_hw_set_output_addr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_hw_set_output_addr, %if.then)) #5
          to label %do.cond24 [label %if.then], !srcloc !57

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb, align 4
  %19 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fimc_hw_set_output_addr.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 552, i32 noundef %i.0, i32 noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %do.cond24

do.cond24:                                        ; preds = %if.then, %do.body
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp26 = icmp slt i32 %inc, 4
  %or.cond = select i1 %cmp, i1 %cmp26, i1 false
  br i1 %or.cond, label %do.cond24.do.body_crit_edge, label %do.end27

do.cond24.do.body_crit_edge:                      ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end27:                                         ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_polarity(ptr nocapture noundef readonly %fimc, ptr nocapture noundef readonly %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %3 = and i32 %2, -301989896
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %flags = getelementptr inbounds %struct.fimc_source_info, ptr %cam, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %7 = and i16 %6, 128
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 19
  %10 = or i32 %9, %4
  %11 = and i16 %6, 32
  %12 = zext i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 20
  %14 = or i32 %10, %13
  %15 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  %or22 = or i32 %14, 16777232
  %cfg.3 = select i1 %tobool13.not, i32 %14, i32 %or22
  %16 = lshr i16 %6, 10
  %17 = and i16 %16, 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %cfg.3, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr32 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #5, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_source(ptr noundef %fimc, ptr nocapture noundef readonly %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vid_cap = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13
  %0 = ptrtoint ptr %vid_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid_cap, align 8
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %source, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge74
    i32 3, label %sw.bb28
  ]

entry.sw.bb_crit_edge74:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge74
  %fmt = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %color, align 4
  %and = and i32 %8, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.cond.preheader:                               ; preds = %sw.bb
  %code = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5, i32 2
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 8
  %switch.tableidx = add i32 %10, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 4
  br i1 %11, label %switch.lookup, label %do.end

do.end:                                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 0, i32 12
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %13) #8
  br label %cleanup

switch.lookup:                                    ; preds = %for.cond.preheader
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.fimc_hw_set_camera_source, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cisrcfmt = getelementptr [4 x %struct.mbus_pixfmt_desc], ptr @pix_desc, i32 0, i32 %switch.load, i32 1
  %15 = ptrtoint ptr %cisrcfmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cisrcfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp14 = icmp eq i32 %3, 1
  br i1 %cmp14, label %if.then16, label %switch.lookup.sw.epilog_crit_edge

switch.lookup.sw.epilog_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then16:                                        ; preds = %switch.lookup
  %bus_width5 = getelementptr [4 x %struct.mbus_pixfmt_desc], ptr @pix_desc, i32 0, i32 %switch.load, i32 2
  %17 = ptrtoint ptr %bus_width5 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bus_width5, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %18, label %if.then16.sw.epilog_crit_edge [
    i16 8, label %if.then19
    i16 16, label %if.then23
  ]

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %or20 = or i32 %16, -2147483648
  br label %sw.epilog

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %or24 = or i32 %16, 536870912
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fmt29 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %fmt29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt29, align 4
  %color30 = getelementptr inbounds %struct.fimc_fmt, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %color30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %color30, align 4
  %and31 = and i32 %23, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %spec.select = select i1 %tobool32.not, i32 0, i32 -2147483648
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %if.then23, %if.then19, %if.then16.sw.epilog_crit_edge, %switch.lookup.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %cfg.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %or20, %if.then19 ], [ %or24, %if.then23 ], [ %16, %switch.lookup.sw.epilog_crit_edge ], [ -2147483648, %sw.bb.sw.epilog_crit_edge ], [ %16, %if.then16.sw.epilog_crit_edge ], [ %spec.select, %sw.bb28 ]
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %o_width, align 4
  %shl = shl i32 %25, 16
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %o_height, align 4
  %or36 = or i32 %27, %cfg.1
  %or37 = or i32 %or36, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 9
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !47
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_camera_offset(ptr nocapture noundef readonly %fimc, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  %3 = and i32 %2, 15728760
  %offs_h = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offs_h, align 4
  %shl = shl i32 %5, 16
  %offs_v = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 5
  %6 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs_v, align 4
  %8 = or i32 %3, 128
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %or2 = or i32 %9, %7
  %or3 = or i32 %or2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #5, !srcloc !47
  %o_width = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %o_width, align 4
  %width = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 6
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %offs_h to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offs_h, align 4
  %19 = add i32 %16, %18
  %sub7 = sub i32 %14, %19
  %o_height = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 3
  %20 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %o_height, align 4
  %height = getelementptr inbounds %struct.fimc_frame, ptr %f, i32 0, i32 7
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %24 = ptrtoint ptr %offs_v to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offs_v, align 4
  %26 = add i32 %23, %25
  %sub10 = sub i32 %21, %26
  %shl11 = shl i32 %sub7, 16
  %or12 = or i32 %sub10, %shl11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr17 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %27) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_type(ptr noundef %fimc, ptr nocapture noundef readonly %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %3 = and i32 %2, 939196359
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %source, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %6, label %do.end85 [
    i32 3, label %sw.bb
    i32 1, label %entry.sw.bb21_crit_edge
    i32 2, label %entry.sw.bb21_crit_edge127
    i32 4, label %sw.bb36
    i32 5, label %entry.sw.bb38_crit_edge
  ]

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

entry.sw.bb21_crit_edge127:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

sw.bb:                                            ; preds = %entry
  %mux_id = getelementptr inbounds %struct.fimc_source_info, ptr %source, i32 0, i32 3
  %8 = ptrtoint ptr %mux_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mux_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp eq i16 %9, 0
  %spec.select.v = select i1 %cmp, i32 136, i32 8
  %spec.select = or i32 %spec.select.v, %4
  %code = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %11, label %do.end [
    i32 8199, label %sw.bb.sw.epilog_crit_edge
    i32 16385, label %sw.bb.sw.bb7_crit_edge
    i32 20481, label %sw.bb.sw.bb7_crit_edge128
  ]

sw.bb.sw.bb7_crit_edge128:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge128
  %or8 = or i32 %spec.select, 256
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 0, i32 12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %11) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb.sw.epilog_crit_edge
  %tmp.0 = phi i32 [ 304, %sw.bb7 ], [ 286, %sw.bb.sw.epilog_crit_edge ]
  %cfg.1 = phi i32 [ %or8, %sw.bb7 ], [ %spec.select, %sw.bb.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #5, !srcloc !47
  br label %do.body94

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge127
  %mux_id22 = getelementptr inbounds %struct.fimc_source_info, ptr %source, i32 0, i32 3
  %16 = ptrtoint ptr %mux_id22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mux_id22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp24 = icmp eq i16 %17, 0
  %or27 = or i32 %4, 536870912
  %spec.select125 = select i1 %cmp24, i32 %or27, i32 %4
  %code30 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 5, i32 2
  %18 = ptrtoint ptr %code30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %19)
  %cmp31 = icmp eq i32 %19, 16385
  %or34 = or i32 %spec.select125, 256
  %spec.select126 = select i1 %cmp31, i32 %or34, i32 %spec.select125
  br label %do.body94

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or37 = or i32 %4, 64
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb36, %entry.sw.bb38_crit_edge
  %cfg.3 = phi i32 [ %4, %entry.sw.bb38_crit_edge ], [ %or37, %sw.bb36 ]
  %variant = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 5
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %21, align 4
  %23 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %land.end, label %if.then39

if.then39:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %or40 = or i32 %cfg.3, 64
  br label %do.body94

land.end:                                         ; preds = %sw.bb38
  %.b124 = load i1, ptr @fimc_hw_set_camera_type.__already_done, align 1
  br i1 %.b124, label %land.end.do.body94_crit_edge, label %if.then47, !prof !120

land.end.do.body94_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body94

if.then47:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fimc_hw_set_camera_type.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 725, i32 noundef 9, ptr noundef nonnull @.str.12) #5
  br label %do.body94

do.end85:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name89 = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 13, i32 2, i32 0, i32 12
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name89, i32 noundef %6) #8
  br label %cleanup

do.body94:                                        ; preds = %if.then47, %land.end.do.body94_crit_edge, %if.then39, %sw.bb21, %sw.epilog
  %cfg.4 = phi i32 [ %or40, %if.then39 ], [ %cfg.1, %sw.epilog ], [ %cfg.3, %if.then47 ], [ %cfg.3, %land.end.do.body94_crit_edge ], [ %spec.select126, %sw.bb21 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %cfg.4)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr98 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %24) #5, !srcloc !47
  br label %cleanup

cleanup:                                          ; preds = %do.body94, %do.end85, %do.end
  %retval.0 = phi i32 [ -22, %do.end85 ], [ 0, %do.body94 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_clear_irq(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  %3 = or i32 %2, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_enable_scaler(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %3 = and i32 %2, -8388609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %on, i32 32768, i32 0
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_hw_activate_input_dma(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 252
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = zext i1 %on to i32
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_get_frame_index(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 8
  %cistatus2 = getelementptr inbounds %struct.fimc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cistatus2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cistatus2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %regs4 = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs4, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %and = and i32 %7, 63
  %sub = add nsw i32 %and, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr5 = getelementptr i8, ptr %5, i32 100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_get_prev_frame_index(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 8
  %cistatus2 = getelementptr inbounds %struct.fimc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cistatus2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cistatus2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.fimc_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  %8 = lshr i32 %7, 7
  %and = and i32 %8, 63
  %sub = add nsw i32 %and, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_activate_capture(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fimc_dev = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fimc_dev, align 4
  %scaler = getelementptr inbounds %struct.fimc_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %scaler, align 4
  %3 = and i8 %bf.load, 16
  %regs.i = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 88
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %7 = and i32 %6, -8388609
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = zext i8 %3 to i32
  %10 = shl nuw nsw i32 %9, 11
  %cfg.0.i = or i32 %8, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %13, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #5, !srcloc !47
  %14 = ptrtoint ptr %fimc_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fimc_dev, align 4
  %regs.i3 = getelementptr inbounds %struct.fimc_dev, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %regs.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i3, align 8
  %add.ptr.i4 = getelementptr i8, ptr %17, i32 192
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %19 = or i32 %18, 2
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = ptrtoint ptr %scaler to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %scaler, align 4
  %22 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %or2.i = or i32 %20, 1073741824
  %and.i = and i32 %20, 1073741824
  %cfg.0.i5 = select i1 %tobool.not.i, i32 %and.i, i32 %or2.i
  %or3.i = or i32 %cfg.0.i5, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #5
  %24 = ptrtoint ptr %regs.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i3, align 8
  %add.ptr5.i = getelementptr i8, ptr %25, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %23) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_deactivate_capture(ptr nocapture noundef readonly %fimc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 9
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #5, !srcloc !47
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %9 = and i32 %8, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i6 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i6, i32 %9) #5, !srcloc !47
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %15 = and i32 %14, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i9 = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i9, i32 %15) #5, !srcloc !47
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 76
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %21 = and i32 %20, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i12 = getelementptr i8, ptr %23, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i12, i32 %21) #5, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_camblk_cfg_writeback(ptr nocapture noundef readonly %fimc) local_unnamed_addr #0 align 64 {
entry:
  %camblk_cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysreg = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 4
  %0 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysreg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %camblk_cfg) #5
  %2 = ptrtoint ptr %camblk_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %camblk_cfg, align 4, !annotation !131
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @regmap_read(ptr noundef nonnull %1, i32 noundef 536, ptr noundef nonnull %camblk_cfg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %camblk_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %camblk_cfg, align 4
  %5 = and i32 %4, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %5)
  %cmp2.not = icmp eq i32 %5, 3145728
  br i1 %cmp2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.fimc_dev, ptr %fimc, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5 = icmp sgt i32 %7, 2
  br i1 %cmp5, label %do.end, label %if.then28.critedge, !prof !132

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 821, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %7) #5
  br label %if.end30

if.then28.critedge:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nsw i32 %7, 20
  %shl = shl nuw nsw i32 1, %add
  br label %if.end30

if.end30:                                         ; preds = %if.then28.critedge, %do.end
  %val.0 = phi i32 [ 0, %do.end ], [ %shl, %if.then28.critedge ]
  %call.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef 536, i32 noundef 7372800, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %or = or i32 %val.0, 32768
  %call.i72 = call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef 536, i32 noundef 7372800, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp36 = icmp slt i32 %call.i72, 0
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call.i73 = call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef 524, i32 noundef 128, i32 noundef -129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp40 = icmp slt i32 %call.i73, 0
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.i74 = call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef 524, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i74, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %lor.lhs.false.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %if.end30.cleanup_crit_edge ], [ %call.i72, %if.end34.cleanup_crit_edge ], [ %call.i73, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %camblk_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 110, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fimc_hw_set_target_format.__UNIQUE_ID_ddebug298, !1, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 318, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fimc_hw_set_mainscaler.__UNIQUE_ID_ddebug299, !7, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 551, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fimc_hw_set_output_addr.__UNIQUE_ID_ddebug300, !11, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 623, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fimc_hw_set_camera_source._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fimc_hw_set_camera_source._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 703, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fimc_hw_set_camera_type._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @fimc_hw_set_camera_type._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 725, i32 4}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 728, i32 3}
!29 = !{ptr @fimc_hw_set_camera_type._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @fimc_hw_set_camera_type._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 821, i32 7}
!33 = !{ptr @pix_desc, !34, !"pix_desc", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/exynos4-is/fimc-reg.c", i32 591, i32 38}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2997216}
!45 = !{i64 2156667663}
!46 = !{i64 2156667965}
!47 = !{i64 2996798}
!48 = !{i64 2156668626}
!49 = !{i64 2156669012}
!50 = !{i64 2156670215}
!51 = !{i64 2156670517}
!52 = !{i64 2156666998}
!53 = !{i64 2156671278}
!54 = !{i64 2156671842}
!55 = !{i64 2156672503}
!56 = !{i64 2156672732}
!57 = !{i64 2148777541, i64 2148777546, i64 2148777559, i64 2148777603, i64 2148777637, i64 2148777658}
!58 = !{i64 2156676178}
!59 = !{i64 2156676473}
!60 = !{i64 2156677134}
!61 = !{i64 2156677363}
!62 = !{i64 2156679195}
!63 = !{i64 2156679590}
!64 = !{i64 2156679985}
!65 = !{i64 2156677757}
!66 = !{i64 2156678419}
!67 = !{i64 2156678801}
!68 = !{i64 2156680647}
!69 = !{i64 2156680951}
!70 = !{i64 2156682667}
!71 = !{i64 2156683049}
!72 = !{i64 2156683441}
!73 = !{i64 2156683833}
!74 = !{i64 2156684494}
!75 = !{i64 2156686076}
!76 = !{i64 2156689564}
!77 = !{i64 2156689878}
!78 = !{i64 2156690544}
!79 = !{i64 2156690848}
!80 = !{i64 2156691296}
!81 = !{i64 2156691957}
!82 = !{i64 2156692511}
!83 = !{i64 2156693172}
!84 = !{i64 2156693558}
!85 = !{i64 2156694064}
!86 = !{i64 2156694734}
!87 = !{i64 2156694964}
!88 = !{i64 2156696245}
!89 = !{i64 2156696640}
!90 = !{i64 2156697035}
!91 = !{i64 2156695444}
!92 = !{i64 2156695845}
!93 = !{i64 2156681617}
!94 = !{i64 2156682005}
!95 = !{i64 2156697697}
!96 = !{i64 2156698303}
!97 = !{i64 2156698969}
!98 = !{i64 2156699233}
!99 = !{i64 2156699895}
!100 = !{i64 2156700286}
!101 = !{i64 2156700947}
!102 = !{i64 2156701333}
!103 = !{i64 2156701994}
!104 = !{i64 2156702296}
!105 = !{i64 2156702726}
!106 = !{i64 2156703186}
!107 = !{i64 2156703649}
!108 = !{i64 2156704157}
!109 = !{i64 2156704581}
!110 = !{i64 2156705032}
!111 = !{i64 2156705486}
!112 = !{i64 2156709009}
!113 = !{i64 2156710472}
!114 = !{i64 2156713921}
!115 = !{i64 2156714587}
!116 = !{i64 2156714917}
!117 = !{i64 2156715311}
!118 = !{i64 2156715977}
!119 = !{i64 2156718928}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2156722727}
!122 = !{i64 2156723389}
!123 = !{i64 2156723691}
!124 = !{i64 2156724352}
!125 = !{i64 2156724738}
!126 = !{i64 2156725399}
!127 = !{i64 2156725781}
!128 = !{i64 2156726442}
!129 = !{i64 2156726929}
!130 = !{i64 2156727429}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 1, i32 2000}
