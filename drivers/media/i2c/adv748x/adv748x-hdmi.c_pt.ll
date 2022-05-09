; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv748x/adv748x-hdmi.c_pt.bc'
source_filename = "../drivers/media/i2c/adv748x/adv748x-hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.107 }
%union.anon.107 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.adv748x_hdmi = type { [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_dv_timings, %struct.v4l2_fract, ptr, %struct.anon.111 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.108, i16, i16, i16, [10 x i16] }
%union.anon.108 = type { i16 }
%struct.v4l2_dv_timings = type { i32, %union.anon.106 }
%union.anon.106 = type { [32 x i32] }
%struct.anon.111 = type { [512 x i8], i32, i32 }
%struct.adv748x_hdmi_video_standards = type <{ %struct.v4l2_dv_timings, i8, i8 }>
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@adv748x_hdmi_init.cea1280x720 = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@adv748x_ops_hdmi = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @adv748x_video_ops_hdmi, ptr null, ptr null, ptr null, ptr @adv748x_pad_ops_hdmi }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@adv748x_video_ops_hdmi = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv748x_hdmi_g_input_status, ptr @adv748x_hdmi_s_stream, ptr @adv748x_hdmi_g_pixelaspect, ptr null, ptr null, ptr @adv748x_hdmi_s_dv_timings, ptr @adv748x_hdmi_g_dv_timings, ptr @adv748x_hdmi_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv748x_pad_ops_hdmi = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv748x_hdmi_enum_mbus_code, ptr null, ptr null, ptr @adv748x_hdmi_get_format, ptr @adv748x_hdmi_set_format, ptr null, ptr null, ptr @adv748x_hdmi_get_edid, ptr @adv748x_hdmi_set_edid, ptr @adv748x_hdmi_dv_timings_cap, ptr @adv748x_hdmi_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv748x\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv748x_hdmi_s_stream\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/i2c/adv748x/adv748x-hdmi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Detected HDMI signal\0A\00", [42 x i8] zeroinitializer }, align 32
@adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't detect HDMI video signal\0A\00", [61 x i8] zeroinitializer }, align 32
@adv748x_hdmi_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.107 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 480, i32 1200, i64 13000000, i64 162000000, i32 3, i32 2, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@adv748x_hdmi_video_standards = internal constant { [28 x <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>], [952 x i8] } { [28 x <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>] [<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 74, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 75, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 83, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 83, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 83, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 2420, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 61, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 83, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 59400000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 3, i32 130, %struct.v4l2_fract zeroinitializer, i8 60, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 83, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 94, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 94, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 94, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 94, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 94, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -128, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -127, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -126, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -125, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -124, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -123, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -122, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -120, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -119, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -118, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -117, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -116, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -115, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -114, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -113, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 162000000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 -106, i8 0 }>], [952 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv748x_hdmi_set_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error %d writing edid pad %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv748x_hdmi_set_edid\00", [42 x i8] zeroinitializer }, align 32
@adv748x_hdmi_set_edid._entry_ptr = internal global ptr @adv748x_hdmi_set_edid._entry, section ".printk_index", align 4
@adv748x_hdmi_edid_write_block.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"adv748x_hdmi_edid_write_block\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: write EDID block (%d byte)\0A\00", [32 x i8] zeroinitializer }, align 32
@adv748x_hdmi_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"adv748x_hdmi:684:(&hdmi->ctrl_hdl)->_lock\00", [54 x i8] zeroinitializer }, align 32
@adv748x_hdmi_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv748x_hdmi_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@hdmi_ctrl_patgen_menu = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Solid Color\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color Bars\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ramp Grey\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ramp Blue\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ramp Red\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Checkered\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 10422531]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"cea1280x720\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 724, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"adv748x_ops_hdmi\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 611, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 735, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"adv748x_video_ops_hdmi\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 384, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"adv748x_pad_ops_hdmi\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 597, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 366, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 368, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"adv748x_hdmi_timings_cap\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 34, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"adv748x_hdmi_video_standards\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 54, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 998, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 556, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 497, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 684, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"adv748x_hdmi_ctrl_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 676, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"hdmi_ctrl_patgen_menu\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 620, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 621, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 622, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 623, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 624, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 625, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 626, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [44 x i8] c"../drivers/media/i2c/adv748x/adv748x-hdmi.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 627, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @adv748x_hdmi_set_edid._entry, ptr @adv748x_hdmi_set_edid._entry_ptr, ptr @adv748x_hdmi_init.cea1280x720, ptr @adv748x_ops_hdmi, ptr @.str, ptr @adv748x_video_ops_hdmi, ptr @adv748x_pad_ops_hdmi, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adv748x_hdmi_timings_cap, ptr @adv748x_hdmi_video_standards, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @adv748x_hdmi_init_controls._key, ptr @.str.12, ptr @adv748x_hdmi_ctrl_ops, ptr @hdmi_ctrl_patgen_menu, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_init.cea1280x720 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_ops_hdmi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_video_ops_hdmi to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_pad_ops_hdmi to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_video_standards to i32), i32 3752, i32 4704, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_set_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_hdmi_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ctrl_patgen_menu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_hdmi_init(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hdmi, i32 -244
  %timings = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %timings, ptr @adv748x_hdmi_init.cea1280x720, i32 132)
  %aspect_ratio = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 5
  %1 = ptrtoint ptr %aspect_ratio to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %aspect_ratio, align 4
  %denominator = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %denominator, align 4
  %sd = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 2
  tail call void @adv748x_subdev_init(ptr noundef %sd, ptr noundef %add.ptr, ptr noundef nonnull @adv748x_ops_hdmi, i32 noundef 4097, ptr noundef nonnull @.str) #9
  %flags = getelementptr inbounds %struct.media_pad, ptr %hdmi, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %flags, align 4
  %flags4 = getelementptr [2 x %struct.media_pad], ptr %hdmi, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags4, align 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %hdmi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_hdl.i = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 1
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 5, ptr noundef nonnull @adv748x_hdmi_init_controls._key, ptr noundef nonnull @.str.12) #9
  %mutex.i = getelementptr i8, ptr %hdmi, i32 -236
  %lock.i = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mutex.i, ptr %lock.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_hdmi_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_hdmi_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_hdmi_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_hdmi_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #9
  %call12.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_hdmi_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 6, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @hdmi_ctrl_patgen_menu) #9
  %ctrl_handler.i = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrl_hdl.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #9
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %10, %if.then.i ], [ %call19.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_subdev_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv748x_hdmi_cleanup(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 2
  tail call void @v4l2_device_unregister_subdev(ptr noundef %sd) #9
  %ctrl_hdl = getelementptr inbounds %struct.adv748x_hdmi, ptr %hdmi, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_g_input_status(ptr noundef %sd, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -492
  %mutex = getelementptr i8, ptr %sd, i32 -484
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 7) #9
  %0 = and i32 %call.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %0)
  %1 = icmp eq i32 %0, 160
  %cond = select i1 %1, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %status, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -492
  %mutex = getelementptr i8, ptr %sd, i32 -484
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %tx = getelementptr i8, ptr %sd, i32 384
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %call = tail call i32 @adv748x_tx_power(ptr noundef %1, i1 noundef zeroext %tobool) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 7) #9
  %2 = and i32 %call.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %2)
  %3 = icmp eq i32 %2, 160
  br i1 %3, label %do.body, label %do.body14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_hdmi_s_stream, %if.then12)) #9
          to label %done [label %if.then12], !srcloc !64

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug292, ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %done

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_hdmi_s_stream, %if.then26)) #9
          to label %done [label %if.then26], !srcloc !64

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.5) #9
  br label %done

