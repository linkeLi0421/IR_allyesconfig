; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-sensor.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-sensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vimc_ent_type = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.89, i16, i16, i16, [10 x i16] }
%union.anon.89 = type { i16 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vimc_sen_device = type { %struct.vimc_ent_device, %struct.v4l2_subdev, %struct.tpg_data, ptr, i32, i64, %struct.v4l2_mbus_framefmt, %struct.v4l2_ctrl_handler, %struct.media_pad }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.85, %union.anon.86, i32, ptr, i32, %struct.anon.87, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i32 }
%struct.vimc_pix_map = type { [8 x i32], i32, i32, i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@vimc_sen_type = dso_local global { %struct.vimc_ent_type, [20 x i8] } { %struct.vimc_ent_type { ptr @vimc_sen_add, ptr null, ptr @vimc_sen_release }, [20 x i8] zeroinitializer }, align 32
@vimc_sen_add._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vimc_sensor:392:(&vsen->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@vimc_sen_ctrl_class = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 15728641, ptr @.str.1, i32 6, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 68, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_sen_ctrl_test_pattern = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vimc_sen_ctrl_ops, ptr null, i32 15790080, ptr @.str.2, i32 3, i64 0, i64 21, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @tpg_pattern_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_sen_ctrl_osd_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vimc_sen_ctrl_ops, ptr null, i32 15790082, ptr @.str.3, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vimc_ctrl_osd_mode_strings, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_sen_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vimc_sen_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vimc_sen_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @vimc_sen_core_ops, ptr null, ptr null, ptr @vimc_sen_video_ops, ptr null, ptr null, ptr null, ptr @vimc_sen_pad_ops }, [32 x i8] zeroinitializer }, align 32
@fmt_default = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 4106, i32 1, i32 8, %union.anon.89 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIMC Controls\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Test Pattern\00", [19 x i8] zeroinitializer }, align 32
@tpg_pattern_strings = external dso_local constant [0 x ptr], align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Show Information\00", [47 x i8] zeroinitializer }, align 32
@vimc_ctrl_osd_mode_strings = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"All\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Counters Only\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@vimc_sen_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@vimc_sen_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_sen_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vimc_sen_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vimc_sen_init_cfg, ptr @vimc_sen_enum_mbus_code, ptr @vimc_sen_enum_frame_size, ptr null, ptr @vimc_sen_get_fmt, ptr @vimc_sen_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@vimc_sen_set_fmt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vimc\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vimc_sen_set_fmt\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/test-drivers/vimc/vimc-sensor.c\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"brightness %3d, contrast %3d, saturation %3d, hue %d \00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sensor size: %dx%d\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%02d:%02d:%02d:%03d\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963796, i64 9963797, i64 15790080, i64 15790082]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"vimc_sen_type\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 449, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 392, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"vimc_sen_ctrl_class\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 348, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"vimc_sen_ctrl_test_pattern\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 355, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"vimc_sen_ctrl_osd_mode\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 371, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"vimc_sen_ctrl_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 332, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"vimc_sen_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 290, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"fmt_default\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 36, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 351, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 358, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 374, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"vimc_ctrl_osd_mode_strings\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 364, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 365, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 366, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 367, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"vimc_sen_core_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 280, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"vimc_sen_video_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 286, i32 43 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"vimc_sen_pad_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 185, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 998, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 168, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 212, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 218, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [49 x i8] c"../drivers/media/test-drivers/vimc/vimc-sensor.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 228, i32 30 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @vimc_sen_type, ptr @vimc_sen_add._key, ptr @.str, ptr @vimc_sen_ctrl_class, ptr @vimc_sen_ctrl_test_pattern, ptr @vimc_sen_ctrl_osd_mode, ptr @vimc_sen_ctrl_ops, ptr @vimc_sen_ops, ptr @fmt_default, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vimc_ctrl_osd_mode_strings, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vimc_sen_core_ops, ptr @vimc_sen_video_ops, ptr @vimc_sen_pad_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_add._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_ctrl_class to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_ctrl_test_pattern to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_ctrl_osd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_ctrl_osd_mode_strings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sen_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_sen_add(ptr noundef %vimc, ptr noundef %vcfg_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1880) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdl = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 7
  %call3 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @vimc_sen_add._key, ptr noundef nonnull @.str) #7
  %call5 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_class, ptr noundef null) #7
  %call7 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_test_pattern, ptr noundef null) #7
  %call9 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_osd_mode, ptr noundef null) #7
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #7
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @vimc_sen_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %sd = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 1
  %ctrl_handler = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not = icmp eq i32 %3, 0
  br i1 %tobool24.not, label %if.end28, label %if.end.err_free_vsen_crit_edge

