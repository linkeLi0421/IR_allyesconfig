; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-ic-prp.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-ic-prp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.imx_ic_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.prp_priv = type { ptr, [3 x %struct.media_pad], %struct.mutex, ptr, ptr, ptr, i32, %struct.v4l2_mbus_framefmt, %struct.v4l2_fract, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.imx_ic_priv = type { ptr, ptr, %struct.v4l2_subdev, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }

@prp_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @prp_video_ops, ptr null, ptr null, ptr null, ptr @prp_pad_ops }, [32 x i8] zeroinitializer }, align 32
@prp_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @prp_registered, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@prp_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @prp_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx_ic_prp_ops = dso_local global { %struct.imx_ic_ops, [44 x i8] } { %struct.imx_ic_ops { ptr @prp_subdev_ops, ptr @prp_internal_ops, ptr @prp_entity_ops, ptr @prp_init, ptr @prp_remove }, [44 x i8] zeroinitializer }, align 32
@prp_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prp_s_stream, ptr null, ptr @prp_g_frame_interval, ptr @prp_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@prp_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx_media_init_cfg, ptr @prp_enum_mbus_code, ptr null, ptr null, ptr @prp_get_fmt, ptr @prp_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prp_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@prp_s_stream.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6_media\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prp_s_stream\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/media/imx/imx-ic-prp.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: stream %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@prp_link_setup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prp_link_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: link setup %s -> %s\00", [40 x i8] zeroinitializer }, align 32
@prp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"prp_subdev_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 471, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"prp_internal_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 476, i32 46 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"prp_entity_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 466, i32 45 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"imx_ic_prp_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 508, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"prp_video_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 460, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"prp_pad_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 452, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 370, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 998, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/staging/media/imx/imx-ic-prp.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 489, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @prp_subdev_ops, ptr @prp_internal_ops, ptr @prp_entity_ops, ptr @imx_ic_prp_ops, ptr @prp_video_ops, ptr @prp_pad_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @prp_init.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ic_prp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_init(ptr noundef %ic_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ic_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ic_priv, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 268, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @prp_init.__key) #4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %task_priv, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ic_priv, ptr %call.i, align 4
  %flags = getelementptr %struct.prp_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 4
  %flags.1 = getelementptr %struct.prp_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 4
  %5 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags.1, align 4
  %flags.2 = getelementptr %struct.prp_priv, ptr %call.i, i32 0, i32 1, i32 2, i32 4
  %6 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags.2, align 4
  %sd = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 2
  %pad3 = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 1
  %call4 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 3, ptr noundef %pad3) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prp_remove(ptr nocapture noundef readonly %ic_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 4
  %0 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_priv, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %src_sd = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %sink_sd_prpenc = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %sink_sd_prpenc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sink_sd_prpenc, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sink_sd_prpvf = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %sink_sd_prpvf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sink_sd_prpvf, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %stream_count = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool3.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %11, %lnot.ext
  br i1 %cmp.not, label %do.body, label %if.end.update_count_crit_edge

if.end.update_count_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_count

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prp_s_stream.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prp_s_stream, %if.then13)) #4
          to label %do.end [label %if.then13], !srcloc !38

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %tobool3.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prp_s_stream.__UNIQUE_ID_ddebug316, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  br i1 %tobool3.not, label %do.end.if.end22_crit_edge, label %if.then17

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_sd, align 4
  %grp_id.i = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %grp_id.i, align 4
  %and.i = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %ipu.i = getelementptr inbounds %struct.imx_ic_priv, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %ipu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipu.i, align 4
  %csi_id.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %csi_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %csi_id.i, align 4
  tail call void @ipu_set_ic_src_mux(ptr noundef %21, i32 noundef %23, i1 noundef zeroext %tobool.i) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %do.end.if.end22_crit_edge
  %24 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src_sd, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.end22.out_crit_edge, label %if.else26

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.else26:                                        ; preds = %if.end22
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %video, align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %if.else26.update_count_crit_edge, label %land.lhs.true28