done:                                             ; preds = %if.then26, %do.body14, %if.then12, %do.body, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv748x_hdmi_g_pixelaspect(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %aspect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aspect to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aspect, align 4
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %aspect, i32 0, i32 1
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %denominator, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timings, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %timings4 = getelementptr i8, ptr %sd, i32 244
  %call = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings4, ptr noundef nonnull %timings, i32 noundef 0, i1 noundef zeroext false) #9
  br i1 %call, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef nonnull %timings, ptr noundef nonnull @adv748x_hdmi_timings_cap, ptr noundef null, ptr noundef null) #9
  br i1 %call7, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call.i = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef nonnull %timings, ptr noundef nonnull @adv748x_hdmi_timings_cap, i32 noundef 250000, ptr noundef null, ptr noundef null) #9
  %mutex = getelementptr i8, ptr %sd, i32 -484
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %i.01.i = phi i32 [ 0, %if.end9 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adv748x_hdmi_video_standards, ptr @adv748x_hdmi_video_standards, i32 %i.01.i
  %call.i36 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %timings, ptr noundef %arrayidx.i, i32 noundef 250000, i1 noundef zeroext false) #9
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %adv748x_hdmi_set_video_timings.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

adv748x_hdmi_set_video_timings.exit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %adv748x_hdmi_set_video_timings.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %adv748x_hdmi_set_video_timings.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -34, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_g_dv_timings(ptr noundef %sd, ptr nocapture noundef writeonly %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 -484
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %timings4 = getelementptr i8, ptr %sd, i32 244
  %0 = call ptr @memcpy(ptr %timings, ptr %timings4, i32 132)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_query_dv_timings(ptr noundef %sd, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -492
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %tobool.not = icmp eq ptr %timings, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %timings, i32 0, i32 132)
  %call.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 7) #9
  %2 = and i32 %call.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %2)
  %3 = icmp eq i32 %2, 160
  br i1 %3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i150 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 81) #9
  %call1.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp.i = icmp slt i32 %call.i150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %if.end5.cleanup_crit_edge, label %adv748x_hdmi_read_pixelclock.exit

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adv748x_hdmi_read_pixelclock.exit:                ; preds = %if.end5
  %shl.i = shl nuw i32 %call.i150, 1
  %shr10.i = lshr i32 %call1.i, 7
  %or.i = or i32 %shr10.i, %shl.i
  %mul.i = mul i32 %or.i, 1000000
  %and.i = and i32 %call1.i, 127
  %mul3.i = mul nuw nsw i32 %and.i, 1000000
  %div9.i = lshr i32 %mul3.i, 7
  %add.i = add i32 %mul.i, %div9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %adv748x_hdmi_read_pixelclock.exit.cleanup_crit_edge, label %if.end8