if.end.err_free_vsen_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_vsen

if.end28:                                         ; preds = %if.end
  %tpg = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 2
  %mbus_format = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %mbus_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbus_format, align 8
  %height = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  tail call void @tpg_init(ptr noundef %tpg, i32 noundef %5, i32 noundef %7) #7
  %call31 = tail call i32 @tpg_alloc(ptr noundef %tpg, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.err_free_hdl_crit_edge

if.end28.err_free_hdl_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_hdl

if.end34:                                         ; preds = %if.end28
  %pad = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 8
  %flags = getelementptr inbounds %struct.vimc_sen_device, ptr %call7.i.i, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags, align 4
  %call37 = tail call i32 @vimc_ent_sd_register(ptr noundef nonnull %call7.i.i, ptr noundef %sd, ptr noundef %v4l2_dev1, ptr noundef %vcfg_name, i32 noundef 131073, i16 noundef zeroext 1, ptr noundef %pad, ptr noundef nonnull @vimc_sen_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %err_free_tpg

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %process_frame = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %process_frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vimc_sen_process_frame, ptr %process_frame, align 8
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %13 = call ptr @memcpy(ptr %mbus_format, ptr @fmt_default, i32 48)
  br label %cleanup

err_free_tpg:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tpg_free(ptr noundef %tpg) #7
  br label %err_free_hdl

err_free_hdl:                                     ; preds = %err_free_tpg, %if.end28.err_free_hdl_crit_edge
  %ret.0 = phi i32 [ %call31, %if.end28.err_free_hdl_crit_edge ], [ %call37, %err_free_tpg ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  br label %err_free_vsen

err_free_vsen:                                    ; preds = %err_free_hdl, %if.end.err_free_vsen_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_hdl ], [ %3, %if.end.err_free_vsen_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %14 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_vsen, %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %err_free_vsen ], [ %call7.i.i, %if.end40 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_sen_release(ptr noundef %ved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  %tpg = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2
  tail call void @tpg_free(ptr noundef %tpg) #7
  tail call void @kfree(ptr noundef %ved) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpg_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_ent_sd_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_sen_process_frame(ptr noundef %ved, ptr nocapture noundef readnone %sink_frame) #0 align 64 {
entry:
  %basep = alloca [3 x [2 x ptr]], align 4
  %str = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %basep) #7
  %0 = call ptr @memset(ptr %basep, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #7
  %1 = call ptr @memset(ptr %str, i32 255, i32 100)
  %tpg = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2
  %frame = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 3
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame, align 8
  tail call void @tpg_fill_plane_buffer(ptr noundef %tpg, i64 noundef 0, i32 noundef 0, ptr noundef %3) #7
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame, align 8
  call void @tpg_calc_text_basep(ptr noundef %tpg, ptr noundef nonnull %basep, i32 noundef 0, ptr noundef %5) #7
  %osd_value = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 4
  %6 = ptrtoint ptr %osd_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osd_value, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb28_crit_edge
  ]

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call ptr @tpg_g_color_order(ptr noundef %tpg) #7
  call void @tpg_gen_text(ptr noundef %tpg, ptr noundef nonnull %basep, i32 noundef 16, i32 noundef 16, ptr noundef %call) #7
  %brightness = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2, i32 14
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %brightness, align 2
  %conv = zext i8 %10 to i32
  %contrast = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2, i32 15
  %11 = ptrtoint ptr %contrast to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %contrast, align 1
  %conv9 = zext i8 %12 to i32
  %saturation = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2, i32 16
  %13 = ptrtoint ptr %saturation to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %saturation, align 4
  %conv11 = zext i8 %14 to i32
  %hue = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 2, i32 17
  %15 = ptrtoint ptr %hue to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hue, align 2
  %conv13 = sext i16 %16 to i32
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 100, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13)
  call void @tpg_gen_text(ptr noundef %tpg, ptr noundef nonnull %basep, i32 noundef 32, i32 noundef 16, ptr noundef nonnull %str) #7
  %mbus_format = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 6
  %17 = ptrtoint ptr %mbus_format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbus_format, align 8
  %height = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 100, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %20)
  call void @tpg_gen_text(ptr noundef %tpg, ptr noundef nonnull %basep, i32 noundef 48, i32 noundef 16, ptr noundef nonnull %str) #7
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb, %entry.sw.bb28_crit_edge
  %line.0 = phi i32 [ 16, %entry.sw.bb28_crit_edge ], [ 64, %sw.bb ]
  %call.i = call i64 @ktime_get() #7
  %start_stream_ts = getelementptr inbounds %struct.vimc_sen_device, ptr %ved, i32 0, i32 5
  %21 = ptrtoint ptr %start_stream_ts to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start_stream_ts, align 8
  %sub = sub i64 %call.i, %22
  %23 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub) #11, !srcloc !60
  %24 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub, i64 %23, i32 0) #11, !srcloc !61
  %asmresult10.i.i.i = extractvalue { i64, i32 } %24, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv31 = trunc i64 %div1581.i.i to i32
  %div = udiv i32 %conv31, 3600000
  %rem.lhs.trunc = trunc i32 %div to i16
  %rem69 = urem i16 %rem.lhs.trunc, 24
  %rem.zext = zext i16 %rem69 to i32
  %div33 = udiv i32 %conv31, 60000
  %rem34 = urem i32 %div33, 60
  %conv31.frozen = freeze i32 %conv31
  %div35 = udiv i32 %conv31.frozen, 1000
  %rem36 = urem i32 %div35, 60
  %25 = mul i32 %div35, 1000
  %rem37.decomposed = sub i32 %conv31.frozen, %25
  %call38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 100, ptr noundef nonnull @.str.14, i32 noundef %rem.zext, i32 noundef %rem34, i32 noundef %rem36, i32 noundef %rem37.decomposed)
  call void @tpg_gen_text(ptr noundef %tpg, ptr noundef nonnull %basep, i32 noundef %line.0, i32 noundef 16, ptr noundef nonnull %str) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %entry.sw.epilog_crit_edge
  %26 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %frame, align 8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %basep) #7
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 15790080, label %sw.bb
    i32 9963796, label %sw.bb1
    i32 9963797, label %sw.bb4
    i32 9963776, label %sw.bb8
    i32 9963777, label %sw.bb11
    i32 9963779, label %sw.bb15
    i32 9963778, label %sw.bb19
    i32 15790082, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %pattern1.i = getelementptr i8, ptr %1, i32 -344
  %7 = ptrtoint ptr %pattern1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pattern1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i = icmp eq i32 %8, %6
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pattern1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %pattern1.i, align 4
  %recalc_colors.i = getelementptr i8, ptr %1, i32 -300
  %10 = ptrtoint ptr %recalc_colors.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %recalc_colors.i, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool = icmp ne i32 %12, 0
  %hflip1.i = getelementptr i8, ptr %1, i32 -340
  %13 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hflip1.i, align 4, !range !62
  %15 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp.i41 = icmp eq i8 %14, %15
  br i1 %cmp.i41, label %sw.bb1.cleanup_crit_edge, label %if.end.i42

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i42:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %tpg2 = getelementptr i8, ptr %1, i32 -1452
  %16 = ptrtoint ptr %hflip1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %hflip1.i, align 4
  tail call void @tpg_update_mv_step(ptr noundef %tpg2) #7
  %recalc_lines.i = getelementptr i8, ptr %1, i32 -299
  %17 = ptrtoint ptr %recalc_lines.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %recalc_lines.i, align 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %18 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7 = icmp ne i32 %19, 0
  %frombool.i = zext i1 %tobool7 to i8
  %vflip1.i = getelementptr i8, ptr %1, i32 -339
  %20 = ptrtoint ptr %vflip1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %vflip1.i, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val10, align 4
  %conv = trunc i32 %22 to i8
  %brightness1.i = getelementptr i8, ptr %1, i32 -1354
  %23 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %brightness1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %conv)
  %cmp.i43 = icmp eq i8 %24, %conv
  br i1 %cmp.i43, label %sw.bb8.cleanup_crit_edge, label %if.end.i45

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i45:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %brightness1.i, align 2
  %recalc_colors.i44 = getelementptr i8, ptr %1, i32 -300
  %26 = ptrtoint ptr %recalc_colors.i44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %recalc_colors.i44, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val13, align 4
  %conv14 = trunc i32 %28 to i8
  %contrast1.i = getelementptr i8, ptr %1, i32 -1353
  %29 = ptrtoint ptr %contrast1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %contrast1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %conv14)
  %cmp.i46 = icmp eq i8 %30, %conv14
  br i1 %cmp.i46, label %sw.bb11.cleanup_crit_edge, label %if.end.i48

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i48:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %contrast1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv14, ptr %contrast1.i, align 1
  %recalc_colors.i47 = getelementptr i8, ptr %1, i32 -300
  %32 = ptrtoint ptr %recalc_colors.i47 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %recalc_colors.i47, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %34 to i16
  %35 = tail call i16 @llvm.smax.i16(i16 %conv18, i16 -128) #7
  %36 = tail call i16 @llvm.smin.i16(i16 %35, i16 128) #7
  %hue18.i = getelementptr i8, ptr %1, i32 -1350
  %37 = ptrtoint ptr %hue18.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hue18.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp21.i = icmp eq i16 %36, %38
  br i1 %cmp21.i, label %sw.bb15.cleanup_crit_edge, label %if.end.i50

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i50:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %hue18.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %36, ptr %hue18.i, align 2
  %recalc_colors.i49 = getelementptr i8, ptr %1, i32 -300
  %40 = ptrtoint ptr %recalc_colors.i49 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %recalc_colors.i49, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %42 to i8
  %saturation1.i = getelementptr i8, ptr %1, i32 -1352
  %43 = ptrtoint ptr %saturation1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %saturation1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %conv22)
  %cmp.i51 = icmp eq i8 %44, %conv22
  br i1 %cmp.i51, label %sw.bb19.cleanup_crit_edge, label %if.end.i53

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i53:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %saturation1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv22, ptr %saturation1.i, align 4
  %recalc_colors.i52 = getelementptr i8, ptr %1, i32 -300
  %46 = ptrtoint ptr %recalc_colors.i52 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %recalc_colors.i52, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val24, align 4
  %osd_value = getelementptr i8, ptr %1, i32 -60
  %49 = ptrtoint ptr %osd_value to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %osd_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %if.end.i53, %sw.bb19.cleanup_crit_edge, %if.end.i50, %sw.bb15.cleanup_crit_edge, %if.end.i48, %sw.bb11.cleanup_crit_edge, %if.end.i45, %sw.bb8.cleanup_crit_edge, %sw.bb4, %if.end.i42, %sw.bb1.cleanup_crit_edge, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb23 ], [ 0, %sw.bb4 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end.i42 ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %if.end.i45 ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %if.end.i48 ], [ 0, %sw.bb15.cleanup_crit_edge ], [ 0, %if.end.i50 ], [ 0, %sw.bb19.cleanup_crit_edge ], [ 0, %if.end.i53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_update_mv_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @ktime_get() #7
  %start_stream_ts = getelementptr i8, ptr %sd, i32 1592
  %0 = ptrtoint ptr %start_stream_ts to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %start_stream_ts, align 8
  %mbus_format = getelementptr i8, ptr %sd, i32 1600
  %code = getelementptr i8, ptr %sd, i32 1608
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %code, align 8
  %call1 = tail call ptr @vimc_pix_map_by_code(i32 noundef %2) #7
  %3 = ptrtoint ptr %mbus_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbus_format, align 8
  %bpp = getelementptr inbounds %struct.vimc_pix_map, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bpp, align 4
  %mul = mul i32 %6, %4
  %height = getelementptr i8, ptr %sd, i32 1604
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %mul4 = mul i32 %mul, %8
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %mul4) #12
  %frame = getelementptr i8, ptr %sd, i32 1584
  %9 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %frame, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then.cleanup13_crit_edge, label %if.end