if.else26.update_count_crit_edge:                 ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_count

land.lhs.true28:                                  ; preds = %if.else26
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_stream, align 4
  %tobool31.not = icmp eq ptr %31, null
  br i1 %tobool31.not, label %land.lhs.true28.update_count_crit_edge, label %if.else33

land.lhs.true28.update_count_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_count

if.else33:                                        ; preds = %land.lhs.true28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %if.else33.if.else41_crit_edge, label %land.lhs.true35

if.else33.if.else41_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else41

land.lhs.true35:                                  ; preds = %if.else33
  %s_stream36 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_stream36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_stream36, align 4
  %tobool37.not = icmp eq ptr %34, null
  br i1 %tobool37.not, label %land.lhs.true35.if.else41_crit_edge, label %land.lhs.true35.if.end48_crit_edge

land.lhs.true35.if.end48_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true35.if.else41_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else41

if.else41:                                        ; preds = %land.lhs.true35.if.else41_crit_edge, %if.else33.if.else41_crit_edge
  br label %if.end48

if.end48:                                         ; preds = %if.else41, %land.lhs.true35.if.end48_crit_edge
  %.sink = phi ptr [ %31, %if.else41 ], [ %34, %land.lhs.true35.if.end48_crit_edge ]
  %call45 = tail call i32 %.sink(ptr noundef nonnull %25, i32 noundef %enable) #4
  %35 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call45, label %if.end48.out_crit_edge [
    i32 0, label %if.end48.update_count_crit_edge
    i32 -515, label %if.end48.update_count_crit_edge113
  ]

if.end48.update_count_crit_edge113:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_count

if.end48.update_count_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_count

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

update_count:                                     ; preds = %if.end48.update_count_crit_edge, %if.end48.update_count_crit_edge113, %land.lhs.true28.update_count_crit_edge, %if.else26.update_count_crit_edge, %if.end.update_count_crit_edge
  %cond61 = select i1 %tobool3.not, i32 -1, i32 1
  %36 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream_count, align 4
  %add = add i32 %37, %cond61
  %38 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %39 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %stream_count, align 4
  br label %out

out:                                              ; preds = %update_count, %if.end48.out_crit_edge, %if.end22.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ -32, %land.lhs.true.out_crit_edge ], [ -32, %entry.out_crit_edge ], [ 0, %update_count ], [ -19, %if.end22.out_crit_edge ], [ %call45, %if.end48.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task_priv.i, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %frame_interval, align 4
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 8
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %frame_interval6 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %interval.sink = phi ptr [ %interval, %if.else ], [ %frame_interval, %if.then4 ]
  %frame_interval6.sink = phi ptr [ %frame_interval6, %if.else ], [ %interval, %if.then4 ]
  %10 = ptrtoint ptr %interval.sink to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %interval.sink, align 4
  %12 = ptrtoint ptr %frame_interval6.sink to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %frame_interval6.sink, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_set_ic_src_mux(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_cfg(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %5, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge16
  ]

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %call.i = tail call i32 @imx_media_enum_mbus_formats(ptr noundef %code1, i32 noundef %8, i32 noundef 11) #4
  br label %out

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge16
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %9 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end, label %sw.bb3.out_crit_edge

sw.bb3.out_crit_edge:                             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %sw.bb3
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %11 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %14, i32 0, i32 2, i32 0, i32 5
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not.i.i.not = icmp eq i16 %16, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !39

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %format_mbus.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %18, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.else.i ]
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code6, align 4
  %code7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %21 = ptrtoint ptr %code7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %code7, align 4
  br label %out

out:                                              ; preds = %__prp_get_fmt.exit, %sw.bb3.out_crit_edge, %sw.bb, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %__prp_get_fmt.exit ], [ %call.i, %sw.bb ], [ -22, %sw.bb3.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %6 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %11, i32 0, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %9, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !40

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %9, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i.i
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %format_mbus.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.else.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__prp_get_fmt.exit.out_crit_edge, label %if.end4

__prp_get_fmt.exit.out_crit_edge:                 ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %out

out:                                              ; preds = %if.end4, %__prp_get_fmt.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4 ], [ -22, %__prp_get_fmt.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #0 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #4
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %code, align 4, !annotation !41
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ugt i32 %6, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %stream_count = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp sgt i32 %8, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %12, i32 0, i32 2, i32 0, i32 5
  %13 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i.i.not = icmp eq i16 %14, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !39

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %format_mbus.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %16, %v4l2_subdev_get_try_format.exit.i ], [ %format_mbus.i, %if.else.i ]
  %17 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %18, label %__prp_get_fmt.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %__prp_get_fmt.exit.sw.bb22_crit_edge
    i32 2, label %__prp_get_fmt.exit.sw.bb22_crit_edge67
  ]