adv748x_hdmi_read_pixelclock.exit.cleanup_crit_edge: ; preds = %adv748x_hdmi_read_pixelclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %adv748x_hdmi_read_pixelclock.exit
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %timings, align 1
  %conv154 = zext i32 %add.i to i64
  %pixelclock9 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %pixelclock9 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv154, ptr %pixelclock9, align 1
  %call10 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 11) #9
  %and = lshr i32 %call10, 5
  %and.lobit = and i32 %and, 1
  %interlaced = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %interlaced to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %and.lobit, ptr %interlaced, align 1
  %call12 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 7) #9
  %shl = shl i32 %call12, 8
  %call13 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 8) #9
  %or = or i32 %shl, %call13
  %and14 = and i32 %or, 8191
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %and14, ptr %0, align 1
  %call15 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 9) #9
  %shl16 = shl i32 %call15, 8
  %call17 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 10) #9
  %or18 = or i32 %shl16, %call17
  %and19 = and i32 %or18, 8191
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %and19, ptr %height, align 1
  %call20 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 32) #9
  %shl21 = shl i32 %call20, 8
  %call22 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 33) #9
  %or23 = or i32 %shl21, %call22
  %and24 = and i32 %or23, 8191
  %hfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %and24, ptr %hfrontporch, align 1
  %call25 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 34) #9
  %shl26 = shl i32 %call25, 8
  %call27 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 35) #9
  %or28 = or i32 %shl26, %call27
  %and29 = and i32 %or28, 8191
  %hsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %10 = ptrtoint ptr %hsync to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %and29, ptr %hsync, align 1
  %call30 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 36) #9
  %shl31 = shl i32 %call30, 8
  %call32 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 37) #9
  %or33 = or i32 %shl31, %call32
  %and34 = and i32 %or33, 8191
  %hbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %11 = ptrtoint ptr %hbackporch to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %and34, ptr %hbackporch, align 1
  %call35 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 42) #9
  %shl36 = shl i32 %call35, 8
  %call37 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 43) #9
  %or38 = or i32 %shl36, %call37
  %and39 = lshr i32 %or38, 1
  %div144 = and i32 %and39, 8191
  %vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %12 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %div144, ptr %vfrontporch, align 1
  %call40 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 46) #9
  %shl41 = shl i32 %call40, 8
  %call42 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 47) #9
  %or43 = or i32 %shl41, %call42
  %and44 = lshr i32 %or43, 1
  %div45145 = and i32 %and44, 8191
  %vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %13 = ptrtoint ptr %vsync to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %div45145, ptr %vsync, align 1
  %call46 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 50) #9
  %shl47 = shl i32 %call46, 8
  %call48 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 51) #9
  %or49 = or i32 %shl47, %call48
  %and50 = lshr i32 %or49, 1
  %div51146 = and i32 %and50, 8191
  %vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %14 = ptrtoint ptr %vbackporch to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %div51146, ptr %vbackporch, align 1
  %call52 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 5) #9
  %and53 = lshr i32 %call52, 4
  %or59 = and i32 %and53, 3
  %polarities = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %polarities to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %or59, ptr %polarities, align 1
  %16 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp61 = icmp eq i32 %17, 1
  br i1 %cmp61, label %if.then63, label %if.end8.if.end88_crit_edge