if.then.cleanup13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 8
  %call.i22 = tail call ptr @vimc_pix_map_by_code(i32 noundef %11) #7
  %tpg.i = getelementptr i8, ptr %sd, i32 196
  %12 = ptrtoint ptr %mbus_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbus_format, align 8
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %field.i = getelementptr i8, ptr %sd, i32 1612
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field.i, align 4
  tail call void @tpg_reset_source(ptr noundef %tpg.i, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  %18 = ptrtoint ptr %mbus_format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbus_format, align 8
  %bpp.i = getelementptr inbounds %struct.vimc_pix_map, ptr %call.i22, i32 0, i32 1
  %20 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp.i, align 4
  %mul.i = mul i32 %21, %19
  %buffers.i.i = getelementptr i8, ptr %sd, i32 360
  %22 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.i = icmp ugt i32 %23, 1
  br i1 %cmp.i.i, label %if.end.tpg_s_bytesperline.exit.i.sink.split_crit_edge, label %for.cond.preheader.i.i

if.end.tpg_s_bytesperline.exit.i.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpg_s_bytesperline.exit.i.sink.split

for.cond.preheader.i.i:                           ; preds = %if.end
  %interleaved.i.i.i = getelementptr i8, ptr %sd, i32 368
  %planes.i.i.i = getelementptr i8, ptr %sd, i32 364
  %twopixelsize.i.i = getelementptr i8, ptr %sd, i32 1280
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %for.cond.preheader.i.i
  %p.0.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %for.cond.preheader.i.i ]
  %24 = ptrtoint ptr %interleaved.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %interleaved.i.i.i, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i.i, label %tpg_g_planes.exit.thread.i.i, label %tpg_g_planes.exit.i.i

