; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-debayer.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-debayer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vimc_ent_type = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.89, i16, i16, i16, [10 x i16] }
%union.anon.89 = type { i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vimc_deb_pix_map = type { i32, [2 x [2 x i32]] }
%struct.atomic_t = type { i32 }
%struct.vimc_device = type { ptr, ptr, %struct.media_device, %struct.v4l2_device }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vimc_deb_device = type { %struct.vimc_ent_device, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, i32, ptr, ptr, ptr, i32, i32, %struct.v4l2_ctrl_handler, [2 x %struct.media_pad] }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vimc_pix_map = type { [8 x i32], i32, i32, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.85, %union.anon.86, i32, ptr, i32, %struct.anon.87, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@vimc_deb_type = dso_local global { %struct.vimc_ent_type, [20 x i8] } { %struct.vimc_ent_type { ptr @vimc_deb_add, ptr null, ptr @vimc_deb_release }, [20 x i8] zeroinitializer }, align 32
@vimc_deb_add._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vimc_debayer:575:(&vdeb->hdl)->_lock\00", [59 x i8] zeroinitializer }, align 32
@vimc_deb_ctrl_class = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 15728641, ptr @.str.1, i32 6, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 68, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_deb_ctrl_mean_win_size = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vimc_deb_ctrl_ops, ptr null, i32 15790081, ptr @.str.2, i32 1, i64 1, i64 25, i64 2, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_deb_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @vimc_deb_core_ops, ptr null, ptr null, ptr @vimc_deb_video_ops, ptr null, ptr null, ptr null, ptr @vimc_deb_pad_ops }, [32 x i8] zeroinitializer }, align 32
@sink_fmt_default = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 12308, i32 1, i32 8, %union.anon.89 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIMC Controls\00", [18 x i8] zeroinitializer }, align 32
@vimc_deb_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vimc_deb_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Debayer Mean Window Size\00", [39 x i8] zeroinitializer }, align 32
@vimc_deb_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@vimc_deb_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_deb_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vimc_deb_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vimc_deb_init_cfg, ptr @vimc_deb_enum_mbus_code, ptr @vimc_deb_enum_frame_size, ptr null, ptr @vimc_deb_get_fmt, ptr @vimc_deb_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vimc_deb_pix_map_list = internal constant { [12 x %struct.vimc_deb_pix_map], [48 x i8] } { [12 x %struct.vimc_deb_pix_map] [%struct.vimc_deb_pix_map { i32 12289, [2 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 0]] }, %struct.vimc_deb_pix_map { i32 12307, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1]] }, %struct.vimc_deb_pix_map { i32 12290, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1]] }, %struct.vimc_deb_pix_map { i32 12308, [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2]] }, %struct.vimc_deb_pix_map { i32 12295, [2 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 0]] }, %struct.vimc_deb_pix_map { i32 12302, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1]] }, %struct.vimc_deb_pix_map { i32 12298, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1]] }, %struct.vimc_deb_pix_map { i32 12303, [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2]] }, %struct.vimc_deb_pix_map { i32 12296, [2 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 0]] }, %struct.vimc_deb_pix_map { i32 12304, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1]] }, %struct.vimc_deb_pix_map { i32 12305, [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1]] }, %struct.vimc_deb_pix_map { i32 12306, [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2]] }], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@vimc_deb_src_mbus_codes = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 4116, i32 4115, i32 4123, i32 4106, i32 4107, i32 4108, i32 4124, i32 4113, i32 4114, i32 4111], [56 x i8] zeroinitializer }, align 32
@vimc_deb_set_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vimc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vimc_deb_set_fmt\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vimc/vimc-debayer.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s: sink format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vimc_deb_calc_rgb_sink\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"deb: %s: --- Calc pixel %dx%d, window mean %d, seek %d ---\0A\00", [36 x i8] zeroinitializer }, align 32
@vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.10, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"deb: %s: RGB CALC: frame index %d, win pos %dx%d, color %d\0A\00", [36 x i8] zeroinitializer }, align 32
@vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.11, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"deb: %s: RGB CALC: val %d, n %d\0A\00", [63 x i8] zeroinitializer }, align 32
@vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.12, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"deb: %s: PRE CALC: %dx%d Color %d, val %d, n %d\0A\00", [47 x i8] zeroinitializer }, align 32
@vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.13, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"deb: %s: FINAL CALC: %dx%d Color %d, val %d\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.vimc_deb_s_stream = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @vimc_deb_pix_map_list, ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 2), ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 4), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 8), ptr null, ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 6), ptr null, ptr null, ptr null, ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 5), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 7), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 9), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 10), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 11), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 1), ptr getelementptr inbounds ([12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 3)], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 861030210]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 861030210]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 861030210]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 32, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.17 = internal global [12 x i64] [i64 10, i64 32, i64 4106, i64 4107, i64 4108, i64 4111, i64 4113, i64 4114, i64 4115, i64 4116, i64 4123, i64 4124]
@__sancov_gen_cov_switch_values.18 = internal global [12 x i64] [i64 10, i64 32, i64 4106, i64 4107, i64 4108, i64 4111, i64 4113, i64 4114, i64 4115, i64 4116, i64 4123, i64 4124]
@__sancov_gen_cov_switch_values.19 = internal global [14 x i64] [i64 12, i64 32, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"vimc_deb_type\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 620, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 575, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"vimc_deb_ctrl_class\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 544, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"vimc_deb_ctrl_mean_win_size\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 551, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"vimc_deb_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 391, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"sink_fmt_default\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 46, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 547, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"vimc_deb_ctrl_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 530, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 554, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"vimc_deb_core_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 381, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"vimc_deb_video_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 387, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"vimc_deb_pad_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 308, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"vimc_deb_pix_map_list\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 67, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 998, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"vimc_deb_src_mbus_codes\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 54, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 290, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 430, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 463, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 474, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 481, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [50 x i8] c"../drivers/media/test-drivers/vimc/vimc-debayer.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 488, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"switch.table.vimc_deb_s_stream\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @vimc_deb_type, ptr @vimc_deb_add._key, ptr @.str, ptr @vimc_deb_ctrl_class, ptr @vimc_deb_ctrl_mean_win_size, ptr @vimc_deb_ops, ptr @sink_fmt_default, ptr @.str.1, ptr @vimc_deb_ctrl_ops, ptr @.str.2, ptr @vimc_deb_core_ops, ptr @vimc_deb_video_ops, ptr @vimc_deb_pad_ops, ptr @vimc_deb_pix_map_list, ptr @.str.3, ptr @vimc_deb_src_mbus_codes, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.vimc_deb_s_stream], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_add._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_ctrl_class to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_ctrl_mean_win_size to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sink_fmt_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_pix_map_list to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_deb_src_mbus_codes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vimc_deb_s_stream to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_deb_add(ptr noundef %vimc, ptr noundef %vcfg_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 532) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdl = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 9
  %call3 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @vimc_deb_add._key, ptr noundef nonnull @.str) #8
  %call5 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @vimc_deb_ctrl_class, ptr noundef null) #8
  %call7 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @vimc_deb_ctrl_mean_win_size, ptr noundef null) #8
  %ctrl_handler = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 9, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end14, label %if.end.err_free_vdeb_crit_edge

