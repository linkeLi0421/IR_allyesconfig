; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-scaler.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-scaler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vimc_ent_type = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.86, i16, i16, i16, [10 x i16] }
%union.anon.86 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vimc_sca_device = type { %struct.vimc_ent_device, %struct.v4l2_subdev, %struct.v4l2_rect, [2 x %struct.v4l2_mbus_framefmt], ptr, i32, [2 x %struct.media_pad] }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vimc_pix_map = type { [8 x i32], i32, i32, i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@vimc_sca_type = dso_local global { %struct.vimc_ent_type, [20 x i8] } { %struct.vimc_ent_type { ptr @vimc_sca_add, ptr null, ptr @vimc_sca_release }, [20 x i8] zeroinitializer }, align 32
@vimc_sca_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @vimc_sca_video_ops, ptr null, ptr null, ptr null, ptr @vimc_sca_pad_ops }, [32 x i8] zeroinitializer }, align 32
@fmt_default = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 4106, i32 1, i32 8, %union.anon.86 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@crop_rect_default = internal constant { %struct.v4l2_rect, [16 x i8] } { %struct.v4l2_rect { i32 0, i32 0, i32 640, i32 480 }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vimc_sca_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_sca_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vimc_sca_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vimc_sca_init_cfg, ptr @vimc_sca_enum_mbus_code, ptr @vimc_sca_enum_frame_size, ptr null, ptr @vimc_sca_get_fmt, ptr @vimc_sca_set_fmt, ptr @vimc_sca_get_selection, ptr @vimc_sca_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"vimc_sca_type\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 441, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"vimc_sca_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 346, i32 37 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"fmt_default\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 38, i32 40 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"crop_rect_default\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 46, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"vimc_sca_video_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 342, i32 43 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"vimc_sca_pad_ops\00", align 1
@___asan_gen_.18 = private constant [49 x i8] c"../drivers/media/test-drivers/vimc/vimc-scaler.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 295, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 998, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @vimc_sca_type, ptr @vimc_sca_ops, ptr @fmt_default, ptr @crop_rect_default, ptr @vimc_sca_video_ops, ptr @vimc_sca_pad_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sca_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sca_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crop_rect_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sca_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_sca_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_sca_add(ptr noundef %vimc, ptr noundef %vcfg_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 396) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev1 = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 3
  %pads = getelementptr inbounds %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 6
  %flags = getelementptr inbounds %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %flags, align 8
  %flags5 = getelementptr %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 4
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %flags5, align 8
  %sd = getelementptr inbounds %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 @vimc_ent_sd_register(ptr noundef nonnull %call7.i.i, ptr noundef %sd, ptr noundef %v4l2_dev1, ptr noundef %vcfg_name, i32 noundef 16389, i16 noundef zeroext 2, ptr noundef %pads, ptr noundef nonnull @vimc_sca_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %3 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %process_frame = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %process_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vimc_sca_process_frame, ptr %process_frame, align 8
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i, align 8
  %fmt = getelementptr inbounds %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %fmt, ptr @fmt_default, i32 48)
  %arrayidx17 = getelementptr %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = call ptr @memcpy(ptr %arrayidx17, ptr @fmt_default, i32 48)
  %crop_rect = getelementptr inbounds %struct.vimc_sca_device, ptr %call7.i.i, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %crop_rect, ptr @crop_rect_default, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.then9 ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_sca_release(ptr noundef %ved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ved) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_ent_sd_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_sca_process_frame(ptr nocapture noundef readonly %ved, ptr nocapture noundef readonly %sink_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src_frame = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 4
  %0 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_frame, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.vimc_sca_device, ptr %ved, i32 0, i32 3, i32 1
  %crop_rect.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 2
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt.i, align 4
  %height.i = getelementptr %struct.vimc_sca_device, ptr %ved, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47.not.i = icmp eq i32 %5, 0
  br i1 %cmp47.not.i, label %if.end.vimc_sca_fill_src_frame.exit_crit_edge, label %for.body.lr.ph.i

if.end.vimc_sca_fill_src_frame.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vimc_sca_fill_src_frame.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %height3.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 2, i32 3
  %top.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 2, i32 1
  %bpp.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 5
  %width11.i = getelementptr inbounds %struct.vimc_sca_device, ptr %ved, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi i32 [ %5, %for.body.lr.ph.i ], [ %27, %for.end.i.for.body.i_crit_edge ]
  %walker.049.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %walker.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %src_y.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc23.i, %for.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %height3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height3.i, align 4
  %mul.i = mul i32 %8, %src_y.048.i
  %div.i = udiv i32 %mul.i, %6
  %9 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top.i, align 4
  %add.i = add i32 %10, %div.i
  %mul5.i = mul i32 %add.i, %3
  %11 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpp.i, align 4
  %mul6.i = mul i32 %mul5.i, %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp944.not.i = icmp eq i32 %14, 0
  br i1 %cmp944.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body10.i_crit_edge

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %15 = phi i32 [ %25, %for.body10.i.for.body10.i_crit_edge ], [ %14, %for.body.i.for.body10.i_crit_edge ]
  %src_x.046.i = phi i32 [ %inc.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.body.i.for.body10.i_crit_edge ]
  %walker.145.i = phi ptr [ %add.ptr.i, %for.body10.i.for.body10.i_crit_edge ], [ %walker.049.i, %for.body.i.for.body10.i_crit_edge ]
  %16 = ptrtoint ptr %width11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width11.i, align 4
  %mul12.i = mul i32 %17, %src_x.046.i
  %div14.i = udiv i32 %mul12.i, %15
  %18 = ptrtoint ptr %crop_rect.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crop_rect.i, align 4
  %add15.i = add i32 %19, %div14.i
  %20 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp.i, align 4
  %mul17.i = mul i32 %add15.i, %21
  %add18.i = add i32 %mul17.i, %mul6.i
  %arrayidx19.i = getelementptr i8, ptr %sink_frame, i32 %add18.i
  %22 = call ptr @memcpy(ptr %walker.145.i, ptr %arrayidx19.i, i32 %21)
  %23 = load i32, ptr %bpp.i, align 4
  %add.ptr.i = getelementptr i8, ptr %walker.145.i, i32 %23
  %inc.i = add nuw i32 %src_x.046.i, 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %25
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.for.end.i_crit_edge

for.body10.i.for.end.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.end.i:                                        ; preds = %for.body10.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %walker.1.lcssa.i = phi ptr [ %walker.049.i, %for.body.i.for.end.i_crit_edge ], [ %add.ptr.i, %for.body10.i.for.end.i_crit_edge ]
  %inc23.i = add nuw i32 %src_y.048.i, 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %cmp.i = icmp ult i32 %inc23.i, %27
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.vimc_sca_fill_src_frame.exit_crit_edge

for.end.i.vimc_sca_fill_src_frame.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vimc_sca_fill_src_frame.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vimc_sca_fill_src_frame.exit:                     ; preds = %for.end.i.vimc_sca_fill_src_frame.exit_crit_edge, %if.end.vimc_sca_fill_src_frame.exit_crit_edge
  %28 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src_frame, align 4
  br label %cleanup

cleanup:                                          ; preds = %vimc_sca_fill_src_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %vimc_sca_fill_src_frame.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %src_frame18 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %src_frame18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_frame18, align 4
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool19.not, label %cleanup, label %if.then.cleanup25_crit_edge

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

cleanup:                                          ; preds = %if.then
  %code = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %call3 = tail call ptr @vimc_pix_map_by_code(i32 noundef %5) #6
  %bpp = getelementptr inbounds %struct.vimc_pix_map, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpp, align 4
  %bpp4 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bpp4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bpp4, align 4
  %arrayidx6 = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  %height = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %mul = mul i32 %10, %7
  %mul10 = mul i32 %mul, %12
  %call11 = tail call noalias ptr @vmalloc(i32 noundef %mul10) #10
  %13 = ptrtoint ptr %src_frame18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %src_frame18, align 4
  %tobool14.not.not = icmp eq ptr %call11, null
  br i1 %tobool14.not.not, label %cleanup.cleanup25_crit_edge, label %cleanup.if.end24_crit_edge

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.else:                                          ; preds = %entry
  br i1 %tobool19.not, label %if.else.cleanup25_crit_edge, label %if.end21

if.else.cleanup25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vfree(ptr noundef nonnull %3) #6
  %14 = ptrtoint ptr %src_frame18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %src_frame18, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %cleanup.if.end24_crit_edge
  br label %cleanup25

cleanup25:                                        ; preds = %if.end24, %if.else.cleanup25_crit_edge, %cleanup.cleanup25_crit_edge, %if.then.cleanup25_crit_edge
  %retval.1 = phi i32 [ 0, %if.end24 ], [ -12, %cleanup.cleanup25_crit_edge ], [ 0, %if.else.cleanup25_crit_edge ], [ 0, %if.then.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp11.not = icmp eq i16 %1, 0
  br i1 %cmp11.not, label %entry.do.end.i9_crit_edge, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !25

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  br label %v4l2_subdev_get_try_format.exit

entry.do.end.i9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i9

v4l2_subdev_get_try_format.exit:                  ; preds = %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %i.012 = phi i32 [ %inc, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge ], [ 0, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 %i.012
  %4 = call ptr @memcpy(ptr %arrayidx.i, ptr @fmt_default, i32 48)
  %inc = add nuw nsw i32 %i.012, 1
  %5 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge, label %for.end

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit

for.end:                                          ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %phi.cmp = icmp eq i16 %6, 0
  br i1 %phi.cmp, label %for.end.do.end.i9_crit_edge, label %for.end.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !26

for.end.v4l2_subdev_get_try_crop.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit

for.end.do.end.i9_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %for.end.do.end.i9_crit_edge, %entry.do.end.i9_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i9, %for.end.v4l2_subdev_get_try_crop.exit_crit_edge
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %8, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %try_crop.i, ptr @crop_rect_default, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call i32 @vimc_mbus_code_by_index(i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @vimc_pix_map_by_code(i32 noundef %call) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %bayer = getelementptr inbounds %struct.vimc_pix_map, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %bayer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bayer, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %code6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %code6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %call = tail call ptr @vimc_pix_map_by_code(i32 noundef %3) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %bayer = getelementptr inbounds %struct.vimc_pix_map, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %bayer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bayer, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2160, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !28

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %vimc_sca_pad_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 %3
  br label %vimc_sca_pad_format.exit

vimc_sca_pad_format.exit:                         ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format1, ptr %retval.0.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %src_frame = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_frame, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %pad171 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %6 = ptrtoint ptr %pad171 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad171, align 4
  br label %if.else.i

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %9, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !28

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %9, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %12 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %13, i32 %spec.select.i.i
  br label %vimc_sca_pad_format.exit

if.else.i:                                        ; preds = %if.end.if.else.i_crit_edge, %if.end.thread
  %14 = phi i32 [ %7, %if.end.thread ], [ %9, %if.end.if.else.i_crit_edge ]
  %pad174 = phi ptr [ %pad171, %if.end.thread ], [ %pad, %if.end.if.else.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 %14
  br label %vimc_sca_pad_format.exit

vimc_sca_pad_format.exit:                         ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %pad173 = phi ptr [ %pad, %v4l2_subdev_get_try_format.exit.i ], [ %pad174, %if.else.i ]
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %15 = ptrtoint ptr %pad173 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4 = icmp eq i32 %16, 0
  br i1 %cmp4, label %if.then5, label %vimc_sca_pad_format.exit.if.end51_crit_edge

vimc_sca_pad_format.exit.if.end51_crit_edge:      ; preds = %vimc_sca_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then5:                                         ; preds = %vimc_sca_pad_format.exit
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code, align 4
  %call7 = tail call ptr @vimc_pix_map_by_code(i32 noundef %18) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end16_crit_edge, label %land.lhs.true9

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.then5
  %bayer = getelementptr inbounds %struct.vimc_pix_map, ptr %call7, i32 0, i32 3
  %19 = ptrtoint ptr %bayer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bayer, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true9.if.end16_crit_edge

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true9.if.end16_crit_edge, %if.then5.if.end16_crit_edge
  %.sink = phi i32 [ %22, %if.then11 ], [ 4106, %land.lhs.true9.if.end16_crit_edge ], [ 4106, %if.then5.if.end16_crit_edge ]
  %code15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %code15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %code15, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %colorspace18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace18, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 4
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %30, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %quantization to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %quantization, align 2
  %quantization21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 6
  %34 = ptrtoint ptr %quantization21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %quantization21, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xfer_func, align 4
  %xfer_func23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %37 = ptrtoint ptr %xfer_func23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %xfer_func23, align 4
  %38 = add i32 %25, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %38)
  %39 = icmp ult i32 %38, -12
  br i1 %39, label %if.end43.thread, label %if.end32

if.end43.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call ptr @memset(ptr %colorspace18, i32 0, i32 10)
  br label %if.end51

if.end32:                                         ; preds = %if.end16
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %41)
  %.pr = load i16, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %.pr)
  %cmp33 = icmp ugt i16 %.pr, 8
  br i1 %cmp33, label %if.then35, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %30, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %43 = ptrtoint ptr %quantization21 to i32
  call void @__asan_load2_noabort(i32 %43)
  %.pr176 = load i16, ptr %quantization21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.pr176)
  %cmp39 = icmp ugt i16 %.pr176, 2
  br i1 %cmp39, label %if.then41, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %quantization21 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %quantization21, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  %45 = ptrtoint ptr %xfer_func23 to i32
  call void @__asan_load2_noabort(i32 %45)
  %.pr178 = load i16, ptr %xfer_func23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %.pr178)
  %cmp46 = icmp ugt i16 %.pr178, 7
  br i1 %cmp46, label %if.then48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %xfer_func23 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %xfer_func23, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge, %if.end43.thread, %vimc_sca_pad_format.exit.if.end51_crit_edge
  %format52 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %47 = ptrtoint ptr %format52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %format52, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %48, i32 16)
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 4096)
  %and = and i32 %50, 8190
  %51 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 16)
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 2160)
  %and78 = and i32 %55, 4094
  %height79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %height79 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and78, ptr %height79, align 4
  %57 = ptrtoint ptr %pad173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pad173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp81 = icmp eq i32 %58, 0
  br i1 %cmp81, label %if.then83, label %if.end51.if.end92_crit_edge