tpg_g_planes.exit.i.i:                            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.0.i.i)
  %cmp1.i.i = icmp eq i32 %p.0.i.i, 0
  br i1 %cmp1.i.i, label %tpg_g_planes.exit.i.i.for.body.i.i_crit_edge, label %if.then10.i.i

tpg_g_planes.exit.i.i.for.body.i.i_crit_edge:     ; preds = %tpg_g_planes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

tpg_g_planes.exit.thread.i.i:                     ; preds = %for.cond.i.i
  %26 = ptrtoint ptr %planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %planes.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i.i, i32 %27)
  %cmp13.i.i = icmp ult i32 %p.0.i.i, %27
  br i1 %cmp13.i.i, label %tpg_g_planes.exit.thread.i.i.for.body.i.i_crit_edge, label %tpg_g_planes.exit.thread.i.i.tpg_s_bytesperline.exit.i_crit_edge

tpg_g_planes.exit.thread.i.i.tpg_s_bytesperline.exit.i_crit_edge: ; preds = %tpg_g_planes.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpg_s_bytesperline.exit.i

tpg_g_planes.exit.thread.i.i.for.body.i.i_crit_edge: ; preds = %tpg_g_planes.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %tpg_g_planes.exit.thread.i.i.for.body.i.i_crit_edge, %tpg_g_planes.exit.i.i.for.body.i.i_crit_edge
  %arrayidx2.i.i = getelementptr %struct.vimc_sen_device, ptr %add.ptr, i32 0, i32 2, i32 42, i32 %p.0.i.i
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i.i, align 4
  %mul.i.i = mul i32 %29, %mul.i
  %30 = ptrtoint ptr %twopixelsize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %twopixelsize.i.i, align 4
  %div.i.i = udiv i32 %mul.i.i, %31
  %arrayidx5.i.i = getelementptr %struct.vimc_sen_device, ptr %add.ptr, i32 0, i32 2, i32 37, i32 %p.0.i.i
  %32 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.i.i, align 1
  %conv.i.i = zext i8 %33 to i32
  %div6.i.i = udiv i32 %div.i.i, %conv.i.i
  %arrayidx8.i.i = getelementptr %struct.vimc_sen_device, ptr %add.ptr, i32 0, i32 2, i32 43, i32 %p.0.i.i
  %34 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div6.i.i, ptr %arrayidx8.i.i, align 4
  %inc.i.i = add nuw i32 %p.0.i.i, 1
  br label %for.cond.i.i