if.end.err_free_vdeb_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_vdeb

if.end14:                                         ; preds = %if.end
  %sd = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 1
  %pads = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 10
  %flags = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 8
  %flags17 = getelementptr %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 4
  %5 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags17, align 8
  %call20 = tail call i32 @vimc_ent_sd_register(ptr noundef nonnull %call7.i.i, ptr noundef %sd, ptr noundef %v4l2_dev1, ptr noundef %vcfg_name, i32 noundef 16387, i16 noundef zeroext 2, ptr noundef %pads, ptr noundef nonnull @vimc_deb_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_free_hdl

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %process_frame = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %process_frame to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vimc_deb_process_frame, ptr %process_frame, align 8
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %mean_win_size = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %mean_win_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %mean_win_size, align 8
  %sink_fmt = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %sink_fmt, ptr @sink_fmt_default, i32 48)
  %src_code = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %src_code to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4106, ptr %src_code, align 4
  %set_rgb_src = getelementptr inbounds %struct.vimc_deb_device, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %set_rgb_src to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vimc_deb_process_rgb_frame, ptr %set_rgb_src, align 8
  br label %cleanup

err_free_hdl:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %err_free_vdeb

err_free_vdeb:                                    ; preds = %err_free_hdl, %if.end.err_free_vdeb_crit_edge
  %ret.0 = phi i32 [ %call20, %err_free_hdl ], [ %3, %if.end.err_free_vdeb_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %14 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_vdeb, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %err_free_vdeb ], [ %call7.i.i, %if.end23 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_deb_release(ptr noundef %ved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.vimc_deb_device, ptr %ved, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @kfree(ptr noundef %ved) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_ent_sd_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_deb_process_frame(ptr noundef %ved, ptr nocapture noundef readonly %sink_frame) #0 align 64 {
entry:
  %rgb = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rgb) #8
  %0 = ptrtoint ptr %rgb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rgb, align 4, !annotation !62
  %1 = getelementptr inbounds [3 x i32], ptr %rgb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !62
  %3 = getelementptr inbounds [3 x i32], ptr %rgb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !62
  %src_frame = getelementptr inbounds %struct.vimc_deb_device, ptr %ved, i32 0, i32 5
  %5 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_frame, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sink_fmt = getelementptr inbounds %struct.vimc_deb_device, ptr %ved, i32 0, i32 2
  %height = getelementptr inbounds %struct.vimc_deb_device, ptr %ved, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27.not = icmp eq i32 %8, 0
  br i1 %cmp27.not, label %for.cond.preheader.for.end8_crit_edge, label %for.cond1.preheader.lr.ph

for.cond.preheader.for.end8_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %set_rgb_src = getelementptr inbounds %struct.vimc_deb_device, ptr %ved, i32 0, i32 4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.028 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %9 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sink_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp325.not = icmp eq i32 %10, 0
  br i1 %cmp325.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %j.026 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  call fastcc void @vimc_deb_calc_rgb_sink(ptr noundef %ved, ptr noundef %sink_frame, i32 noundef %i.028, i32 noundef %j.026, ptr noundef nonnull %rgb)
  %11 = ptrtoint ptr %set_rgb_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rgb_src, align 4
  call void %12(ptr noundef %ved, i32 noundef %i.028, i32 noundef %j.026, ptr noundef nonnull %rgb) #8
  %inc = add nuw i32 %j.026, 1
  %13 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sink_fmt, align 4
  %cmp3 = icmp ult i32 %inc, %14
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc6_crit_edge

for.body4.for.inc6_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.inc6:                                         ; preds = %for.body4.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %i.028, 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %cmp = icmp ult i32 %inc7, %16
  br i1 %cmp, label %for.inc6.for.cond1.preheader_crit_edge, label %for.inc6.for.end8_crit_edge

for.inc6.for.end8_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6.for.end8_crit_edge, %for.cond.preheader.for.end8_crit_edge
  %17 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_frame, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %for.end8 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rgb) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_deb_process_rgb_frame(ptr nocapture noundef readonly %vdeb, i32 noundef %lin, i32 noundef %col, ptr nocapture noundef readonly %rgb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_code = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 3
  %0 = ptrtoint ptr %src_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_code, align 4
  %call = tail call ptr @vimc_pix_map_by_code(i32 noundef %1) #8
  %sink_fmt = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 2
  %2 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sink_fmt, align 4
  %mul = mul i32 %3, %lin
  %add = add i32 %mul, %col
  %mul1 = mul i32 %add, 3
  %pixelformat = getelementptr inbounds %struct.vimc_pix_map, ptr %call, i32 0, i32 2
  %src_frame7 = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 5
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.for.inc_crit_edge [
    i32 859981650, label %entry.for.incthread-pre-split_crit_edge
    i32 861030210, label %sw.bb4
  ]

entry.for.incthread-pre-split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.incthread-pre-split

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr i32, ptr %rgb, i32 2
  br label %for.incthread-pre-split

for.incthread-pre-split:                          ; preds = %sw.bb4, %entry.for.incthread-pre-split_crit_edge
  %arrayidx5.sink = phi ptr [ %arrayidx5, %sw.bb4 ], [ %rgb, %entry.for.incthread-pre-split_crit_edge ]
  %7 = ptrtoint ptr %arrayidx5.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5.sink, align 4
  %conv6 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %src_frame7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_frame7, align 4
  %arrayidx9 = getelementptr i8, ptr %10, i32 %mul1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %arrayidx9, align 1
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %pixelformat, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %entry.for.inc_crit_edge
  %13 = phi i32 [ %.pr, %for.incthread-pre-split ], [ %5, %entry.for.inc_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %13, label %for.inc.for.inc.1_crit_edge [
    i32 859981650, label %for.inc.for.inc.1.sink.split_crit_edge
    i32 861030210, label %for.inc.for.inc.1.sink.split_crit_edge21
  ]

for.inc.for.inc.1.sink.split_crit_edge21:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.sink.split

for.inc.for.inc.1.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.sink.split

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1.sink.split:                             ; preds = %for.inc.for.inc.1.sink.split_crit_edge, %for.inc.for.inc.1.sink.split_crit_edge21
  %arrayidx.1 = getelementptr i32, ptr %rgb, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %src_frame7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_frame7, align 4
  %add2.1 = add i32 %mul1, 1
  %arrayidx3.1 = getelementptr i8, ptr %18, i32 %add2.1
  %19 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.1, ptr %arrayidx3.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %21, label %for.inc.1.for.inc.2_crit_edge [
    i32 859981650, label %sw.bb.2
    i32 861030210, label %for.inc.1.for.inc.2.sink.split_crit_edge
  ]

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.sink.split

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr i32, ptr %rgb, i32 2
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %sw.bb.2, %for.inc.1.for.inc.2.sink.split_crit_edge
  %arrayidx.2.sink = phi ptr [ %arrayidx.2, %sw.bb.2 ], [ %rgb, %for.inc.1.for.inc.2.sink.split_crit_edge ]
  %23 = ptrtoint ptr %arrayidx.2.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.2.sink, align 4
  %conv.2 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %src_frame7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src_frame7, align 4
  %add2.2 = add i32 %mul1, 2
  %arrayidx3.2 = getelementptr i8, ptr %26, i32 %add2.2
  %27 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.2, ptr %arrayidx3.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vimc_deb_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15790081, i32 %1)
  %cond = icmp eq i32 %1, 15790081
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %mean_win_size = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %mean_win_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mean_win_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_deb_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %src_frame19 = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %src_frame19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_frame19, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool20.not, label %if.end, label %if.then.cleanup26_crit_edge

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.end:                                           ; preds = %if.then
  %src_code = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %src_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_code, align 4
  %call3 = tail call ptr @vimc_pix_map_by_code(i32 noundef %5) #8
  %sink_fmt = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sink_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_fmt, align 4
  %height = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul = mul i32 %9, %7
  %bpp = getelementptr inbounds %struct.vimc_pix_map, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp, align 4
  %mul5 = mul i32 %mul, %11
  %code = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %call7 = tail call ptr @vimc_pix_map_by_code(i32 noundef %13) #8
  %bpp8 = getelementptr inbounds %struct.vimc_pix_map, ptr %call7, i32 0, i32 1
  %14 = ptrtoint ptr %bpp8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpp8, align 4
  %sink_bpp = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %sink_bpp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sink_bpp, align 4
  %17 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code, align 4
  %switch.tableidx = add i32 %18, -12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 20
  br i1 %19, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.vimc_deb_s_stream, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.end.cleanup_crit_edge ]
  %sink_pix_map = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %sink_pix_map to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i, ptr %sink_pix_map, align 4
  %call12 = tail call noalias ptr @vmalloc(i32 noundef %mul5) #12
  %22 = ptrtoint ptr %src_frame19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %src_frame19, align 4
  %tobool15.not.not = icmp eq ptr %call12, null
  br i1 %tobool15.not.not, label %cleanup.cleanup26_crit_edge, label %cleanup.if.end25_crit_edge

