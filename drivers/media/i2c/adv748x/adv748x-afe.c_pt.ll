; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv748x/adv748x-afe.c_pt.bc'
source_filename = "../drivers/media/i2c/adv748x/adv748x-afe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.adv748x_afe = type { [9 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, ptr, i8, i64, i32 }
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
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@adv748x_afe_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @adv748x_afe_video_ops, ptr null, ptr null, ptr null, ptr @adv748x_afe_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afe\00", [28 x i8] zeroinitializer }, align 32
@adv748x_afe_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr @adv748x_afe_g_std, ptr @adv748x_afe_s_std, ptr null, ptr null, ptr @adv748x_afe_querystd, ptr @adv748x_afe_g_tvnorms, ptr null, ptr @adv748x_afe_g_input_status, ptr @adv748x_afe_s_stream, ptr @adv748x_afe_g_pixelaspect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv748x_afe_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv748x_afe_enum_mbus_code, ptr null, ptr null, ptr @adv748x_afe_get_format, ptr @adv748x_afe_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adv748x_afe_s_stream.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv748x\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adv748x_afe_s_stream\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/i2c/adv748x/adv748x-afe.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Detected SDP signal\0A\00", [43 x i8] zeroinitializer }, align 32
@adv748x_afe_s_stream.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't detect SDP video signal\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@adv748x_afe_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"adv748x_afe:470:(&afe->ctrl_hdl)->_lock\00", [56 x i8] zeroinitializer }, align 32
@adv748x_afe_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv748x_afe_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@afe_ctrl_frp_menu = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Solid Blue\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color Bars\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Grey Ramp\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Cb Ramp\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Cr Ramp\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Boundary\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 16384]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 10422531]
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"adv748x_afe_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 397, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 513, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"adv748x_afe_video_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 303, i32 43 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"adv748x_afe_pad_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 387, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 293, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 295, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 998, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 470, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"adv748x_afe_ctrl_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 462, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"afe_ctrl_frp_menu\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 406, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 407, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 408, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 409, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 410, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 411, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 412, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [43 x i8] c"../drivers/media/i2c/adv748x/adv748x-afe.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 413, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @adv748x_afe_ops, ptr @.str, ptr @adv748x_afe_video_ops, ptr @adv748x_afe_pad_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adv748x_afe_init_controls._key, ptr @.str.7, ptr @adv748x_afe_ctrl_ops, ptr @afe_ctrl_frp_menu, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_afe_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_afe_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_afe_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_afe_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_afe_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe_ctrl_frp_menu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_afe_s_input(ptr noundef %afe, i32 noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %afe, i32 -1400
  %conv = trunc i32 %input to i8
  %call = tail call i32 @adv748x_write(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext %conv) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_afe_init(ptr noundef %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %afe, i32 -1400
  %input = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 7
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %input, align 8
  %streaming = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 5
  %1 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %streaming, align 8
  %curr_norm = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 6
  %2 = ptrtoint ptr %curr_norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4096, ptr %curr_norm, align 8
  %sd = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 2
  tail call void @adv748x_subdev_init(ptr noundef %sd, ptr noundef %add.ptr, ptr noundef nonnull @adv748x_afe_ops, i32 noundef 131076, ptr noundef nonnull @.str) #4
  %endpoints = getelementptr i8, ptr %afe, i32 -1300
  %3 = ptrtoint ptr %endpoints to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %endpoints, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.047.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.047.lcssa, ptr %input, align 8
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %afe, i32 -1296
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i8, ptr %afe, i32 -1292
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i8, ptr %afe, i32 -1288
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i8, ptr %afe, i32 -1284
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i8, ptr %afe, i32 -1280
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %15, null
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i8, ptr %afe, i32 -1276
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %17, null
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i8, ptr %afe, i32 -1272
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %19, null
  br i1 %tobool.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then
  %flags = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags, align 4
  %flags.1 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags.1, align 4
  %flags.2 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %flags.2, align 4
  %flags.3 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %flags.3, align 4
  %flags.4 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %flags.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %flags.4, align 4
  %flags.5 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %flags.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %flags.5, align 4
  %flags.6 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %flags.6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %flags.6, align 4
  %flags.7 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 7, i32 4
  %27 = ptrtoint ptr %flags.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %flags.7, align 4
  %flags11 = getelementptr [9 x %struct.media_pad], ptr %afe, i32 0, i32 8, i32 4
  %28 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags11, align 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 9, ptr noundef %afe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %ctrl_hdl.i = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 1
  %call.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl.i, i32 noundef 5, ptr noundef nonnull @adv748x_afe_init_controls._key, ptr noundef nonnull @.str.7) #4
  %mutex.i = getelementptr i8, ptr %afe, i32 -1392
  %lock.i = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mutex.i, ptr %lock.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_afe_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #4
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_afe_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #4
  %call8.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_afe_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #4
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_afe_ctrl_ops, i32 noundef 9963779, i64 noundef -127, i64 noundef 128, i64 noundef 1, i64 noundef 0) #4
  %call12.i = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_hdl.i, ptr noundef nonnull @adv748x_afe_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 6, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @afe_ctrl_frp_menu) #4
  %ctrl_handler.i = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 2, i32 8
  %30 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ctrl_hdl.i, ptr %ctrl_handler.i, align 8
  %error.i = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 1, i32 9
  %31 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl.i) #4
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %call19.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end.cleanup_crit_edge ], [ %34, %if.then.i ], [ %call19.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_subdev_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv748x_afe_cleanup(ptr noundef %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 2
  tail call void @v4l2_device_unregister_subdev(ptr noundef %sd) #4
  %ctrl_hdl = getelementptr inbounds %struct.adv748x_afe, ptr %afe, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_afe_g_std(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_norm = getelementptr i8, ptr %sd, i32 256
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %curr_norm, align 8
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_s_std(ptr noundef %sd, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values)
  switch i64 %std, label %if.end12.i [
    i64 2048, label %entry.if.end_crit_edge
    i64 16384, label %if.then2.i
    i64 512, label %if.then5.i
    i64 256, label %if.then8.i
    i64 1024, label %if.then11.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end12.i:                                       ; preds = %entry
  %and.i = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end12.i.if.end_crit_edge

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end14.i:                                       ; preds = %if.end12.i
  %and15.i = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.if.end_crit_edge

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end18.i:                                       ; preds = %if.end14.i
  %and19.i = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.cleanup_crit_edge, label %if.end18.i.if.end_crit_edge

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end18.i.if.end_crit_edge, %if.end14.i.if.end_crit_edge, %if.end12.i.if.end_crit_edge, %if.then11.i, %if.then8.i, %if.then5.i, %if.then2.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 224, %if.end18.i.if.end_crit_edge ], [ 128, %if.end14.i.if.end_crit_edge ], [ 80, %if.end12.i.if.end_crit_edge ], [ 96, %entry.if.end_crit_edge ], [ 192, %if.then11.i ], [ 160, %if.then8.i ], [ 144, %if.then5.i ], [ 112, %if.then2.i ]
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -1872
  %mutex = getelementptr i8, ptr %sd, i32 -1864
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %call.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2) #4
  %and.i13 = and i32 %call.i, 15
  %or.i = or i32 %and.i13, %retval.0.i.ph
  %conv.i = trunc i32 %or.i to i8
  %call2.i = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #4
  %curr_norm = getelementptr i8, ptr %sd, i32 256
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %std, ptr %curr_norm, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end18.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_querystd(ptr noundef %sd, ptr noundef writeonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -1872
  %mutex = getelementptr i8, ptr %sd, i32 -1864
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %streaming = getelementptr i8, ptr %sd, i32 248
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 8, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2) #4
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, 15
  %call2.i = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #4
  tail call void @msleep(i32 noundef 100) #4
  %call.i.i = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 14, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.adv748x_afe_status.exit_crit_edge, label %adv748x_afe_read_ro_map.exit.i

if.end.adv748x_afe_status.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

adv748x_afe_read_ro_map.exit.i:                   ; preds = %if.end
  %call1.i.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge, label %if.end.i

adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge: ; preds = %adv748x_afe_read_ro_map.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

if.end.i:                                         ; preds = %adv748x_afe_read_ro_map.exit.i
  %tobool4.not.i = icmp eq ptr %std, null
  br i1 %tobool4.not.i, label %if.end.i.adv748x_afe_status.exit_crit_edge, label %if.end6.i

if.end.i.adv748x_afe_status.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

if.end6.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %call1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.cleanup.sink.split.i_crit_edge, label %if.end10.i

if.end6.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end6.i
  %and11.i = lshr i32 %call1.i.i, 4
  %3 = and i32 %and11.i, 7
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %if.end10.unreachabledefault.i [
    i32 0, label %if.end10.i.cleanup.sink.split.i_crit_edge
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb14.i
    i32 4, label %sw.bb15.i
    i32 5, label %sw.bb16.i
    i32 6, label %sw.bb17.i
    i32 7, label %sw.bb18.i
  ]

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb12.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb13.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb14.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb15.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb16.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb17.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb18.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end10.unreachabledefault.i:                    ; preds = %if.end10.i
  unreachable

cleanup.sink.split.i:                             ; preds = %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %if.end10.i.cleanup.sink.split.i_crit_edge, %if.end6.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 16384, %sw.bb12.i ], [ 256, %sw.bb13.i ], [ 2048, %sw.bb14.i ], [ 255, %sw.bb15.i ], [ 16711680, %sw.bb16.i ], [ 1536, %sw.bb17.i ], [ 16711680, %sw.bb18.i ], [ 0, %if.end6.i.cleanup.sink.split.i_crit_edge ], [ 45056, %if.end10.i.cleanup.sink.split.i_crit_edge ]
  %5 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %.sink.i, ptr %std, align 8
  br label %adv748x_afe_status.exit

adv748x_afe_status.exit:                          ; preds = %cleanup.sink.split.i, %if.end.i.adv748x_afe_status.exit_crit_edge, %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge, %if.end.adv748x_afe_status.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i.i, %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge ], [ 0, %if.end.i.adv748x_afe_status.exit_crit_edge ], [ %call.i.i, %if.end.adv748x_afe_status.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  %curr_norm = getelementptr i8, ptr %sd, i32 256
  %6 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %curr_norm, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i64 %7, label %if.end12.i [
    i64 2048, label %adv748x_afe_status.exit.if.end6_crit_edge
    i64 16384, label %if.then2.i
    i64 512, label %if.then5.i
    i64 256, label %if.then8.i
    i64 1024, label %if.then11.i
  ]

adv748x_afe_status.exit.if.end6_crit_edge:        ; preds = %adv748x_afe_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then2.i:                                       ; preds = %adv748x_afe_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5.i:                                       ; preds = %adv748x_afe_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then8.i:                                       ; preds = %adv748x_afe_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then11.i:                                      ; preds = %adv748x_afe_status.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end12.i:                                       ; preds = %adv748x_afe_status.exit
  %and.i15 = and i64 %7, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i15)
  %tobool.not.i = icmp eq i64 %and.i15, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end12.i.if.end6_crit_edge