if.end8.if.end88_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then63:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 11) #9
  %shl65 = shl i32 %call64, 8
  %call66 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 12) #9
  %or67 = or i32 %shl65, %call66
  %and68 = and i32 %or67, 8191
  %18 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height, align 1
  %add = add i32 %and68, %19
  store i32 %add, ptr %height, align 1
  %call70 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 44) #9
  %shl71 = shl i32 %call70, 8
  %call72 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 45) #9
  %or73 = or i32 %shl71, %call72
  %and74 = lshr i32 %or73, 1
  %div75147 = and i32 %and74, 8191
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %20 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %div75147, ptr %il_vfrontporch, align 1
  %call76 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 48) #9
  %shl77 = shl i32 %call76, 8
  %call78 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 49) #9
  %or79 = or i32 %shl77, %call78
  %and80 = lshr i32 %or79, 1
  %div81148 = and i32 %and80, 8191
  %il_vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %21 = ptrtoint ptr %il_vsync to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %div81148, ptr %il_vsync, align 1
  %call82 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 52) #9
  %shl83 = shl i32 %call82, 8
  %call84 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 3, i8 noundef zeroext 53) #9
  %or85 = or i32 %shl83, %call84
  %and86 = lshr i32 %or85, 1
  %div87149 = and i32 %and86, 8191
  %il_vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %22 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %div87149, ptr %il_vbackporch, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then63, %if.end8.if.end88_crit_edge
  %call.i151 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef nonnull %timings, ptr noundef nonnull @adv748x_hdmi_timings_cap, i32 noundef 250000, ptr noundef null, ptr noundef null) #9
  %timings89 = getelementptr i8, ptr %sd, i32 244
  %23 = call ptr @memcpy(ptr %timings89, ptr %timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %adv748x_hdmi_read_pixelclock.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ -22, %entry.cleanup_crit_edge ], [ -67, %if.end.cleanup_crit_edge ], [ -61, %adv748x_hdmi_read_pixelclock.exit.cleanup_crit_edge ], [ -61, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_tx_power(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_hdmi_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4106, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  %timings.i = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp ult i16 %5, 2
  br i1 %cmp.i, label %do.end.i, label %if.then2.v4l2_subdev_get_try_format.exit_crit_edge, !prof !65

if.then2.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge
  %not.cmp.i = xor i1 %cmp.i, true
  %spec.select.i = zext i1 %not.cmp.i to i32
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %9 = call ptr @memset(ptr %format4, i32 0, i32 48)
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4106, ptr %code.i, align 4
  %11 = getelementptr i8, ptr %sd, i32 248
  %interlaced.i = getelementptr i8, ptr %sd, i32 256
  %12 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 7
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %colorspace.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %18 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %format4, align 4
  %height.i = getelementptr i8, ptr %sd, i32 252
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %div16.i = zext i1 %not.tobool.not.i to i32
  %spec.select.i14 = lshr i32 %20, %div16.i
  %height4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i14, ptr %height4.i, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings.i) #9
  %22 = call ptr @memset(ptr %timings.i, i32 255, i32 132)
  %arrayidx.i15 = getelementptr i8, ptr %sd, i32 -216
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i15) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.adv748x_hdmi_propagate_pixelrate.exit_crit_edge, label %adv748x_get_remote_sd.exit.i