__prp_get_fmt.exit.sw.bb22_crit_edge67:           ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb22

__prp_get_fmt.exit.sw.bb22_crit_edge:             ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb22

__prp_get_fmt.exit.sw.epilog_crit_edge:           ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %__prp_get_fmt.exit
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 32, i32 noundef 4096, i32 noundef 4, ptr noundef %height, i32 noundef 32, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #4
  %code8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code8, align 4
  %call.i = tail call ptr @imx_media_find_mbus_format(i32 noundef %21, i32 noundef 11) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then10, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i54 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 11) #4
  %22 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code, align 4
  %call.i55 = call ptr @imx_media_find_mbus_format(i32 noundef %23, i32 noundef 11) #4
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i55, i32 0, i32 1
  %24 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codes, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %code8, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %sw.bb.if.end15_crit_edge
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp17 = icmp eq i32 %30, 0
  br i1 %cmp17, label %if.then18, label %if.end15.sw.epilog_crit_edge

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %__prp_get_fmt.exit.sw.bb22_crit_edge, %__prp_get_fmt.exit.sw.bb22_crit_edge67
  %format23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %format23, ptr %retval.0.i, i32 48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %if.then18, %if.end15.sw.epilog_crit_edge, %__prp_get_fmt.exit.sw.epilog_crit_edge
  %format24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  call void @imx_media_try_colorimetry(ptr noundef %format24, i1 noundef zeroext true) #4
  %33 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i56 = icmp eq i32 %34, 0
  br i1 %cmp.i56, label %if.then.i60, label %if.else.i64

if.then.i60:                                      ; preds = %sw.epilog
  %35 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pad, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %num_pads.i.i57 = getelementptr inbounds %struct.imx_ic_priv, ptr %38, i32 0, i32 2, i32 0, i32 5
  %39 = ptrtoint ptr %num_pads.i.i57 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i.i57, align 4
  %conv.i.i58 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i.i58)
  %cmp.not.i.i59 = icmp ult i32 %36, %conv.i.i58
  br i1 %cmp.not.i.i59, label %if.then.i60.v4l2_subdev_get_try_format.exit.i62_crit_edge, label %do.end.i.i61, !prof !40

if.then.i60.v4l2_subdev_get_try_format.exit.i62_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %v4l2_subdev_get_try_format.exit.i62

do.end.i.i61:                                     ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 998, i32 noundef 9, ptr noundef null) #4
  br label %v4l2_subdev_get_try_format.exit.i62

v4l2_subdev_get_try_format.exit.i62:              ; preds = %do.end.i.i61, %if.then.i60.v4l2_subdev_get_try_format.exit.i62_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i61 ], [ %36, %if.then.i60.v4l2_subdev_get_try_format.exit.i62_crit_edge ]
  %41 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %42, i32 %spec.select.i.i
  br label %__prp_get_fmt.exit66

if.else.i64:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %format_mbus.i63 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  br label %__prp_get_fmt.exit66