if.end12.i.if.end6_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end14.i:                                       ; preds = %if.end12.i
  %and15.i = and i64 %7, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.if.end6_crit_edge

if.end14.i.if.end6_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end18.i:                                       ; preds = %if.end14.i
  %and19.i = and i64 %7, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.unlock_crit_edge, label %if.end18.i.if.end6_crit_edge

if.end18.i.if.end6_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end18.i.unlock_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end6:                                          ; preds = %if.end18.i.if.end6_crit_edge, %if.end14.i.if.end6_crit_edge, %if.end12.i.if.end6_crit_edge, %if.then11.i, %if.then8.i, %if.then5.i, %if.then2.i, %adv748x_afe_status.exit.if.end6_crit_edge
  %retval.0.i16.ph = phi i32 [ 224, %if.end18.i.if.end6_crit_edge ], [ 128, %if.end14.i.if.end6_crit_edge ], [ 80, %if.end12.i.if.end6_crit_edge ], [ 96, %adv748x_afe_status.exit.if.end6_crit_edge ], [ 192, %if.then11.i ], [ 160, %if.then8.i ], [ 144, %if.then5.i ], [ 112, %if.then2.i ]
  %call.i17 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2) #4
  %and.i18 = and i32 %call.i17, 15
  %or.i = or i32 %and.i18, %retval.0.i16.ph
  %conv.i19 = trunc i32 %or.i to i8
  %call2.i20 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext %conv.i19) #4
  br label %unlock

