; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_rwpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_rwpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.96, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.anon.96 = type { %struct.spinlock, %struct.anon.97, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.97 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@vsp1_rwpf_pad_ops = dso_local constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @vsp1_rwpf_enum_mbus_code, ptr @vsp1_rwpf_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @vsp1_rwpf_set_format, ptr @vsp1_rwpf_get_selection, ptr @vsp1_rwpf_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vsp1_rwpf_init_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vsp1_rwpf:280:(&rwpf->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@vsp1_rwpf_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vsp1_rwpf_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@vsp1_rwpf_enum_mbus_code.codes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4109, i32 24577, i32 8215], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4109, i64 8215, i64 24577]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"vsp1_rwpf_pad_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 246, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 280, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"vsp1_rwpf_ctrl_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 274, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1016, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.19 = private constant [43 x i8] c"../drivers/media/platform/vsp1/vsp1_rwpf.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 34, i32 28 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @vsp1_rwpf_pad_ops, ptr @vsp1_rwpf_init_ctrls._key, ptr @.str, ptr @vsp1_rwpf_ctrl_ops, ptr @.str.1, ptr @vsp1_rwpf_enum_mbus_code.codes], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_rwpf_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_rwpf_init_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_rwpf_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_rwpf_enum_mbus_code.codes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_rwpf_get_crop(ptr nocapture noundef readonly %rwpf, ptr nocapture noundef readonly %sd_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.vsp1_entity, ptr %rwpf, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !20

entry.v4l2_subdev_get_try_crop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %entry.v4l2_subdev_get_try_crop.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %3, i32 0, i32 1
  ret ptr %try_crop.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsp1_rwpf_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [3 x i32], ptr @vsp1_rwpf_enum_mbus_code.codes, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_width = getelementptr i8, ptr %subdev, i32 480
  %0 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_width, align 4
  %max_height = getelementptr i8, ptr %subdev, i32 484
  %2 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_height, align 4
  %call1 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse, i32 noundef 1, i32 noundef 1, i32 noundef %1, i32 noundef %3) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then11 [
    i32 4109, label %if.end.if.end14_crit_edge
    i32 24577, label %if.end.if.end14_crit_edge131
    i32 8215, label %if.end.if.end14_crit_edge132
  ]

if.end.if.end14_crit_edge132:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge131:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8215, ptr %code, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge131, %if.end.if.end14_crit_edge132
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %call16 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %7) #5
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp18 = icmp eq i32 %9, 1
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code, align 4
  %code22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call16, i32 0, i32 2
  %12 = ptrtoint ptr %code22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code22, align 4
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %13 = call ptr @memcpy(ptr %format3, ptr %call16, i32 48)
  br label %done

if.end24:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format3, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %max_width = getelementptr i8, ptr %subdev, i32 480
  %17 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_width, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 %18)
  %20 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call16, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  %max_height = getelementptr i8, ptr %subdev, i32 484
  %24 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_height, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %height50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call16, i32 0, i32 1
  %27 = ptrtoint ptr %height50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height50, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call16, i32 0, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call16, i32 0, i32 4
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %colorspace, align 4
  %30 = call ptr @memcpy(ptr %format3, ptr %call16, i32 48)
  %type = getelementptr i8, ptr %subdev, i32 -52
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %32)
  %cmp53 = icmp eq i32 %32, 9
  br i1 %cmp53, label %if.then54, label %if.end24.if.end62_crit_edge

if.end24.if.end62_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then54:                                        ; preds = %if.end24
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %33 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i.i = icmp eq i16 %34, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then54.vsp1_rwpf_get_crop.exit_crit_edge, !prof !20

if.then54.vsp1_rwpf_get_crop.exit_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsp1_rwpf_get_crop.exit

do.end.i.i:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %vsp1_rwpf_get_crop.exit

vsp1_rwpf_get_crop.exit:                          ; preds = %do.end.i.i, %if.then54.vsp1_rwpf_get_crop.exit_crit_edge
  %35 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call2, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %try_crop.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %try_crop.i.i, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %36, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %top, align 4
  %39 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %format3, align 4
  %width58 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %36, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %width58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %width58, align 4
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  %height61 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %36, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %height61 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %height61, align 4
  br label %if.end62

if.end62:                                         ; preds = %vsp1_rwpf_get_crop.exit, %if.end24.if.end62_crit_edge
  %call64 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 1) #5
  %45 = call ptr @memcpy(ptr %call64, ptr %format3, i32 48)
  %rotate = getelementptr i8, ptr %subdev, i32 764
  %46 = ptrtoint ptr %rotate to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rotate, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool66.not = icmp eq i8 %47, 0
  br i1 %tobool66.not, label %if.end62.done_crit_edge, label %if.then67

if.end62.done_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %50 = ptrtoint ptr %call64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call64, align 4
  %51 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %format3, align 4
  %height73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call64, i32 0, i32 1
  %53 = ptrtoint ptr %height73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height73, align 4
  br label %done