if.then10.i.i:                                    ; preds = %tpg_g_planes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bytesperline11.i.i = getelementptr i8, ptr %sd, i32 1292
  %35 = ptrtoint ptr %bytesperline11.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytesperline11.i.i, align 4
  br label %tpg_s_bytesperline.exit.i.sink.split

tpg_s_bytesperline.exit.i.sink.split:             ; preds = %if.then10.i.i, %if.end.tpg_s_bytesperline.exit.i.sink.split_crit_edge
  %.sink23 = phi i32 [ 1296, %if.then10.i.i ], [ 1292, %if.end.tpg_s_bytesperline.exit.i.sink.split_crit_edge ]
  %.sink = phi i32 [ %36, %if.then10.i.i ], [ %mul.i, %if.end.tpg_s_bytesperline.exit.i.sink.split_crit_edge ]
  %arrayidx14.i.i = getelementptr i8, ptr %sd, i32 %.sink23
  %37 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %arrayidx14.i.i, align 4
  br label %tpg_s_bytesperline.exit.i

tpg_s_bytesperline.exit.i:                        ; preds = %tpg_s_bytesperline.exit.i.sink.split, %tpg_g_planes.exit.thread.i.i.tpg_s_bytesperline.exit.i_crit_edge
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %buf_height.i.i = getelementptr i8, ptr %sd, i32 204
  %40 = ptrtoint ptr %buf_height.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %buf_height.i.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.vimc_pix_map, ptr %call.i22, i32 0, i32 2
  %41 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixelformat.i, align 4
  %call11.i = tail call zeroext i1 @tpg_s_fourcc(ptr noundef %tpg.i, i32 noundef %42) #7
  %43 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %field.i, align 4
  %field1.i.i = getelementptr i8, ptr %sd, i32 212
  %45 = ptrtoint ptr %field1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %field1.i.i, align 4
  %field_alternate.i.i = getelementptr i8, ptr %sd, i32 216
  %46 = ptrtoint ptr %field_alternate.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %field_alternate.i.i, align 4
  %colorspace.i = getelementptr i8, ptr %sd, i32 1616
  %47 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %colorspace.i, align 8
  %colorspace1.i.i = getelementptr i8, ptr %sd, i32 308
  %49 = ptrtoint ptr %colorspace1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %colorspace1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.i45.i = icmp eq i32 %50, %48
  br i1 %cmp.i45.i, label %tpg_s_bytesperline.exit.i.tpg_s_colorspace.exit.i_crit_edge, label %if.end.i.i