unlock:                                           ; preds = %if.end6, %if.end18.i.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %if.end6 ], [ -16, %entry.unlock_crit_edge ], [ %retval.0.i, %if.end18.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv748x_afe_g_tvnorms(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %norm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16777215, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_g_input_status(ptr noundef %sd, ptr noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %sd, i32 -1864
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1872
  %call.i.i = tail call i32 @adv748x_write(ptr noundef %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext 14, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.adv748x_afe_status.exit_crit_edge, label %adv748x_afe_read_ro_map.exit.i

entry.adv748x_afe_status.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

adv748x_afe_read_ro_map.exit.i:                   ; preds = %entry
  %call1.i.i = tail call i32 @adv748x_read(ptr noundef %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge, label %if.end.i

adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge: ; preds = %adv748x_afe_read_ro_map.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

if.end.i:                                         ; preds = %adv748x_afe_read_ro_map.exit.i
  %tobool.not.i = icmp eq ptr %status, null
  br i1 %tobool.not.i, label %if.end.i.adv748x_afe_status.exit_crit_edge, label %if.then1.i

if.end.i.adv748x_afe_status.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv748x_afe_status.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = shl nuw i32 %call1.i.i, 1
  %0 = and i32 %and.i, 2
  %1 = xor i32 %0, 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %status, align 4
  br label %adv748x_afe_status.exit

adv748x_afe_status.exit:                          ; preds = %if.then1.i, %if.end.i.adv748x_afe_status.exit_crit_edge, %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge, %entry.adv748x_afe_status.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i.i, %adv748x_afe_read_ro_map.exit.i.adv748x_afe_status.exit_crit_edge ], [ %call.i.i, %entry.adv748x_afe_status.exit_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.end.i.adv748x_afe_status.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sd, i32 -1872
  %mutex = getelementptr i8, ptr %sd, i32 -1864
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  br i1 %tobool, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %input = getelementptr i8, ptr %sd, i32 264
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  %conv.i = trunc i32 %1 to i8
  %call.i = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.unlock_crit_edge

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tx = getelementptr i8, ptr %sd, i32 244
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %call8 = tail call i32 @adv748x_tx_power(ptr noundef %3, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end11:                                         ; preds = %if.end6
  %streaming = getelementptr i8, ptr %sd, i32 248
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %streaming, align 8
  %call.i.i = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 14, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end11.do.body23_crit_edge, label %adv748x_afe_read_ro_map.exit.i

if.end11.do.body23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body23

adv748x_afe_read_ro_map.exit.i:                   ; preds = %if.end11
  %call1.i.i = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 16) #4
  %5 = and i32 %call1.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %do.body, label %adv748x_afe_read_ro_map.exit.i.do.body23_crit_edge

adv748x_afe_read_ro_map.exit.i.do.body23_crit_edge: ; preds = %adv748x_afe_read_ro_map.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body23

do.body:                                          ; preds = %adv748x_afe_read_ro_map.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_afe_s_stream.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_afe_s_stream, %if.then21)) #4
          to label %unlock [label %if.then21], !srcloc !50

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_afe_s_stream.__UNIQUE_ID_ddebug292, ptr noundef %7, ptr noundef nonnull @.str.4) #4
  br label %unlock

do.body23:                                        ; preds = %adv748x_afe_read_ro_map.exit.i.do.body23_crit_edge, %if.end11.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_afe_s_stream.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_afe_s_stream, %if.then35)) #4
          to label %unlock [label %if.then35], !srcloc !50

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_afe_s_stream.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.5) #4
  br label %unlock