if.end51.if.end92_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then83:                                        ; preds = %if.end51
  %59 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i152 = icmp eq i32 %60, 0
  br i1 %cmp.i152, label %if.then.i154, label %if.else.i156

if.then.i154:                                     ; preds = %if.then83
  %num_pads.i.i153 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %61 = ptrtoint ptr %num_pads.i.i153 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_pads.i.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp.i.i = icmp eq i16 %62, 0
  br i1 %cmp.i.i, label %do.end.i.i155, label %if.then.i154.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !26

if.then.i154.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i155:                                    ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i155, %if.then.i154.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %63 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %64, i32 0, i32 1
  br label %vimc_sca_pad_crop.exit

if.else.i156:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %crop_rect.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 2
  br label %vimc_sca_pad_crop.exit

vimc_sca_pad_crop.exit:                           ; preds = %if.else.i156, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i157 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop_rect.i, %if.else.i156 ]
  %65 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %retval.0.i, align 4
  %width87 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i157, i32 0, i32 2
  %67 = ptrtoint ptr %width87 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %width87, align 4
  %68 = ptrtoint ptr %height79 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height79, align 4
  %height89 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i157, i32 0, i32 3
  %70 = ptrtoint ptr %height89 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %height89, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i157, i32 0, i32 1
  %71 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %top, align 4
  %72 = ptrtoint ptr %retval.0.i157 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %retval.0.i157, align 4
  %73 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i158 = icmp eq i32 %74, 0
  br i1 %cmp.i158, label %if.then.i162, label %if.else.i168