__prp_get_fmt.exit66:                             ; preds = %if.else.i64, %v4l2_subdev_get_try_format.exit.i62
  %retval.0.i65 = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i62 ], [ %format_mbus.i63, %if.else.i64 ]
  %43 = call ptr @memcpy(ptr %retval.0.i65, ptr %format24, i32 48)
  br label %out

out:                                              ; preds = %__prp_get_fmt.exit66, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %__prp_get_fmt.exit66 ], [ -16, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv, align 4
  %call1 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd2 = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 2
  %call3 = tail call ptr @imx_media_pipeline_subdev(ptr noundef %sd2, i32 noundef 3072, i1 noundef zeroext true) #4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call3
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %src_sd = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_id, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %sink_sd_prpenc = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %sink_sd_prpenc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sink_sd_prpenc, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end15, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.else:                                          ; preds = %if.end
  %cond = icmp eq ptr %spec.select, null
  br i1 %cond, label %if.else.out_crit_edge, label %if.else.if.then17_crit_edge

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15:                                         ; preds = %if.then8
  %tobool16.not = icmp eq ptr %spec.select, null
  br i1 %tobool16.not, label %if.end15.out.sink.split_crit_edge, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.end15.out.sink.split_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.else.if.then17_crit_edge
  %grp_id18 = getelementptr inbounds %struct.v4l2_subdev, ptr %spec.select, i32 0, i32 10
  %10 = ptrtoint ptr %grp_id18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grp_id18, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %if.then17.out_crit_edge [
    i32 1024, label %if.then17.out.sink.split_crit_edge
    i32 2048, label %sw.bb19
  ]

if.then17.out.sink.split_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb19:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

out.sink.split:                                   ; preds = %sw.bb19, %if.then17.out.sink.split_crit_edge, %if.end15.out.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb19 ], [ 0, %if.then17.out.sink.split_crit_edge ], [ 0, %if.end15.out.sink.split_crit_edge ]
  %csi_id22 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %csi_id22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %csi_id22, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.then17.out_crit_edge, %if.else.out_crit_edge, %if.then8.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.then8.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -22, %if.then17.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_mbus_formats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_try_colorimetry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_pipeline_subdev(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_registered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #4
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %code, align 4, !annotation !41
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %denominator, align 4
  %call.i = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #4
  %format_mbus = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %code, align 4
  %call3 = call i32 @imx_media_init_mbus_fmt(ptr noundef %format_mbus, i32 noundef 640, i32 noundef 480, i32 noundef %8, i32 noundef 1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prp_link_setup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prp_link_setup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 2, i32 9
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %6 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity8, align 4
  %name9 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name9, align 4
  %entity10 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %10 = ptrtoint ptr %entity10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity10, align 4
  %name11 = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prp_link_setup.__UNIQUE_ID_ddebug315, ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %9, ptr noundef %13) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %entity13 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %14 = ptrtoint ptr %entity13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity13, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %flags23 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %16 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags23, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %and41 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool24.not, label %if.end40, label %if.then25

if.then25:                                        ; preds = %do.end
  %src_sd38 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  br i1 %tobool42.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then25
  %18 = ptrtoint ptr %src_sd38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sd38, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.end31, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end31:                                         ; preds = %if.then28
  %sink_sd_prpenc = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %sink_sd_prpenc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sink_sd_prpenc, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %land.lhs.true

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end31
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 10
  %22 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %grp_id, align 4
  %and33 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %24 = ptrtoint ptr %src_sd38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %15, ptr %src_sd38, align 4
  br label %out

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %src_sd38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %src_sd38, align 4
  br label %out

if.end40:                                         ; preds = %do.end
  %index64 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %26 = ptrtoint ptr %index64 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index64, align 4
  br i1 %tobool42.not, label %if.else63, label %if.then43

if.then43:                                        ; preds = %if.end40
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %27, label %if.then43.out_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb58
  ]

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb:                                            ; preds = %if.then43
  %sink_sd_prpenc44 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %sink_sd_prpenc44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sink_sd_prpenc44, align 4
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.end47, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end47:                                         ; preds = %sw.bb
  %src_sd48 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %src_sd48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src_sd48, align 4
  %tobool49.not = icmp eq ptr %32, null
  br i1 %tobool49.not, label %if.end47.if.end56_crit_edge, label %land.lhs.true50

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