if.else.adv748x_hdmi_propagate_pixelrate.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv748x_hdmi_propagate_pixelrate.exit

adv748x_get_remote_sd.exit.i:                     ; preds = %if.else
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i16 = icmp eq ptr %24, null
  br i1 %tobool.not.i16, label %adv748x_get_remote_sd.exit.i.adv748x_hdmi_propagate_pixelrate.exit_crit_edge, label %if.end.i

adv748x_get_remote_sd.exit.i.adv748x_hdmi_propagate_pixelrate.exit_crit_edge: ; preds = %adv748x_get_remote_sd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adv748x_hdmi_propagate_pixelrate.exit

if.end.i:                                         ; preds = %adv748x_get_remote_sd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @adv748x_hdmi_query_dv_timings(ptr noundef %sd, ptr noundef nonnull %timings.i) #9
  %pixelclock.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings.i, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %pixelclock.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %pixelclock.i, align 1
  %call2.i = call i32 @adv748x_csi2_set_pixelrate(ptr noundef nonnull %24, i64 noundef %26) #9
  br label %adv748x_hdmi_propagate_pixelrate.exit

adv748x_hdmi_propagate_pixelrate.exit:            ; preds = %if.end.i, %adv748x_get_remote_sd.exit.i.adv748x_hdmi_propagate_pixelrate.exit_crit_edge, %if.else.adv748x_hdmi_propagate_pixelrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings.i) #9
  br label %cleanup