cleanup.if.end25_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.else:                                          ; preds = %entry
  br i1 %tobool20.not, label %if.else.cleanup26_crit_edge, label %if.end22

if.else.cleanup26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %3) #8
  %23 = ptrtoint ptr %src_frame19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %src_frame19, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %cleanup.if.end25_crit_edge
  br label %cleanup26

cleanup26:                                        ; preds = %if.end25, %if.else.cleanup26_crit_edge, %cleanup.cleanup26_crit_edge, %if.then.cleanup26_crit_edge
  %retval.1 = phi i32 [ 0, %if.end25 ], [ -12, %cleanup.cleanup26_crit_edge ], [ 0, %if.else.cleanup26_crit_edge ], [ 0, %if.then.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_deb_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !63

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  %6 = call ptr @memcpy(ptr %5, ptr @sink_fmt_default, i32 48)
  %7 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp18 = icmp ugt i16 %8, 1
  br i1 %cmp18, label %v4l2_subdev_get_try_format.exit16.lr.ph, label %v4l2_subdev_get_try_format.exit.for.end_crit_edge

v4l2_subdev_get_try_format.exit.for.end_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

v4l2_subdev_get_try_format.exit16.lr.ph:          ; preds = %v4l2_subdev_get_try_format.exit
  %src_code = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 3
  br label %v4l2_subdev_get_try_format.exit16

v4l2_subdev_get_try_format.exit16:                ; preds = %v4l2_subdev_get_try_format.exit16.v4l2_subdev_get_try_format.exit16_crit_edge, %v4l2_subdev_get_try_format.exit16.lr.ph
  %i.019 = phi i32 [ 1, %v4l2_subdev_get_try_format.exit16.lr.ph ], [ %inc, %v4l2_subdev_get_try_format.exit16.v4l2_subdev_get_try_format.exit16_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %i.019
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr @sink_fmt_default, i32 48)
  %12 = ptrtoint ptr %src_code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_code, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code, align 4
  %inc = add nuw nsw i32 %i.019, 1
  %15 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i, align 4
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %v4l2_subdev_get_try_format.exit16.v4l2_subdev_get_try_format.exit16_crit_edge, label %v4l2_subdev_get_try_format.exit16.for.end_crit_edge

v4l2_subdev_get_try_format.exit16.for.end_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

v4l2_subdev_get_try_format.exit16.v4l2_subdev_get_try_format.exit16_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit16

for.end:                                          ; preds = %v4l2_subdev_get_try_format.exit16.for.end_crit_edge, %v4l2_subdev_get_try_format.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vimc_deb_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp ugt i32 %3, 9
  br i1 %cmp, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [10 x i32], ptr @vimc_deb_src_mbus_codes, i32 0, i32 %3
  br label %return.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp5 = icmp ugt i32 %3, 11
  br i1 %cmp5, label %if.else.return_crit_edge, label %if.end7

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr [12 x %struct.vimc_deb_pix_map], ptr @vimc_deb_pix_map_list, i32 0, i32 %3
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end7, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %arrayidx9, %if.end7 ]
  %4 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.sink, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vimc_deb_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %5, label %if.then2.return_crit_edge [
    i32 12289, label %if.then2.if.end10_crit_edge
    i32 12307, label %if.then2.if.end10_crit_edge22
    i32 12290, label %if.then2.if.end10_crit_edge23
    i32 12308, label %if.then2.if.end10_crit_edge24
    i32 12295, label %if.then2.if.end10_crit_edge25
    i32 12302, label %if.then2.if.end10_crit_edge26
    i32 12298, label %if.then2.if.end10_crit_edge27
    i32 12303, label %if.then2.if.end10_crit_edge28
    i32 12296, label %if.then2.if.end10_crit_edge29
    i32 12304, label %if.then2.if.end10_crit_edge30
    i32 12305, label %if.then2.if.end10_crit_edge31
    i32 12306, label %if.then2.if.end10_crit_edge32
  ]