if.then.i162:                                     ; preds = %vimc_sca_pad_crop.exit
  %num_pads.i.i159 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %75 = ptrtoint ptr %num_pads.i.i159 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_pads.i.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %76)
  %cmp.not.i.i161 = icmp ugt i16 %76, 1
  br i1 %cmp.not.i.i161, label %if.then.i162.v4l2_subdev_get_try_format.exit.i166_crit_edge, label %do.end.i.i163, !prof !28

if.then.i162.v4l2_subdev_get_try_format.exit.i166_crit_edge: ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i166

do.end.i.i163:                                    ; preds = %if.then.i162
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i166

v4l2_subdev_get_try_format.exit.i166:             ; preds = %do.end.i.i163, %if.then.i162.v4l2_subdev_get_try_format.exit.i166_crit_edge
  %spec.select.i.i164 = phi i32 [ 0, %do.end.i.i163 ], [ 1, %if.then.i162.v4l2_subdev_get_try_format.exit.i166_crit_edge ]
  %77 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i165 = getelementptr %struct.v4l2_subdev_pad_config, ptr %78, i32 %spec.select.i.i164
  br label %vimc_sca_pad_format.exit170

if.else.i168:                                     ; preds = %vimc_sca_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i167 = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 1
  br label %vimc_sca_pad_format.exit170