tpg_s_bytesperline.exit.i.tpg_s_colorspace.exit.i_crit_edge: ; preds = %tpg_s_bytesperline.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpg_s_colorspace.exit.i

if.end.i.i:                                       ; preds = %tpg_s_bytesperline.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %colorspace1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %colorspace1.i.i, align 4
  %recalc_colors.i.i = getelementptr i8, ptr %sd, i32 1348
  %52 = ptrtoint ptr %recalc_colors.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %recalc_colors.i.i, align 4
  br label %tpg_s_colorspace.exit.i

tpg_s_colorspace.exit.i:                          ; preds = %if.end.i.i, %tpg_s_bytesperline.exit.i.tpg_s_colorspace.exit.i_crit_edge
  %53 = getelementptr i8, ptr %sd, i32 1620
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 4
  %conv.i = zext i16 %55 to i32
  %ycbcr_enc1.i.i = getelementptr i8, ptr %sd, i32 316
  %56 = ptrtoint ptr %ycbcr_enc1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ycbcr_enc1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i)
  %cmp.i46.i = icmp eq i32 %57, %conv.i
  br i1 %cmp.i46.i, label %tpg_s_colorspace.exit.i.tpg_s_ycbcr_enc.exit.i_crit_edge, label %if.end.i48.i

tpg_s_colorspace.exit.i.tpg_s_ycbcr_enc.exit.i_crit_edge: ; preds = %tpg_s_colorspace.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpg_s_ycbcr_enc.exit.i

if.end.i48.i:                                     ; preds = %tpg_s_colorspace.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %ycbcr_enc1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i, ptr %ycbcr_enc1.i.i, align 4
  %recalc_colors.i47.i = getelementptr i8, ptr %sd, i32 1348
  %59 = ptrtoint ptr %recalc_colors.i47.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %recalc_colors.i47.i, align 4
  br label %tpg_s_ycbcr_enc.exit.i

tpg_s_ycbcr_enc.exit.i:                           ; preds = %if.end.i48.i, %tpg_s_colorspace.exit.i.tpg_s_ycbcr_enc.exit.i_crit_edge
  %quantization.i = getelementptr i8, ptr %sd, i32 1622
  %60 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %quantization.i, align 2
  %conv21.i = zext i16 %61 to i32
  %quantization1.i.i = getelementptr i8, ptr %sd, i32 336
  %62 = ptrtoint ptr %quantization1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %quantization1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv21.i)
  %cmp.i49.i = icmp eq i32 %63, %conv21.i
  br i1 %cmp.i49.i, label %tpg_s_ycbcr_enc.exit.i.tpg_s_quantization.exit.i_crit_edge, label %if.end.i51.i

tpg_s_ycbcr_enc.exit.i.tpg_s_quantization.exit.i_crit_edge: ; preds = %tpg_s_ycbcr_enc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpg_s_quantization.exit.i

if.end.i51.i:                                     ; preds = %tpg_s_ycbcr_enc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %quantization1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv21.i, ptr %quantization1.i.i, align 4
  %recalc_colors.i50.i = getelementptr i8, ptr %sd, i32 1348
  %65 = ptrtoint ptr %recalc_colors.i50.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %recalc_colors.i50.i, align 4
  br label %tpg_s_quantization.exit.i