if.then2.if.end10_crit_edge32:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge31:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge30:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge29:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge28:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge27:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge26:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge25:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge24:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge23:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge22:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else:                                          ; preds = %if.end
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %5, label %if.else.return_crit_edge [
    i32 4116, label %if.else.if.end10_crit_edge
    i32 4115, label %if.else.if.end10_crit_edge33
    i32 4123, label %if.else.if.end10_crit_edge34
    i32 4106, label %if.else.if.end10_crit_edge35
    i32 4107, label %if.else.if.end10_crit_edge36
    i32 4108, label %if.else.if.end10_crit_edge37
    i32 4124, label %if.else.if.end10_crit_edge38
    i32 4113, label %if.else.if.end10_crit_edge39
    i32 4114, label %if.else.if.end10_crit_edge40
    i32 4111, label %if.else.if.end10_crit_edge41
  ]

if.else.if.end10_crit_edge41:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge40:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge39:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge38:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge37:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge36:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge35:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge34:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge33:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.else.if.end10_crit_edge33, %if.else.if.end10_crit_edge34, %if.else.if.end10_crit_edge35, %if.else.if.end10_crit_edge36, %if.else.if.end10_crit_edge37, %if.else.if.end10_crit_edge38, %if.else.if.end10_crit_edge39, %if.else.if.end10_crit_edge40, %if.else.if.end10_crit_edge41, %if.then2.if.end10_crit_edge, %if.then2.if.end10_crit_edge22, %if.then2.if.end10_crit_edge23, %if.then2.if.end10_crit_edge24, %if.then2.if.end10_crit_edge25, %if.then2.if.end10_crit_edge26, %if.then2.if.end10_crit_edge27, %if.then2.if.end10_crit_edge28, %if.then2.if.end10_crit_edge29, %if.then2.if.end10_crit_edge30, %if.then2.if.end10_crit_edge31, %if.then2.if.end10_crit_edge32
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %8 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2160, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end10 ], [ -22, %entry.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ -22, %if.then2.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_deb_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %cond.true.v4l2_subdev_get_try_format.exit_crit_edge, !prof !63

cond.true.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %cond.true.v4l2_subdev_get_try_format.exit_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sink_fmt = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %v4l2_subdev_get_try_format.exit
  %sink_fmt.sink = phi ptr [ %sink_fmt, %cond.false ], [ %7, %v4l2_subdev_get_try_format.exit ]
  %8 = call ptr @memcpy(ptr %format, ptr %sink_fmt.sink, i32 48)
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_code = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %src_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_deb_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %src_frame = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_frame, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sink_fmt2 = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 2
  %src_code3 = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 3
  br label %if.end6

if.else:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i.not = icmp eq i16 %7, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !63

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %.pr = load i16, ptr %num_pads.i, align 4
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %9 = phi i16 [ %7, %if.else.v4l2_subdev_get_try_format.exit_crit_edge ], [ %.pr, %do.end.i ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.not.i81 = icmp ugt i16 %9, 1
  br i1 %cmp.not.i81, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit83_crit_edge, label %do.end.i82, !prof !64

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit83_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit83

do.end.i82:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit83

v4l2_subdev_get_try_format.exit83:                ; preds = %do.end.i82, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit83_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i82 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit83_crit_edge ]
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %code = getelementptr %struct.v4l2_subdev_pad_config, ptr %13, i32 %spec.select.i, i32 0, i32 2
  br label %if.end6

if.end6:                                          ; preds = %v4l2_subdev_get_try_format.exit83, %if.end
  %sink_fmt.0 = phi ptr [ %sink_fmt2, %if.end ], [ %11, %v4l2_subdev_get_try_format.exit83 ]
  %src_code.0 = phi ptr [ %src_code3, %if.end ], [ %code, %v4l2_subdev_get_try_format.exit83 ]
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  %format18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code.i, align 4
  br i1 %tobool7.not, label %if.else17, label %if.then8

if.then8:                                         ; preds = %if.end6
  %18 = call ptr @memcpy(ptr %format18, ptr %sink_fmt.0, i32 48)
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %17, label %if.then8.if.end14_crit_edge [
    i32 4116, label %if.then8.if.then13_crit_edge
    i32 4115, label %if.then8.if.then13_crit_edge87
    i32 4123, label %if.then8.if.then13_crit_edge88
    i32 4106, label %if.then8.if.then13_crit_edge89
    i32 4107, label %if.then8.if.then13_crit_edge90
    i32 4108, label %if.then8.if.then13_crit_edge91
    i32 4124, label %if.then8.if.then13_crit_edge92
    i32 4113, label %if.then8.if.then13_crit_edge93
    i32 4114, label %if.then8.if.then13_crit_edge94
    i32 4111, label %if.then8.if.then13_crit_edge95
  ]

if.then8.if.then13_crit_edge95:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge94:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge93:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge92:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge91:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge90:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge89:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge88:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge87:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.then13_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.then8.if.then13_crit_edge, %if.then8.if.then13_crit_edge87, %if.then8.if.then13_crit_edge88, %if.then8.if.then13_crit_edge89, %if.then8.if.then13_crit_edge90, %if.then8.if.then13_crit_edge91, %if.then8.if.then13_crit_edge92, %if.then8.if.then13_crit_edge93, %if.then8.if.then13_crit_edge94, %if.then8.if.then13_crit_edge95
  %20 = ptrtoint ptr %src_code.0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %src_code.0, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then8.if.end14_crit_edge
  %21 = ptrtoint ptr %src_code.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_code.0, align 4
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code.i, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.end6
  %24 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %17, label %if.then.i [
    i32 12289, label %if.else17.if.end.i_crit_edge
    i32 12307, label %if.else17.if.end.i_crit_edge96
    i32 12290, label %if.else17.if.end.i_crit_edge97
    i32 12308, label %if.else17.if.end.i_crit_edge98
    i32 12295, label %if.else17.if.end.i_crit_edge99
    i32 12302, label %if.else17.if.end.i_crit_edge100
    i32 12298, label %if.else17.if.end.i_crit_edge101
    i32 12303, label %if.else17.if.end.i_crit_edge102
    i32 12296, label %if.else17.if.end.i_crit_edge103
    i32 12304, label %if.else17.if.end.i_crit_edge104
    i32 12305, label %if.else17.if.end.i_crit_edge105
    i32 12306, label %if.else17.if.end.i_crit_edge106
  ]

if.else17.if.end.i_crit_edge106:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge105:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge104:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge103:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge102:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge101:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge100:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge99:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge98:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge97:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge96:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else17.if.end.i_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12308, ptr %code.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else17.if.end.i_crit_edge, %if.else17.if.end.i_crit_edge96, %if.else17.if.end.i_crit_edge97, %if.else17.if.end.i_crit_edge98, %if.else17.if.end.i_crit_edge99, %if.else17.if.end.i_crit_edge100, %if.else17.if.end.i_crit_edge101, %if.else17.if.end.i_crit_edge102, %if.else17.if.end.i_crit_edge103, %if.else17.if.end.i_crit_edge104, %if.else17.if.end.i_crit_edge105, %if.else17.if.end.i_crit_edge106
  %26 = ptrtoint ptr %format18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format18, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 16) #8
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 4096) #8
  %and.i = and i32 %29, 8190
  %30 = ptrtoint ptr %format18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %format18, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 16) #8
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 2160) #8
  %and21.i = and i32 %34, 4094
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and21.i, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp23.i = icmp eq i32 %37, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then24.i, %if.end.i.do.body.i_crit_edge
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %colorspace.i, align 4
  %41 = add i32 %40, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %41)
  %42 = icmp ult i32 %41, -12
  br i1 %42, label %if.then30.i, label %do.body.i.if.end32.i_crit_edge