vimc_sca_pad_format.exit170:                      ; preds = %if.else.i168, %v4l2_subdev_get_try_format.exit.i166
  %retval.0.i169 = phi ptr [ %arrayidx.i.i165, %v4l2_subdev_get_try_format.exit.i166 ], [ %arrayidx.i167, %if.else.i168 ]
  %79 = call ptr @memcpy(ptr %retval.0.i169, ptr %retval.0.i, i32 48)
  br label %if.end92

if.end92:                                         ; preds = %vimc_sca_pad_format.exit170, %if.end51.if.end92_crit_edge
  %80 = call ptr @memcpy(ptr %format52, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %num_pads.i.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.i = icmp eq i16 %10, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !26

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %12, i32 0, i32 1
  br label %vimc_sca_pad_crop.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %crop_rect.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 2
  br label %vimc_sca_pad_crop.exit

vimc_sca_pad_crop.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop_rect.i, %if.else.i ]
  %13 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %14 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i14 = icmp eq i32 %15, 0
  br i1 %cmp.i14, label %if.then.i16, label %if.else.i18

if.then.i16:                                      ; preds = %sw.bb2
  %num_pads.i.i15 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i.i15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i.i.not = icmp eq i16 %17, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i17, label %if.then.i16.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !26

if.then.i16.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i17:                                     ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i17, %if.then.i16.v4l2_subdev_get_try_format.exit.i_crit_edge
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  br label %vimc_sca_pad_format.exit