unlock:                                           ; preds = %if.then35, %do.body23, %if.then21, %do.body, %if.end6.unlock_crit_edge, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.unlock_crit_edge ], [ %call8, %if.end6.unlock_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then35 ], [ 0, %do.body ], [ 0, %do.body23 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_afe_g_pixelaspect(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %aspect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_norm = getelementptr i8, ptr %sd, i32 256
  %0 = ptrtoint ptr %curr_norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %curr_norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 54, i32 11
  %spec.select6 = select i1 %tobool.not, i32 59, i32 10
  %2 = ptrtoint ptr %aspect to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %aspect, align 4
  %3 = getelementptr inbounds %struct.v4l2_fract, ptr %aspect, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select6, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_tx_power(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv748x_afe_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8198, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %cmp.i = icmp ult i16 %5, 9
  br i1 %cmp.i, label %do.end.i, label %if.then2.v4l2_subdev_get_try_format.exit_crit_edge, !prof !51

if.then2.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ 8, %if.then2.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %format4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 44)
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8198, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %field.i, align 4
  %14 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 720, ptr %format4, align 4
  %curr_norm.i = getelementptr i8, ptr %sd, i32 256
  %15 = ptrtoint ptr %curr_norm.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %curr_norm.i, align 8
  %and.i = and i64 %16, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %div.i = select i1 %tobool.not.i, i32 288, i32 240
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %9, align 4
  %arrayidx.i14 = getelementptr i8, ptr %sd, i32 -216
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i14) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.cleanup_crit_edge, label %adv748x_get_remote_sd.exit.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adv748x_get_remote_sd.exit.i:                     ; preds = %if.else
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i15 = icmp eq ptr %19, null
  br i1 %tobool.not.i15, label %adv748x_get_remote_sd.exit.i.cleanup_crit_edge, label %if.end.i

adv748x_get_remote_sd.exit.i.cleanup_crit_edge:   ; preds = %adv748x_get_remote_sd.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %adv748x_get_remote_sd.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @adv748x_csi2_set_pixelrate(ptr noundef nonnull %19, i64 noundef 14318180) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %adv748x_get_remote_sd.exit.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %adv748x_get_remote_sd.exit.i.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.else.i, label %if.end3

if.else.i:                                        ; preds = %if.end
  %format4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 44)
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8198, ptr %code.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %colorspace.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %field.i.i, align 4
  %9 = ptrtoint ptr %format4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %format4.i, align 4
  %curr_norm.i.i = getelementptr i8, ptr %sd, i32 256
  %10 = ptrtoint ptr %curr_norm.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %curr_norm.i.i, align 8
  %and.i.i = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %div.i.i = select i1 %tobool.not.i.i, i32 288, i32 240
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i.i, ptr %4, align 4
  %arrayidx.i14.i = getelementptr i8, ptr %sd, i32 -216
  %call.i.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i14.i) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.else.i.cleanup_crit_edge, label %adv748x_get_remote_sd.exit.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adv748x_get_remote_sd.exit.i.i:                   ; preds = %if.else.i
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entity.i.i.i, align 4
  %tobool.not.i15.i = icmp eq ptr %14, null
  br i1 %tobool.not.i15.i, label %adv748x_get_remote_sd.exit.i.i.cleanup_crit_edge, label %if.end.i.i