do.body.i.if.end32.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = call ptr @memset(ptr %colorspace.i, i32 0, i32 10)
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %do.body.i.if.end32.i_crit_edge
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %46)
  %cmp33.i = icmp ugt i16 %46, 8
  br i1 %cmp33.i, label %if.then35.i, label %if.end32.i.if.end36.i_crit_edge

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %44, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end36.i_crit_edge
  %quantization37.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %quantization37.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %quantization37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp39.i = icmp ugt i16 %49, 2
  br i1 %cmp39.i, label %if.then41.i, label %if.end36.i.if.end43.i_crit_edge

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %quantization37.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %quantization37.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end36.i.if.end43.i_crit_edge
  %xfer_func44.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %51 = ptrtoint ptr %xfer_func44.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %xfer_func44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %52)
  %cmp46.i = icmp ugt i16 %52, 7
  br i1 %cmp46.i, label %if.then48.i, label %if.end43.i.vimc_deb_adjust_sink_fmt.exit_crit_edge

if.end43.i.vimc_deb_adjust_sink_fmt.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vimc_deb_adjust_sink_fmt.exit

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %xfer_func44.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %xfer_func44.i, align 4
  br label %vimc_deb_adjust_sink_fmt.exit

vimc_deb_adjust_sink_fmt.exit:                    ; preds = %if.then48.i, %if.end43.i.vimc_deb_adjust_sink_fmt.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_set_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_set_fmt, %if.then23)) #8
          to label %do.end [label %if.then23], !srcloc !65