cleanup:                                          ; preds = %adv748x_hdmi_propagate_pixelrate.exit, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %adv748x_hdmi_propagate_pixelrate.exit ], [ 0, %v4l2_subdev_get_try_format.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @adv748x_hdmi_get_format(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %sdformat)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp ult i16 %5, 2
  br i1 %cmp.i, label %do.end.i, label %if.end3.v4l2_subdev_get_try_format.exit_crit_edge, !prof !65

if.end3.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.end3.v4l2_subdev_get_try_format.exit_crit_edge
  %not.cmp.i = xor i1 %cmp.i, true
  %spec.select.i = zext i1 %not.cmp.i to i32
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_hdmi_get_edid(ptr nocapture noundef readonly %sd, ptr nocapture noundef %edid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %edid1 = getelementptr i8, ptr %sd, i32 388
  %present = getelementptr i8, ptr %sd, i32 900
  %1 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %3 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %blocks5 = getelementptr i8, ptr %sd, i32 904
  %7 = ptrtoint ptr %blocks5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blocks5, align 4
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %blocks, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %blocks10 = getelementptr i8, ptr %sd, i32 904
  %10 = ptrtoint ptr %blocks10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %4)
  %cmp11.not = icmp ugt i32 %11, %4
  br i1 %cmp11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %blocks15 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %12 = ptrtoint ptr %blocks15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks15, align 4
  %add = add i32 %13, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp18 = icmp ugt i32 %add, %11
  br i1 %cmp18, label %if.then19, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %11, %4
  %14 = ptrtoint ptr %blocks15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %blocks15, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end13.if.end24_crit_edge
  %edid25 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %15 = ptrtoint ptr %edid25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edid25, align 4
  %mul = shl i32 %4, 7
  %add.ptr30 = getelementptr i8, ptr %edid1, i32 %mul
  %17 = ptrtoint ptr %blocks15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks15, align 4
  %mul32 = shl i32 %18, 7
  %19 = call ptr @memcpy(ptr %16, ptr %add.ptr30, i32 %mul32)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end7.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end24 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_set_edid(ptr noundef %sd, ptr nocapture noundef %edid) #0 align 64 {
entry:
  %tmp30 = alloca %struct.v4l2_fract, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -492
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %1 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %3 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %blocks7 = getelementptr i8, ptr %sd, i32 904
  %5 = ptrtoint ptr %blocks7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %blocks7, align 4
  %present = getelementptr i8, ptr %sd, i32 900
  %6 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %present, align 4
  %aspect_ratio = getelementptr i8, ptr %sd, i32 376
  %7 = ptrtoint ptr %aspect_ratio to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %aspect_ratio, align 4
  %denominator = getelementptr i8, ptr %sd, i32 380
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %denominator, align 4
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocks, align 4
  %.tr83 = trunc i32 %10 to i8
  %conv = shl i8 %.tr83, 4
  %call = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 5, i8 noundef zeroext 112, i8 noundef zeroext %conv) #9
  %call11 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 5, i8 noundef zeroext 116, i8 noundef zeroext 0) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp14 = icmp ugt i32 %4, 4
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %blocks, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %edid19 = getelementptr i8, ptr %sd, i32 388
  %edid22 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %12 = ptrtoint ptr %edid22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid22, align 4
  %mul = shl nuw nsw i32 %4, 7
  %14 = call ptr @memcpy(ptr %edid19, ptr %13, i32 %mul)
  %15 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks, align 4
  %blocks26 = getelementptr i8, ptr %sd, i32 904
  %17 = ptrtoint ptr %blocks26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %blocks26, align 4
  %present28 = getelementptr i8, ptr %sd, i32 900
  %18 = ptrtoint ptr %present28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %present28, align 4
  %aspect_ratio29 = getelementptr i8, ptr %sd, i32 376
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp30) #9
  %19 = ptrtoint ptr %edid22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edid22, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 21
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %arrayidx33 = getelementptr i8, ptr %20, i32 22
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx33, align 1
  call void @v4l2_calc_aspect_ratio(ptr nonnull sret(%struct.v4l2_fract) align 4 %tmp30, i8 noundef zeroext %22, i8 noundef zeroext %24) #9
  %25 = ptrtoint ptr %tmp30 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tmp30, align 8
  %27 = ptrtoint ptr %aspect_ratio29 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %aspect_ratio29, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp30) #9
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %mul35 = shl i32 %29, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_hdmi_edid_write_block.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_hdmi_set_edid, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !64

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_hdmi_edid_write_block.__UNIQUE_ID_ddebug294, ptr noundef %31, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %mul35) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul35)
  %cmp21.not.i = icmp eq i32 %mul35, 0
  br i1 %cmp21.not.i, label %do.end.i.if.end46_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.if.end46_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %i.022.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %mul35, %i.022.i
  %32 = call i32 @llvm.umin.i32(i32 %sub.i, i32 32) #9
  %add.ptr7.i = getelementptr i8, ptr %edid19, i32 %i.022.i
  %call8.i = call i32 @adv748x_write_block(ptr noundef %add.ptr3, i32 noundef 4, i32 noundef %i.022.i, ptr noundef %add.ptr7.i, i32 noundef %32) #9
  %add.i = add i32 %32, %i.022.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool4.not.i = icmp eq i32 %call8.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul35)
  %cmp.i = icmp ult i32 %add.i, %mul35
  %or.cond.i = and i1 %tobool4.not.i, %cmp.i
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %adv748x_hdmi_edid_write_block.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

adv748x_hdmi_edid_write_block.exit:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp40 = icmp slt i32 %call8.i, 0
  br i1 %cmp40, label %do.end, label %adv748x_hdmi_edid_write_block.exit.if.end46_crit_edge

adv748x_hdmi_edid_write_block.exit.if.end46_crit_edge: ; preds = %adv748x_hdmi_edid_write_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end:                                           ; preds = %adv748x_hdmi_edid_write_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %33 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %edid, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %call8.i, i32 noundef %34) #12
  br label %cleanup