adv748x_get_remote_sd.exit.i.i.cleanup_crit_edge: ; preds = %adv748x_get_remote_sd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %adv748x_get_remote_sd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call i32 @adv748x_csi2_set_pixelrate(ptr noundef nonnull %14, i64 noundef 14318180) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %15 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %16)
  %cmp.i = icmp ult i16 %16, 9
  br i1 %cmp.i, label %do.end.i, label %if.end3.v4l2_subdev_get_try_format.exit_crit_edge, !prof !51

if.end3.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.end3.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ 8, %if.end3.v4l2_subdev_get_try_format.exit_crit_edge ]
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %18, i32 %spec.select.i
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.end.i.i, %adv748x_get_remote_sd.exit.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %adv748x_get_remote_sd.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_csi2_set_pixelrate(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_afe_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -1688
  %call = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 14, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb5
    i32 9963777, label %sw.bb9
    i32 9963778, label %sw.bb13
    i32 10422531, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call4 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 10, i8 noundef zeroext %conv) #4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val6, align 4
  %9 = trunc i32 %8 to i8
  %conv7 = sub i8 0, %9
  %call8 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 11, i8 noundef zeroext %conv7) #4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %11 to i8
  %call12 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 8, i8 noundef zeroext %conv11) #4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %13 to i8
  %call16 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext -29, i8 noundef zeroext %conv15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val14, align 4
  %conv20 = trunc i32 %15 to i8
  %call21 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext -28, i8 noundef zeroext %conv20) #4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24 = icmp ne i32 %17, 0
  %call26 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 12) #4
  %and = and i32 %call26, 254
  %conv28 = zext i1 %tobool24 to i32
  %or = or i32 %and, %conv28
  %conv29 = trunc i32 %or to i8
  %call30 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 12, i8 noundef zeroext %conv29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %sw.bb22
  %call34 = tail call i32 @adv748x_read(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 20) #4
  %and35 = and i32 %call34, 241
  br i1 %tobool24, label %cond.true, label %if.end33.cond.end_crit_edge