if.then23:                                        ; preds = %vimc_deb_adjust_sink_fmt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.vimc_deb_device, ptr %1, i32 0, i32 1, i32 9
  %56 = ptrtoint ptr %sink_fmt.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sink_fmt.0, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 1
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %code25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 2
  %60 = ptrtoint ptr %code25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %code25, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 4
  %62 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %colorspace, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 6
  %64 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %quantization, align 2
  %conv = zext i16 %65 to i32
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 7
  %66 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %xfer_func, align 4
  %conv26 = zext i16 %67 to i32
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %sink_fmt.0, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 4
  %conv27 = zext i16 %70 to i32
  %71 = ptrtoint ptr %format18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %format18, align 4
  %73 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height.i, align 4
  %75 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %code.i, align 4
  %77 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %colorspace.i, align 4
  %79 = ptrtoint ptr %quantization37.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %quantization37.i, align 2
  %conv38 = zext i16 %80 to i32
  %81 = ptrtoint ptr %xfer_func44.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %xfer_func44.i, align 4
  %conv41 = zext i16 %82 to i32
  %83 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %44, align 4
  %conv43 = zext i16 %84 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_set_fmt.__UNIQUE_ID_ddebug300, ptr noundef %55, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %conv, i32 noundef %conv26, i32 noundef %conv27, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv43) #8
  br label %do.end

do.end:                                           ; preds = %if.then23, %vimc_deb_adjust_sink_fmt.exit
  %85 = call ptr @memcpy(ptr %sink_fmt.0, ptr %format18, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end14, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vimc_deb_calc_rgb_sink(ptr noundef %vdeb, ptr nocapture noundef readonly %frame, i32 noundef %lin, i32 noundef %col, ptr nocapture noundef %rgb) unnamed_addr #0 align 64 {
entry:
  %n_rgb = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %n_rgb) #8
  %0 = call ptr @memset(ptr %n_rgb, i32 0, i32 12)
  %1 = call ptr @memset(ptr %rgb, i32 0, i32 12)
  %mean_win_size = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 8
  %2 = ptrtoint ptr %mean_win_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mean_win_size, align 4
  %div220 = lshr i32 %3, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_calc_rgb_sink, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %vdeb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdeb, align 4
  %name = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 1, i32 9
  %height = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %lin, i32 noundef %col, i32 noundef %7, i32 noundef %div220) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %lin, i32 %div220)
  %sink_fmt7 = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 2
  %height8 = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 2, i32 1
  %add = add nuw i32 %div220, 1
  %add5 = add i32 %add, %lin
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add5)
  %cmp6243 = icmp ult i32 %8, %add5
  br i1 %cmp6243, label %land.rhs.lr.ph, label %do.end.for.end90_crit_edge