land.lhs.true50:                                  ; preds = %if.end47
  %grp_id52 = getelementptr inbounds %struct.v4l2_subdev, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %grp_id52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %grp_id52, align 4
  %and53 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true50.if.end56_crit_edge, label %land.lhs.true50.out_crit_edge

land.lhs.true50.out_crit_edge:                    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true50.if.end56_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true50.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %35 = ptrtoint ptr %sink_sd_prpenc44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %15, ptr %sink_sd_prpenc44, align 4
  br label %out

sw.bb58:                                          ; preds = %if.then43
  %sink_sd_prpvf = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %sink_sd_prpvf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sink_sd_prpvf, align 4
  %tobool59.not = icmp eq ptr %37, null
  br i1 %tobool59.not, label %if.end61, label %sw.bb58.out_crit_edge

sw.bb58.out_crit_edge:                            ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end61:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %sink_sd_prpvf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %15, ptr %sink_sd_prpvf, align 4
  br label %out

if.else63:                                        ; preds = %if.end40
  %39 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %27, label %if.else63.out_crit_edge [
    i16 1, label %sw.bb66
    i16 2, label %sw.bb68
  ]

if.else63.out_crit_edge:                          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb66:                                          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  %sink_sd_prpenc67 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %sink_sd_prpenc67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %sink_sd_prpenc67, align 4
  br label %out

sw.bb68:                                          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  %sink_sd_prpvf69 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %sink_sd_prpvf69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %sink_sd_prpvf69, align 4
  br label %out

out:                                              ; preds = %sw.bb68, %sw.bb66, %if.else63.out_crit_edge, %if.end61, %sw.bb58.out_crit_edge, %if.end56, %land.lhs.true50.out_crit_edge, %sw.bb.out_crit_edge, %if.then43.out_crit_edge, %if.else, %if.end36, %land.lhs.true.out_crit_edge, %if.then28.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end36 ], [ 0, %if.else ], [ 0, %if.end61 ], [ 0, %if.end56 ], [ 0, %sw.bb68 ], [ 0, %sw.bb66 ], [ -16, %if.then28.out_crit_edge ], [ -22, %land.lhs.true.out_crit_edge ], [ -16, %sw.bb.out_crit_edge ], [ -22, %land.lhs.true50.out_crit_edge ], [ -16, %sw.bb58.out_crit_edge ], [ -22, %if.then43.out_crit_edge ], [ -22, %if.else63.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @imx_ic_prp_ops, !1, !"imx_ic_prp_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 508, i32 19}
!2 = !{ptr @prp_subdev_ops, !3, !"prp_subdev_ops", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 471, i32 37}
!4 = !{ptr @prp_video_ops, !5, !"prp_video_ops", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 460, i32 43}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 370, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @prp_s_stream.__UNIQUE_ID_ddebug316, !7, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!12 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @prp_pad_ops, !15, !"prp_pad_ops", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 452, i32 41}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!18 = !{ptr @prp_internal_ops, !19, !"prp_internal_ops", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 476, i32 46}
!20 = !{ptr @prp_entity_ops, !21, !"prp_entity_ops", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 466, i32 45}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 222, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @prp_link_setup.__UNIQUE_ID_ddebug315, !23, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!26 = !{ptr @prp_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/imx/imx-ic-prp.c", i32 489, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148766322, i64 2148766327, i64 2148766340, i64 2148766384, i64 2148766418, i64 2148766439}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"auto-init"}