tpg_s_quantization.exit.i:                        ; preds = %if.end.i51.i, %tpg_s_ycbcr_enc.exit.i.tpg_s_quantization.exit.i_crit_edge
  %xfer_func.i = getelementptr i8, ptr %sd, i32 1624
  %66 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %xfer_func.i, align 8
  %conv24.i = zext i16 %67 to i32
  %xfer_func1.i.i = getelementptr i8, ptr %sd, i32 312
  %68 = ptrtoint ptr %xfer_func1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xfer_func1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv24.i)
  %cmp.i52.i = icmp eq i32 %69, %conv24.i
  br i1 %cmp.i52.i, label %tpg_s_quantization.exit.i.cleanup13_crit_edge, label %if.end.i54.i

tpg_s_quantization.exit.i.cleanup13_crit_edge:    ; preds = %tpg_s_quantization.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end.i54.i:                                     ; preds = %tpg_s_quantization.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %xfer_func1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv24.i, ptr %xfer_func1.i.i, align 4
  %recalc_colors.i53.i = getelementptr i8, ptr %sd, i32 1348
  %71 = ptrtoint ptr %recalc_colors.i53.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %recalc_colors.i53.i, align 4
  br label %cleanup13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %frame10 = getelementptr i8, ptr %sd, i32 1584
  %72 = ptrtoint ptr %frame10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %frame10, align 8
  tail call void @vfree(ptr noundef %73) #7
  %74 = ptrtoint ptr %frame10 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %frame10, align 8
  br label %cleanup13

cleanup13:                                        ; preds = %if.else, %if.end.i54.i, %tpg_s_quantization.exit.i.cleanup13_crit_edge, %if.then.cleanup13_crit_edge
  %retval.1 = phi i32 [ 0, %if.else ], [ -12, %if.then.cleanup13_crit_edge ], [ 0, %tpg_s_quantization.exit.i.cleanup13_crit_edge ], [ 0, %if.end.i54.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_reset_source(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tpg_s_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6.not = icmp eq i16 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.v4l2_subdev_get_try_format.exit_crit_edge

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  br label %v4l2_subdev_get_try_format.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

v4l2_subdev_get_try_format.exit:                  ; preds = %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %i.07 = phi i32 [ %inc, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge ], [ 0, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 %i.07
  %4 = call ptr @memcpy(ptr %arrayidx.i, ptr @fmt_default, i32 48)
  %inc = add nuw nsw i32 %i.07, 1
  %5 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, label %v4l2_subdev_get_try_format.exit.for.end_crit_edge

v4l2_subdev_get_try_format.exit.for.end_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

for.end:                                          ; preds = %v4l2_subdev_get_try_format.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call i32 @vimc_mbus_code_by_index(i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %code1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %call = tail call ptr @vimc_pix_map_by_code(i32 noundef %3) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2160, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %cond.true.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !63

cond.true.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %cond.true.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %cond.true.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbus_format = getelementptr i8, ptr %sd, i32 1600
  %9 = call ptr @memcpy(ptr %format, ptr %mbus_format, i32 48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sen_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %frame = getelementptr inbounds %struct.vimc_sen_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mbus_format = getelementptr inbounds %struct.vimc_sen_device, ptr %1, i32 0, i32 6
  br label %if.end3

if.else:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %7, %conv.i
  br i1 %cmp.not.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !63

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %7, %if.else.v4l2_subdev_get_try_format.exit_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i
  br label %if.end3

if.end3:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.end
  %mf.0 = phi ptr [ %mbus_format, %if.end ], [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @vimc_pix_map_by_code(i32 noundef %13) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4106, ptr %code.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 16) #7
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 4096) #7
  %and.i = and i32 %18, 8190
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 16) #7
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 2160) #7
  %and21.i = and i32 %23, 4094
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and21.i, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %26, label %if.end.i.do.body.i_crit_edge [
    i32 0, label %if.end.i.if.then26.i_crit_edge
    i32 7, label %if.end.i.if.then26.i_crit_edge54
  ]

if.end.i.if.then26.i_crit_edge54:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then26.i:                                      ; preds = %if.end.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge54
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then26.i, %if.end.i.do.body.i_crit_edge
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace.i, align 4
  %31 = add i32 %30, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %31)
  %32 = icmp ult i32 %31, -12
  br i1 %32, label %if.then33.i, label %do.body.i.if.end35.i_crit_edge

do.body.i.if.end35.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then33.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call ptr @memset(ptr %colorspace.i, i32 0, i32 10)
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %do.body.i.if.end35.i_crit_edge
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %36)
  %cmp36.i = icmp ugt i16 %36, 8
  br i1 %cmp36.i, label %if.then38.i, label %if.end35.i.if.end39.i_crit_edge