if.end46:                                         ; preds = %adv748x_hdmi_edid_write_block.exit.if.end46_crit_edge, %do.end.i.if.end46_crit_edge
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %.tr = trunc i32 %36 to i8
  %conv49 = shl i8 %.tr, 4
  %call50 = call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 5, i8 noundef zeroext 112, i8 noundef zeroext %conv49) #9
  %call51 = call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 5, i8 noundef zeroext 116, i8 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end, %if.then16, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -7, %if.then16 ], [ %call8.i, %do.end ], [ 0, %if.end46 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_hdmi_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %cap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %cap, ptr @adv748x_hdmi_timings_cap, i32 144)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @adv748x_hdmi_timings_cap, ptr noundef nonnull @adv748x_hdmi_check_dv_timings, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_csi2_set_pixelrate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_calc_aspect_ratio(ptr sret(%struct.v4l2_fract) align 4, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_write_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @adv748x_hdmi_check_dv_timings(ptr noundef %timings, ptr nocapture noundef readnone %hdl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.08, 1
  %arrayidx = getelementptr %struct.adv748x_hdmi_video_standards, ptr @adv748x_hdmi_video_standards, i32 %inc
  %0 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %arrayidx9 = phi ptr [ @adv748x_hdmi_video_standards, %entry ], [ %arrayidx, %for.cond.for.body_crit_edge ]
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %arrayidx9, i32 noundef 0, i1 noundef zeroext false) #9
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_hdmi_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -308
  %call = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 62) #9
  %2 = trunc i32 %call to i8
  %conv = or i8 %2, -128
  %call4 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 62, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb8
    i32 9963777, label %sw.bb12
    i32 9963778, label %sw.bb16
    i32 10422531, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv6 = trunc i32 %7 to i8
  %call7 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 60, i8 noundef zeroext %conv6) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val9, align 4
  %conv10 = trunc i32 %9 to i8
  %call11 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 61, i8 noundef zeroext %conv10) #9
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val13, align 4
  %conv14 = trunc i32 %11 to i8
  %call15 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 58, i8 noundef zeroext %conv14) #9
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %13 to i8
  %call19 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 59, i8 noundef zeroext %conv18) #9
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22)
  %tobool.not = icmp eq i8 %conv22, 0
  %16 = add i8 %conv22, 127
  %conv26 = or i8 %16, -128
  %pattern.0 = select i1 %tobool.not, i8 0, i8 %conv26
  %call28 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 2, i8 noundef zeroext 55, i8 noundef zeroext %pattern.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call28, %sw.bb20 ], [ %call19, %sw.bb16 ], [ %call15, %sw.bb12 ], [ %call11, %sw.bb8 ], [ %call7, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @adv748x_hdmi_init.cea1280x720, !1, !"cea1280x720", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 724, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 735, i32 28}
!4 = !{ptr @adv748x_ops_hdmi, !5, !"adv748x_ops_hdmi", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 611, i32 37}
!6 = !{ptr @adv748x_video_ops_hdmi, !7, !"adv748x_video_ops_hdmi", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 384, i32 43}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 366, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug292, !9, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 368, i32 3}
!16 = !{ptr @adv748x_hdmi_s_stream.__UNIQUE_ID_ddebug293, !15, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!17 = !{ptr @adv748x_hdmi_timings_cap, !18, !"adv748x_hdmi_timings_cap", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 34, i32 41}
!19 = !{ptr @adv748x_hdmi_video_standards, !20, !"adv748x_hdmi_video_standards", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 54, i32 1}
!21 = !{ptr @adv748x_pad_ops_hdmi, !22, !"adv748x_pad_ops_hdmi", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 597, i32 41}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 556, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @adv748x_hdmi_set_edid._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @adv748x_hdmi_set_edid._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 497, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @adv748x_hdmi_edid_write_block.__UNIQUE_ID_ddebug294, !31, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!34 = !{ptr @adv748x_hdmi_init_controls._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 684, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @adv748x_hdmi_ctrl_ops, !38, !"adv748x_hdmi_ctrl_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 676, i32 35}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 621, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 622, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 623, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 624, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 625, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 626, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 627, i32 2}
!53 = !{ptr @hdmi_ctrl_patgen_menu, !54, !"hdmi_ctrl_patgen_menu", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/adv748x/adv748x-hdmi.c", i32 620, i32 27}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148972071, i64 2148972076, i64 2148972089, i64 2148972133, i64 2148972167, i64 2148972188}
!65 = !{!"branch_weights", i32 1, i32 2000}