do.end.for.end90_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

land.rhs.lr.ph:                                   ; preds = %do.end
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %col, i32 %div220)
  %add19 = add i32 %add, %col
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add19)
  %cmp20240 = icmp ult i32 %9, %add19
  %sink_pix_map = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 6
  %sink_bpp = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 7
  %name49 = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 1, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc88.land.rhs_crit_edge, %land.rhs.lr.ph
  %wlin.0244 = phi i32 [ %8, %land.rhs.lr.ph ], [ %inc89, %for.inc88.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wlin.0244, i32 %11)
  %cmp9 = icmp ult i32 %wlin.0244, %11
  br i1 %cmp9, label %for.body10, label %land.rhs.for.end90_crit_edge

land.rhs.for.end90_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.body10:                                       ; preds = %land.rhs
  br i1 %cmp20240, label %land.rhs21.lr.ph, label %for.body10.for.inc88_crit_edge

for.body10.for.inc88_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

land.rhs21.lr.ph:                                 ; preds = %for.body10
  %rem = and i32 %wlin.0244, 1
  br label %land.rhs21

land.rhs21:                                       ; preds = %do.end84.land.rhs21_crit_edge, %land.rhs21.lr.ph
  %wcol.0241 = phi i32 [ %9, %land.rhs21.lr.ph ], [ %inc86, %do.end84.land.rhs21_crit_edge ]
  %12 = ptrtoint ptr %sink_fmt7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sink_fmt7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wcol.0241, i32 %13)
  %cmp23 = icmp ult i32 %wcol.0241, %13
  br i1 %cmp23, label %for.body25, label %land.rhs21.for.inc88_crit_edge

land.rhs21.for.inc88_crit_edge:                   ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

for.body25:                                       ; preds = %land.rhs21
  %14 = ptrtoint ptr %sink_pix_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sink_pix_map, align 4
  %rem27 = and i32 %wcol.0241, 1
  %arrayidx28 = getelementptr %struct.vimc_deb_pix_map, ptr %15, i32 0, i32 1, i32 %rem, i32 %rem27
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx28, align 4
  %mul = mul i32 %13, %wlin.0244
  %add31 = add i32 %mul, %wcol.0241
  %18 = ptrtoint ptr %sink_bpp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sink_bpp, align 4
  %mul32 = mul i32 %19, %add31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_calc_rgb_sink, %if.then45)) #8
          to label %do.end53 [label %if.then45], !srcloc !65

if.then45:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %vdeb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdeb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef %name49, i32 noundef %mul32, i32 noundef %wlin.0244, i32 noundef %wcol.0241, i32 noundef %17) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then45, %for.body25
  %arrayidx54 = getelementptr i32, ptr %rgb, i32 %17
  %22 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr i8, ptr %frame, i32 %mul32
  %24 = ptrtoint ptr %sink_bpp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sink_bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.not.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i, label %do.end53.vimc_deb_get_val.exit_crit_edge, label %do.end53.for.body.i_crit_edge

do.end53.for.body.i_crit_edge:                    ; preds = %do.end53
  br label %for.body.i

do.end53.vimc_deb_get_val.exit_crit_edge:         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %vimc_deb_get_val.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end53.for.body.i_crit_edge
  %acc.07.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end53.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end53.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %arrayidx55, i32 %i.06.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %mul.i = shl i32 %i.06.i, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %add.i = add i32 %shl.i, %acc.07.i
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.body.i.vimc_deb_get_val.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vimc_deb_get_val.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vimc_deb_get_val.exit

vimc_deb_get_val.exit:                            ; preds = %for.body.i.vimc_deb_get_val.exit_crit_edge, %do.end53.vimc_deb_get_val.exit_crit_edge
  %acc.0.lcssa.i = phi i32 [ 0, %do.end53.vimc_deb_get_val.exit_crit_edge ], [ %add.i, %for.body.i.vimc_deb_get_val.exit_crit_edge ]
  %add58 = add i32 %acc.0.lcssa.i, %23
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add58, ptr %arrayidx54, align 4
  %arrayidx60 = getelementptr [3 x i32], ptr %n_rgb, i32 0, i32 %17
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx60, align 4
  %inc61 = add i32 %30, 1
  store i32 %inc61, ptr %arrayidx60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_calc_rgb_sink, %if.then74)) #8
          to label %do.end84 [label %if.then74], !srcloc !65

if.then74:                                        ; preds = %vimc_deb_get_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %vdeb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdeb, align 4
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug303, ptr noundef %32, ptr noundef nonnull @.str.11, ptr noundef %name49, i32 noundef %34, i32 noundef %inc61) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then74, %vimc_deb_get_val.exit
  %inc86 = add nuw i32 %wcol.0241, 1
  %exitcond.not = icmp eq i32 %inc86, %add19
  br i1 %exitcond.not, label %do.end84.for.inc88_crit_edge, label %do.end84.land.rhs21_crit_edge

do.end84.land.rhs21_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs21