if.end35.i.if.end39.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %34, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end39.i_crit_edge
  %quantization40.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %quantization40.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %quantization40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp42.i = icmp ugt i16 %39, 2
  br i1 %cmp42.i, label %if.then44.i, label %if.end39.i.if.end46.i_crit_edge

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %quantization40.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %quantization40.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end39.i.if.end46.i_crit_edge
  %xfer_func47.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %41 = ptrtoint ptr %xfer_func47.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %xfer_func47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %42)
  %cmp49.i = icmp ugt i16 %42, 7
  br i1 %cmp49.i, label %if.then51.i, label %if.end46.i.vimc_sen_adjust_fmt.exit_crit_edge

if.end46.i.vimc_sen_adjust_fmt.exit_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vimc_sen_adjust_fmt.exit

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %xfer_func47.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %xfer_func47.i, align 4
  br label %vimc_sen_adjust_fmt.exit

vimc_sen_adjust_fmt.exit:                         ; preds = %if.then51.i, %if.end46.i.vimc_sen_adjust_fmt.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_sen_set_fmt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_sen_set_fmt, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !64

if.then8:                                         ; preds = %vimc_sen_adjust_fmt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.vimc_sen_device, ptr %1, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %mf.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mf.0, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 1
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 2
  %50 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 4
  %52 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %colorspace, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 6
  %54 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %quantization, align 2
  %conv = zext i16 %55 to i32
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 7
  %56 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %xfer_func, align 4
  %conv10 = zext i16 %57 to i32
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf.0, i32 0, i32 5
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %conv11 = zext i16 %60 to i32
  %61 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %format, align 4
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height.i, align 4
  %65 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %code.i, align 4
  %67 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %colorspace.i, align 4
  %69 = ptrtoint ptr %quantization40.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %quantization40.i, align 2
  %conv22 = zext i16 %70 to i32
  %71 = ptrtoint ptr %xfer_func47.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xfer_func47.i, align 4
  %conv25 = zext i16 %72 to i32
  %73 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %34, align 4
  %conv27 = zext i16 %74 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_sen_set_fmt.__UNIQUE_ID_ddebug304, ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %conv22, i32 noundef %conv25, i32 noundef %conv27) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %vimc_sen_adjust_fmt.exit
  %75 = call ptr @memcpy(ptr %mf.0, ptr %format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_mbus_code_by_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_fill_plane_buffer(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_calc_text_basep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpg_g_color_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_gen_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @vimc_sen_type, !1, !"vimc_sen_type", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 449, i32 22}
!2 = !{ptr @vimc_sen_add._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 392, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 351, i32 10}
!7 = !{ptr @vimc_sen_ctrl_class, !8, !"vimc_sen_ctrl_class", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 348, i32 38}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 358, i32 10}
!11 = !{ptr @vimc_sen_ctrl_test_pattern, !12, !"vimc_sen_ctrl_test_pattern", i1 false, i1 false}
!12 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 355, i32 38}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 374, i32 10}
!15 = !{ptr @vimc_sen_ctrl_osd_mode, !16, !"vimc_sen_ctrl_osd_mode", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 371, i32 38}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 365, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 366, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 367, i32 2}
!23 = !{ptr @vimc_ctrl_osd_mode_strings, !24, !"vimc_ctrl_osd_mode_strings", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 364, i32 27}
!25 = !{ptr @vimc_sen_ctrl_ops, !26, !"vimc_sen_ctrl_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 332, i32 35}
!27 = !{ptr @vimc_sen_ops, !28, !"vimc_sen_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 290, i32 37}
!29 = !{ptr @vimc_sen_core_ops, !30, !"vimc_sen_core_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 280, i32 42}
!31 = !{ptr @vimc_sen_video_ops, !32, !"vimc_sen_video_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 286, i32 43}
!33 = !{ptr @vimc_sen_pad_ops, !34, !"vimc_sen_pad_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 185, i32 41}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 168, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vimc_sen_set_fmt.__UNIQUE_ID_ddebug304, !38, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 212, i32 5}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 218, i32 30}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 228, i32 30}
!49 = !{ptr @fmt_default, !50, !"fmt_default", i1 false, i1 false}
!50 = !{!"../drivers/media/test-drivers/vimc/vimc-sensor.c", i32 36, i32 40}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 536308, i64 536335}
!61 = !{i64 537003, i64 537030, i64 537063, i64 537084, i64 537111, i64 537137}
!62 = !{i8 0, i8 2}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2148779766, i64 2148779771, i64 2148779784, i64 2148779828, i64 2148779862, i64 2148779883}