done:                                             ; preds = %if.then67, %if.end62.done_crit_edge, %if.then19, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then67 ], [ 0, %if.end62.done_crit_edge ], [ -22, %entry.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_get_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %type = getelementptr i8, ptr %subdev, i32 -52
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  %call4 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %5) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end6

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end6:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %7, label %if.end6.done_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
  ]

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

sw.bb:                                            ; preds = %if.end6
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.i = icmp eq i16 %10, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.vsp1_rwpf_get_crop.exit_crit_edge, !prof !20

sw.bb.vsp1_rwpf_get_crop.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsp1_rwpf_get_crop.exit

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %vsp1_rwpf_get_crop.exit

vsp1_rwpf_get_crop.exit:                          ; preds = %do.end.i.i, %sw.bb.vsp1_rwpf_get_crop.exit_crit_edge
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call4, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %12, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %r, ptr %try_crop.i.i, i32 16)
  br label %done

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call4, i32 noundef 0) #5
  %r11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %14 = ptrtoint ptr %r11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %r11, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call10, align 4
  %width14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width14, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call10, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height16, align 4
  br label %done

done:                                             ; preds = %sw.bb8, %vsp1_rwpf_get_crop.exit, %if.end6.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %vsp1_rwpf_get_crop.exit ], [ -22, %if.end.done_crit_edge ], [ -22, %if.end6.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_rwpf_set_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %type = getelementptr i8, ptr %subdev, i32 -52
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %7) #5
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end4.done_crit_edge, label %if.end9

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end9:                                          ; preds = %if.end4
  %call11 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call7, i32 noundef 0) #5
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8215, i32 %9)
  %cmp12 = icmp eq i32 %9, 8215
  br i1 %cmp12, label %if.then13, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %add = add i32 %11, 1
  %and = and i32 %add, -2
  store i32 %and, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top, align 4
  %add17 = add i32 %13, 1
  %and18 = and i32 %add17, -2
  store i32 %and18, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %and22 = and i32 %15, -2
  store i32 %and22, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %and26 = and i32 %17, -2
  store i32 %and26, ptr %height, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then13, %if.end9.if.end29_crit_edge
  %r30 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %18 = ptrtoint ptr %r30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r30, align 4
  %20 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call11, align 4
  %sub = add i32 %21, -2
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub)
  %23 = ptrtoint ptr %r30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %r30, align 4
  %top37 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %top37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top37, align 4
  %height38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 1
  %26 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height38, align 4
  %sub39 = add i32 %27, -2
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %sub39)
  %29 = ptrtoint ptr %top37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %top37, align 4
  %width49 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %width49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width49, align 4
  %32 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call11, align 4
  %sub53 = sub i32 %33, %22
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %sub53)
  %35 = ptrtoint ptr %width49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %width49, align 4
  %height63 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %height63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height63, align 4
  %38 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height38, align 4
  %sub67 = sub i32 %39, %28
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %sub67)
  %41 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %height63, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %42 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.i.i = icmp eq i16 %43, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end29.vsp1_rwpf_get_crop.exit_crit_edge, !prof !20

if.end29.vsp1_rwpf_get_crop.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %vsp1_rwpf_get_crop.exit

do.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %vsp1_rwpf_get_crop.exit

vsp1_rwpf_get_crop.exit:                          ; preds = %do.end.i.i, %if.end29.vsp1_rwpf_get_crop.exit_crit_edge
  %44 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %45, i32 0, i32 1
  %46 = call ptr @memcpy(ptr %try_crop.i.i, ptr %r30, i32 16)
  %call79 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call7, i32 noundef 1) #5
  %width80 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %45, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %width80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width80, align 4
  %49 = ptrtoint ptr %call79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %call79, align 4
  %height82 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %45, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %height82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height82, align 4
  %height83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call79, i32 0, i32 1
  %52 = ptrtoint ptr %height83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %height83, align 4
  br label %done

done:                                             ; preds = %vsp1_rwpf_get_crop.exit, %if.end4.done_crit_edge
  %ret.0 = phi i32 [ 0, %vsp1_rwpf_get_crop.exit ], [ -22, %if.end4.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef %rwpf, i32 noundef %ncontrols) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 1
  %add = add i32 %ncontrols, 1
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef %add, ptr noundef nonnull @vsp1_rwpf_init_ctrls._key, ptr noundef nonnull @.str) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @vsp1_rwpf_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #5
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %rwpf, i32 0, i32 13, i32 8
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 1, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsp1_rwpf_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963817, i32 %1)
  %cond = icmp eq i32 %1, 9963817
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %alpha = getelementptr i8, ptr %3, i32 396
  %6 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %alpha, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @vsp1_rwpf_pad_ops, !1, !"vsp1_rwpf_pad_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_rwpf.c", i32 246, i32 34}
!2 = !{ptr @vsp1_rwpf_init_ctrls._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_rwpf.c", i32 280, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/media/v4l2-subdev.h", i32 1016, i32 6}
!7 = !{ptr @vsp1_rwpf_enum_mbus_code.codes, !8, !"codes", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_rwpf.c", i32 34, i32 28}
!9 = !{ptr @vsp1_rwpf_ctrl_ops, !10, !"vsp1_rwpf_ctrl_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_rwpf.c", i32 274, i32 35}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i8 0, i8 2}