do.end84.for.inc88_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

for.inc88:                                        ; preds = %do.end84.for.inc88_crit_edge, %land.rhs21.for.inc88_crit_edge, %for.body10.for.inc88_crit_edge
  %inc89 = add nuw i32 %wlin.0244, 1
  %exitcond250.not = icmp eq i32 %inc89, %add5
  br i1 %exitcond250.not, label %for.inc88.for.end90_crit_edge, label %for.inc88.land.rhs_crit_edge

for.inc88.land.rhs_crit_edge:                     ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %land.rhs.for.end90_crit_edge, %do.end.for.end90_crit_edge
  %name110 = getelementptr inbounds %struct.vimc_deb_device, ptr %vdeb, i32 0, i32 1, i32 9
  br label %do.body94

do.body94:                                        ; preds = %for.inc147.do.body94_crit_edge, %for.end90
  %i.1246 = phi i32 [ 0, %for.end90 ], [ %inc148, %for.inc147.do.body94_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_calc_rgb_sink, %if.then106)) #8
          to label %do.end116 [label %if.then106], !srcloc !65

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %vdeb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vdeb, align 4
  %arrayidx112 = getelementptr i32, ptr %rgb, i32 %i.1246
  %37 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx112, align 4
  %arrayidx113 = getelementptr [3 x i32], ptr %n_rgb, i32 0, i32 %i.1246
  %39 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx113, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug304, ptr noundef %36, ptr noundef nonnull @.str.12, ptr noundef %name110, i32 noundef %lin, i32 noundef %col, i32 noundef %i.1246, i32 noundef %38, i32 noundef %40) #8
  br label %do.end116

do.end116:                                        ; preds = %if.then106, %do.body94
  %arrayidx117 = getelementptr [3 x i32], ptr %n_rgb, i32 0, i32 %i.1246
  %41 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool118.not = icmp eq i32 %42, 0
  br i1 %tobool118.not, label %do.end116.do.body125_crit_edge, label %if.then119

do.end116.do.body125_crit_edge:                   ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

if.then119:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx120 = getelementptr i32, ptr %rgb, i32 %i.1246
  %43 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx120, align 4
  %div122 = udiv i32 %44, %42
  store i32 %div122, ptr %arrayidx120, align 4
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.end116.do.body125_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_deb_calc_rgb_sink, %if.then137)) #8
          to label %for.inc147 [label %if.then137], !srcloc !65

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %vdeb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vdeb, align 4
  %arrayidx143 = getelementptr i32, ptr %rgb, i32 %i.1246
  %47 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug305, ptr noundef %46, ptr noundef nonnull @.str.13, ptr noundef %name110, i32 noundef %lin, i32 noundef %col, i32 noundef %i.1246, i32 noundef %48) #8
  br label %for.inc147

for.inc147:                                       ; preds = %if.then137, %do.body125
  %inc148 = add nuw nsw i32 %i.1246, 1
  %exitcond251.not = icmp eq i32 %inc148, 3
  br i1 %exitcond251.not, label %for.end149, label %for.inc147.do.body94_crit_edge

for.inc147.do.body94_crit_edge:                   ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

for.end149:                                       ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %n_rgb) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @vimc_deb_type, !1, !"vimc_deb_type", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 620, i32 22}
!2 = !{ptr @vimc_deb_add._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 575, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 547, i32 10}
!7 = !{ptr @vimc_deb_ctrl_class, !8, !"vimc_deb_ctrl_class", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 544, i32 38}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 554, i32 10}
!11 = !{ptr @vimc_deb_ctrl_mean_win_size, !12, !"vimc_deb_ctrl_mean_win_size", i1 false, i1 false}
!12 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 551, i32 38}
!13 = !{ptr @vimc_deb_ctrl_ops, !14, !"vimc_deb_ctrl_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 530, i32 35}
!15 = !{ptr @vimc_deb_ops, !16, !"vimc_deb_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 391, i32 37}
!17 = !{ptr @vimc_deb_core_ops, !18, !"vimc_deb_core_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 381, i32 42}
!19 = !{ptr @vimc_deb_video_ops, !20, !"vimc_deb_video_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 387, i32 43}
!21 = !{ptr @vimc_deb_pix_map_list, !22, !"vimc_deb_pix_map_list", i1 false, i1 false}
!22 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 67, i32 38}
!23 = !{ptr @vimc_deb_pad_ops, !24, !"vimc_deb_pad_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 308, i32 41}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!27 = !{ptr @vimc_deb_src_mbus_codes, !28, !"vimc_deb_src_mbus_codes", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 54, i32 18}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 290, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vimc_deb_set_fmt.__UNIQUE_ID_ddebug300, !30, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 430, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug301, !36, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 463, i32 4}
!41 = !{ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug302, !40, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 474, i32 4}
!44 = !{ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 481, i32 3}
!47 = !{ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug304, !46, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 488, i32 3}
!50 = !{ptr @vimc_deb_calc_rgb_sink.__UNIQUE_ID_ddebug305, !49, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!51 = !{ptr @sink_fmt_default, !52, !"sink_fmt_default", i1 false, i1 false}
!52 = !{!"../drivers/media/test-drivers/vimc/vimc-debayer.c", i32 46, i32 40}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2148728437, i64 2148728442, i64 2148728455, i64 2148728499, i64 2148728533, i64 2148728554}