if.end33.cond.end_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val23, align 4
  %sub39 = add i32 %19, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end33.cond.end_crit_edge
  %cond = phi i32 [ %sub39, %cond.true ], [ 0, %if.end33.cond.end_crit_edge ]
  %or40 = or i32 %cond, %and35
  %conv41 = trunc i32 %or40 to i8
  %call42 = tail call i32 @adv748x_write(ptr noundef %add.ptr3, i8 noundef zeroext 9, i8 noundef zeroext 20, i8 noundef zeroext %conv41) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb22.cleanup_crit_edge, %if.end18, %sw.bb13.cleanup_crit_edge, %sw.bb9, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call30, %sw.bb22.cleanup_crit_edge ], [ %call42, %cond.end ], [ %call16, %sw.bb13.cleanup_crit_edge ], [ %call21, %if.end18 ], [ %call12, %sw.bb9 ], [ %call8, %sw.bb5 ], [ %call4, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 513, i32 33}
!2 = !{ptr @adv748x_afe_ops, !3, !"adv748x_afe_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 397, i32 37}
!4 = !{ptr @adv748x_afe_video_ops, !5, !"adv748x_afe_video_ops", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 303, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 293, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @adv748x_afe_s_stream.__UNIQUE_ID_ddebug292, !7, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 295, i32 3}
!14 = !{ptr @adv748x_afe_s_stream.__UNIQUE_ID_ddebug293, !13, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!15 = !{ptr @adv748x_afe_pad_ops, !16, !"adv748x_afe_pad_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 387, i32 41}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!19 = !{ptr @adv748x_afe_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 470, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adv748x_afe_ctrl_ops, !23, !"adv748x_afe_ctrl_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 462, i32 35}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 407, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 408, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 409, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 410, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 411, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 412, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 413, i32 2}
!38 = !{ptr @afe_ctrl_frp_menu, !39, !"afe_ctrl_frp_menu", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/adv748x/adv748x-afe.c", i32 406, i32 27}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{i64 2148768154, i64 2148768159, i64 2148768172, i64 2148768216, i64 2148768250, i64 2148768271}
!51 = !{!"branch_weights", i32 1, i32 2000}