if.else.i18:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 0
  br label %vimc_sca_pad_format.exit

vimc_sca_pad_format.exit:                         ; preds = %if.else.i18, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i19 = phi ptr [ %19, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i18 ]
  %r5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %20 = ptrtoint ptr %retval.0.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %retval.0.i19, align 4, !noalias !29
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i19, i32 0, i32 1
  %22 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height2.i, align 4, !noalias !29
  %24 = ptrtoint ptr %r5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %r5, align 4
  %tmp.sroa.4.0.r5.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %tmp.sroa.4.0.r5.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tmp.sroa.4.0.r5.sroa_idx, align 4
  %tmp.sroa.5.0.r5.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %tmp.sroa.5.0.r5.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %tmp.sroa.5.0.r5.sroa_idx, align 4
  %tmp.sroa.6.0.r5.sroa_idx = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %tmp.sroa.6.0.r5.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %tmp.sroa.6.0.r5.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %vimc_sca_pad_format.exit, %vimc_sca_pad_crop.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %vimc_sca_pad_format.exit ], [ 0, %vimc_sca_pad_crop.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_sca_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %7, label %if.end.if.else.i_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %if.then.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true:                                    ; preds = %if.end
  %src_frame = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %src_frame to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_frame, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.if.else.i_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.else.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.i = icmp eq i16 %12, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !26

if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %14, i32 0, i32 1
  br label %vimc_sca_pad_crop.exit

if.else.i:                                        ; preds = %land.lhs.true.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %crop_rect.i = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 2
  br label %vimc_sca_pad_crop.exit

vimc_sca_pad_crop.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop_rect.i, %if.else.i ]
  %15 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i21 = icmp eq i32 %16, 0
  br i1 %cmp.i21, label %if.then.i23, label %if.else.i25

if.then.i23:                                      ; preds = %vimc_sca_pad_crop.exit
  %num_pads.i.i22 = getelementptr inbounds %struct.vimc_sca_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.i.not = icmp eq i16 %18, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i24, label %if.then.i23.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !26

if.then.i23.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i24:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i24, %if.then.i23.v4l2_subdev_get_try_format.exit.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %vimc_sca_pad_format.exit

if.else.i25:                                      ; preds = %vimc_sca_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vimc_sca_device, ptr %1, i32 0, i32 3, i32 0
  br label %vimc_sca_pad_format.exit

vimc_sca_pad_format.exit:                         ; preds = %if.else.i25, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i26 = phi ptr [ %20, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i25 ]
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %21 = ptrtoint ptr %retval.0.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i26, align 4, !noalias !32
  %height2.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i26, i32 0, i32 1
  %23 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height2.i.i, align 4, !noalias !32
  %width.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp.i.i27 = icmp ult i32 %26, 16
  br i1 %cmp.i.i27, label %if.then.i.i, label %vimc_sca_pad_format.exit.if.end.i.i_crit_edge

vimc_sca_pad_format.exit.if.end.i.i_crit_edge:    ; preds = %vimc_sca_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %vimc_sca_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %width.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %vimc_sca_pad_format.exit.if.end.i.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %cmp5.i.i = icmp ult i32 %29, 16
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_rect_set_min_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %height.i.i, align 4
  br label %v4l2_rect_set_min_size.exit.i

v4l2_rect_set_min_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_min_size.exit.i_crit_edge
  %31 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %22)
  %cmp.i.i.i = icmp ugt i32 %32, %22
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge

v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge: ; preds = %v4l2_rect_set_min_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %v4l2_rect_set_min_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %22, ptr %width.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %v4l2_rect_set_min_size.exit.i.if.end.i.i.i_crit_edge
  %34 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %24)
  %cmp5.i.i.i = icmp ugt i32 %35, %24
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge

if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_rect_set_max_size.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %24, ptr %height.i.i, align 4
  br label %v4l2_rect_set_max_size.exit.i.i

v4l2_rect_set_max_size.exit.i.i:                  ; preds = %if.then6.i.i.i, %if.end.i.i.i.v4l2_rect_set_max_size.exit.i.i_crit_edge
  %37 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i2.i = icmp slt i32 %38, 0
  br i1 %cmp.i2.i, label %if.then.i3.i, label %v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge

v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i5.i

if.then.i3.i:                                     ; preds = %v4l2_rect_set_max_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %r, align 4
  br label %if.end.i5.i

if.end.i5.i:                                      ; preds = %if.then.i3.i, %v4l2_rect_set_max_size.exit.i.i.if.end.i5.i_crit_edge
  %top.i.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp5.i4.i = icmp slt i32 %41, 0
  br i1 %cmp5.i4.i, label %if.then6.i6.i, label %if.end.i5.i.if.end9.i.i_crit_edge

if.end.i5.i.if.end9.i.i_crit_edge:                ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then6.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %top.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i6.i, %if.end.i5.i.if.end9.i.i_crit_edge
  %43 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r, align 4
  %45 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i.i, align 4
  %add.i.i = add i32 %46, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %22)
  %cmp14.i.i = icmp ugt i32 %add.i.i, %22
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end9.i.i.if.end21.i.i_crit_edge

if.end9.i.i.if.end21.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i

if.then15.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %22, %46
  %47 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i.i, ptr %r, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then15.i.i, %if.end9.i.i.if.end21.i.i_crit_edge
  %48 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top.i.i, align 4
  %50 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i.i, align 4
  %add23.i.i = add i32 %51, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i.i, i32 %24)
  %cmp27.i.i = icmp ugt i32 %add23.i.i, %24
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end21.i.i.vimc_sca_adjust_sink_crop.exit_crit_edge

if.end21.i.i.vimc_sca_adjust_sink_crop.exit_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vimc_sca_adjust_sink_crop.exit

if.then28.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub33.i.i = sub i32 %24, %51
  %52 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub33.i.i, ptr %top.i.i, align 4
  br label %vimc_sca_adjust_sink_crop.exit

vimc_sca_adjust_sink_crop.exit:                   ; preds = %if.then28.i.i, %if.end21.i.i.vimc_sca_adjust_sink_crop.exit_crit_edge
  %53 = call ptr @memcpy(ptr %retval.0.i, ptr %r, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %vimc_sca_adjust_sink_crop.exit, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vimc_sca_adjust_sink_crop.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_mbus_code_by_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @vimc_sca_type, !1, !"vimc_sca_type", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 441, i32 22}
!2 = !{ptr @vimc_sca_ops, !3, !"vimc_sca_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 346, i32 37}
!4 = !{ptr @vimc_sca_video_ops, !5, !"vimc_sca_video_ops", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 342, i32 43}
!6 = !{ptr @vimc_sca_pad_ops, !7, !"vimc_sca_pad_ops", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 295, i32 41}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!10 = distinct !{null, !11, !"crop_rect_min", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 53, i32 31}
!12 = !{ptr @fmt_default, !13, !"fmt_default", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 38, i32 40}
!14 = !{ptr @crop_rect_default, !15, !"crop_rect_default", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vimc/vimc-scaler.c", i32 46, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1073205, i32 2146410443}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i8 0, i8 2}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!30}
!30 = distinct !{!30, !31, !"vimc_sca_get_crop_bound_sink: %agg.result"}
!31 = distinct !{!31, !"vimc_sca_get_crop_bound_sink"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"vimc_sca_get_crop_bound_sink: %agg.result"}
!34 = distinct !{!34, !"vimc_sca_get_crop_bound_sink"}
