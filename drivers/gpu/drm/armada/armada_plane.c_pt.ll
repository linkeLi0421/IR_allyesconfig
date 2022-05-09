; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.armada_gem_object = type { %struct.drm_gem_object, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.armada_plane_state = type { %struct.drm_plane_state, i32, i32, i32, [2 x [3 x i32]], [3 x i16], i8 }
%struct.armada_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr, [2 x %struct.anon.89], i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i8, ptr, [32 x %struct.armada_regs], ptr, i32 }
%struct.anon.89 = type { i32, i32, i32 }
%struct.armada_regs = type { i32, i32, i32 }
%struct.armada_framebuffer = type { %struct.drm_framebuffer, i8, i8 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pitch %u x %d y %d bpp %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/armada/armada_plane.c\00", [58 x i8] zeroinitializer }, align 32
@armada_primary_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @armada_drm_plane_atomic_check, ptr @armada_drm_primary_plane_atomic_update, ptr @armada_drm_primary_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@armada_primary_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_primary_helper_destroy, ptr @armada_plane_reset, ptr null, ptr @armada_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@armada_primary_formats = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1498831189, i32 1448695129, i32 1498765654, i32 1431918169, i32 875713089, i32 875708993, i32 875713112, i32 875709016, i32 875710290, i32 875710274, i32 892424769, i32 892420673, i32 909199186, i32 909199170], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[PLANE:%d:%s]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[PLANE:%d:%s] is on [CRTC:%d:%s] with [FB:%d] visible %u->%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[PLANE:%d:%s] was on [CRTC:%d:%s] with [FB:%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 48, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 92, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [34 x i8] c"armada_primary_plane_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 257, i32 44 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"armada_primary_plane_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 288, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"armada_primary_formats\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 20, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 148, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 153, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [41 x i8] c"../drivers/gpu/drm/armada/armada_plane.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 240, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @armada_primary_plane_helper_funcs, ptr @armada_primary_plane_funcs, ptr @armada_primary_formats, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_primary_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_primary_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_primary_formats to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armada_drm_plane_calc(ptr nocapture noundef readonly %state, ptr nocapture noundef %addrs, ptr nocapture noundef %pitches, i1 noundef zeroext %interlaced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %format2 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format2, align 8
  %num_planes3 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_planes3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes3, align 1
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src, align 4
  %shr = ashr i32 %7, 16
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y1, align 4
  %shr5 = ashr i32 %9, 16
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  %dev_addr = getelementptr inbounds %struct.armada_gem_object, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr, align 8
  %pitches6 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %pitches6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitches6, align 8
  %16 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 2
  %conv9 = zext i8 %18 to i32
  %mul = shl nuw nsw i32 %conv9, 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %shr, i32 noundef %shr5, i32 noundef %mul) #4
  %19 = tail call i8 @llvm.umin.i8(i8 %5, i8 3)
  %20 = zext i8 %19 to i32
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets, align 8
  %add = add i32 %22, %13
  %23 = ptrtoint ptr %pitches6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pitches6, align 8
  %mul14 = mul i32 %24, %shr5
  %add15 = add i32 %add, %mul14
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %16, align 2
  %conv17 = zext i8 %26 to i32
  %mul18 = mul nsw i32 %shr, %conv17
  %add19 = add i32 %add15, %mul18
  %27 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add19, ptr %addrs, align 4
  %28 = load i32, ptr %pitches6, align 8
  %conv24 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %pitches to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv24, ptr %pitches, align 2
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vsub, align 1
  %conv26 = zext i8 %31 to i32
  %div = udiv i32 %shr5, %conv26
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hsub, align 2
  %conv27 = zext i8 %33 to i32
  %div28 = udiv i32 %shr, %conv27
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp29144 = icmp ugt i8 %19, 1
  br i1 %cmp29144, label %entry.for.body_crit_edge, label %entry.for.body51.preheader_crit_edge

entry.for.body51.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body51.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond48.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp49146.not = icmp ugt i8 %5, 2
  br i1 %cmp49146.not, label %for.cond48.preheader.for.end57_crit_edge, label %for.cond48.preheader.for.body51.preheader_crit_edge

for.cond48.preheader.for.body51.preheader_crit_edge: ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body51.preheader

for.cond48.preheader.for.end57_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end57

for.body51.preheader:                             ; preds = %for.cond48.preheader.for.body51.preheader_crit_edge, %entry.for.body51.preheader_crit_edge
  %i.1147.ph = phi i32 [ 1, %entry.for.body51.preheader_crit_edge ], [ %20, %for.cond48.preheader.for.body51.preheader_crit_edge ]
  br label %for.body51

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0145 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 %i.0145
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %35, %13
  %arrayidx35 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 %i.0145
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35, align 4
  %mul36 = mul i32 %37, %div
  %add37 = add i32 %add33, %mul36
  %arrayidx38 = getelementptr [4 x i8], ptr %16, i32 0, i32 %i.0145
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %39 to i32
  %mul40 = mul i32 %div28, %conv39
  %add41 = add i32 %add37, %mul40
  %arrayidx43 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 %i.0145
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add41, ptr %arrayidx43, align 4
  %41 = load i32, ptr %arrayidx35, align 4
  %conv46 = trunc i32 %41 to i16
  %arrayidx47 = getelementptr i16, ptr %pitches, i32 %i.0145
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv46, ptr %arrayidx47, align 2
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.cond48.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader
  %i.1147 = phi i32 [ %inc56, %for.body51.for.body51_crit_edge ], [ %i.1147.ph, %for.body51.preheader ]
  %arrayidx53 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 %i.1147
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr i16, ptr %pitches, i32 %i.1147
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %arrayidx54, align 2
  %inc56 = add nuw nsw i32 %i.1147, 1
  %exitcond151.not = icmp eq i32 %inc56, 3
  br i1 %exitcond151.not, label %for.body51.for.end57_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body51

for.body51.for.end57_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end57

for.end57:                                        ; preds = %for.body51.for.end57_crit_edge, %for.cond48.preheader.for.end57_crit_edge
  %45 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addrs, align 4
  br i1 %interlaced, label %for.body62.preheader, label %for.body80.preheader

for.body80.preheader:                             ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx84 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 0
  %47 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx84, align 4
  %arrayidx82.1 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx82.1, align 4
  %arrayidx84.1 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx84.1, align 4
  %arrayidx82.2 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx82.2, align 4
  %arrayidx84.2 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx84.2, align 4
  br label %if.end88

for.body62.preheader:                             ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %pitches to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pitches, align 2
  %conv66 = zext i16 %55 to i32
  %add67 = add i32 %46, %conv66
  %arrayidx69 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 0
  %56 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add67, ptr %arrayidx69, align 4
  %57 = load i16, ptr %pitches, align 2
  %mul72 = shl i16 %57, 1
  store i16 %mul72, ptr %pitches, align 2
  %arrayidx64.1 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx64.1, align 4
  %arrayidx65.1 = getelementptr i16, ptr %pitches, i32 1
  %60 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx65.1, align 2
  %conv66.1 = zext i16 %61 to i32
  %add67.1 = add i32 %59, %conv66.1
  %arrayidx69.1 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add67.1, ptr %arrayidx69.1, align 4
  %63 = load i16, ptr %arrayidx65.1, align 2
  %mul72.1 = shl i16 %63, 1
  store i16 %mul72.1, ptr %arrayidx65.1, align 2
  %arrayidx64.2 = getelementptr [3 x i32], ptr %addrs, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx64.2, align 4
  %arrayidx65.2 = getelementptr i16, ptr %pitches, i32 2
  %66 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx65.2, align 2
  %conv66.2 = zext i16 %67 to i32
  %add67.2 = add i32 %65, %conv66.2
  %arrayidx69.2 = getelementptr [3 x i32], ptr %addrs, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add67.2, ptr %arrayidx69.2, align 4
  %69 = load i16, ptr %arrayidx65.2, align 2
  %mul72.2 = shl i16 %69, 1
  store i16 %mul72.2, ptr %arrayidx65.2, align 2
  br label %if.end88

if.end88:                                         ; preds = %for.body62.preheader, %for.body80.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_drm_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc1, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.then26_crit_edge, label %lor.lhs.false

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

lor.lhs.false:                                    ; preds = %entry
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end, label %if.end27, !prof !25

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 92, i32 noundef 9, ptr noundef null) #4
  br label %if.then26

if.then26:                                        ; preds = %do.end, %entry.if.then26_crit_edge
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %visible, align 4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %tobool28.not = icmp eq ptr %state, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %11 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtcs.i, align 4
  %index.i.i132 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %index.i.i132 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i132, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %14, i32 1
  br label %if.end32

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %state31 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  %crtc_state.0.in = phi ptr [ %state1.i, %if.then29 ], [ %state31, %if.else ]
  %15 = ptrtoint ptr %crtc_state.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %crtc_state.0 = load ptr, ptr %crtc_state.0.in, align 4
  %call33 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %crtc_state.0, i32 noundef 0, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.0, i32 0, i32 7, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37 = icmp ne i32 %and, 0
  %and.lobit = lshr exact i32 %and, 4
  %18 = trunc i32 %and.lobit to i8
  br i1 %tobool37, label %if.then39, label %if.else52

if.then39:                                        ; preds = %if.end36
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %19 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y1, align 4
  %y2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %21 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y2, align 4
  %or = or i32 %22, %20
  %and41 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %23 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y1.i, align 4
  %sub.i = sub i32 %24, %26
  %shr = ashr i32 %sub.i, 17
  %src_hw = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %src_hw to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %src_hw, align 4
  %shr48 = ashr i32 %20, 1
  %dst_yx = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %dst_yx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr48, ptr %dst_yx, align 4
  %29 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y2, align 4
  %31 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y1, align 4
  %sub.i135 = sub i32 %30, %32
  %shr51 = ashr i32 %sub.i135, 1
  br label %if.end63

if.else52:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %y2.i136 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %33 = ptrtoint ptr %y2.i136 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y2.i136, align 4
  %y1.i137 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %35 = ptrtoint ptr %y1.i137 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y1.i137, align 4
  %sub.i138 = sub i32 %34, %36
  %shr55 = ashr i32 %sub.i138, 16
  %src_hw56 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %src_hw56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr55, ptr %src_hw56, align 4
  %y158 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %38 = ptrtoint ptr %y158 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y158, align 4
  %dst_yx59 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %dst_yx59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dst_yx59, align 4
  %y2.i139 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %y2.i139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y2.i139, align 4
  %sub.i141 = sub i32 %42, %39
  br label %if.end63

if.end63:                                         ; preds = %if.else52, %if.end44
  %sub.i141.sink = phi i32 [ %sub.i141, %if.else52 ], [ %shr51, %if.end44 ]
  %dst_hw62 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %dst_hw62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i141.sink, ptr %dst_hw62, align 4
  %src_hw64 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %src_hw64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_hw64, align 4
  %shl = shl i32 %45, 16
  %src65 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %46 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %x2.i, align 4
  %48 = ptrtoint ptr %src65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src65, align 4
  %sub.i142 = sub i32 %47, %49
  %shr67 = ashr i32 %sub.i142, 16
  %or69 = or i32 %shr67, %shl
  store i32 %or69, ptr %src_hw64, align 4
  %dst_yx70 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 2
  %50 = ptrtoint ptr %dst_yx70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dst_yx70, align 4
  %shl71 = shl i32 %51, 16
  %dst72 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %52 = ptrtoint ptr %dst72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst72, align 4
  %and73 = and i32 %53, 65535
  %or75 = or i32 %and73, %shl71
  store i32 %or75, ptr %dst_yx70, align 4
  %dst_hw76 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 3
  %54 = ptrtoint ptr %dst_hw76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst_hw76, align 4
  %shl77 = shl i32 %55, 16
  %x2.i143 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %56 = ptrtoint ptr %x2.i143 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %x2.i143, align 4
  %sub.i144 = sub i32 %57, %53
  %and80 = and i32 %sub.i144, 65535
  %or82 = or i32 %and80, %shl77
  store i32 %or82, ptr %dst_hw76, align 4
  %addrs = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 4
  %pitches = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 5
  tail call void @armada_drm_plane_calc(ptr noundef %5, ptr noundef %addrs, ptr noundef %pitches, i1 noundef zeroext %tobool37)
  %interlace86 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 6
  %58 = ptrtoint ptr %interlace86 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %18, ptr %interlace86, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %if.end63 ], [ %call33, %if.end32.cleanup_crit_edge ], [ -22, %if.then39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armada_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 168, i32 noundef 3264) #4
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.then26 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_drm_primary_plane_init(ptr noundef %drm, ptr noundef %primary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %primary, i32 0, i32 18
  %0 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armada_primary_plane_helper_funcs, ptr %helper_private.i, align 8
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef %primary, i32 noundef 0, ptr noundef nonnull @armada_primary_plane_funcs, ptr noundef nonnull @armada_primary_formats, i32 noundef 14, ptr noundef null, i32 noundef 1, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_primary_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %9, ptr noundef %11) #4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %do.end, label %if.end25, !prof !25

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 150, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %base30 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base30, align 8
  %name33 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name33, align 8
  %base35 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base35, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %26 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %visible, align 4, !range !26
  %28 = zext i8 %27 to i32
  %visible38 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %29 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %visible38, align 4, !range !26
  %31 = zext i8 %30 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef %31) #4
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 4
  %regs43 = getelementptr inbounds %struct.armada_crtc, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs43, align 4
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %33, i32 0, i32 24
  %36 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regs_idx, align 8
  %add.ptr44 = getelementptr %struct.armada_regs, ptr %35, i32 %37
  %38 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %visible, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool46.not = icmp eq i8 %39, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.end25.if.end65_crit_edge

if.end25.if.end65_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end25
  %40 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %visible38, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool48.not = icmp eq i8 %41, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end65_crit_edge, label %if.then50

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb, align 4
  %fmt = getelementptr inbounds %struct.armada_framebuffer, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fmt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %cmp = icmp ugt i8 %45, 7
  %spec.select = select i1 %cmp, i32 -66, i32 -2
  %46 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 420, ptr %add.ptr44, align 4
  %mask = getelementptr %struct.armada_regs, ptr %35, i32 %37, i32 1
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select, ptr %mask, align 4
  %val62 = getelementptr %struct.armada_regs, ptr %35, i32 %37, i32 2
  %48 = ptrtoint ptr %val62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val62, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then50, %land.lhs.true.if.end65_crit_edge, %if.end25.if.end65_crit_edge
  %idx.0 = phi i32 [ 0, %if.end25.if.end65_crit_edge ], [ 1, %if.then50 ], [ 0, %land.lhs.true.if.end65_crit_edge ]
  %src_hw = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 1
  %49 = ptrtoint ptr %src_hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_hw, align 4
  %src_hw72 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %src_hw72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src_hw72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp73.not = icmp eq i32 %52, %50
  br i1 %cmp73.not, label %if.end65.if.end87_crit_edge, label %do.body76

if.end65.if.end87_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

do.body76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx78 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.0
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 260, ptr %arrayidx78, align 4
  %mask81 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx78, i32 0, i32 1
  %54 = ptrtoint ptr %mask81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mask81, align 4
  %val83 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx78, i32 0, i32 2
  %55 = ptrtoint ptr %val83 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %val83, align 4
  %inc84 = add nuw nsw i32 %idx.0, 1
  br label %if.end87

if.end87:                                         ; preds = %do.body76, %if.end65.if.end87_crit_edge
  %idx.1 = phi i32 [ %inc84, %do.body76 ], [ %idx.0, %if.end65.if.end87_crit_edge ]
  %dst_yx = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 2
  %56 = ptrtoint ptr %dst_yx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_yx, align 4
  %dst_yx94 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %dst_yx94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dst_yx94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp95.not = icmp eq i32 %59, %57
  br i1 %cmp95.not, label %if.end87.if.end109_crit_edge, label %do.body98

if.end87.if.end109_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

do.body98:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx100 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.1
  %60 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 256, ptr %arrayidx100, align 4
  %mask103 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx100, i32 0, i32 1
  %61 = ptrtoint ptr %mask103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %mask103, align 4
  %val105 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx100, i32 0, i32 2
  %62 = ptrtoint ptr %val105 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %57, ptr %val105, align 4
  %inc106 = add nuw nsw i32 %idx.1, 1
  br label %if.end109

if.end109:                                        ; preds = %do.body98, %if.end87.if.end109_crit_edge
  %idx.2 = phi i32 [ %inc106, %do.body98 ], [ %idx.1, %if.end87.if.end109_crit_edge ]
  %dst_hw = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 3
  %63 = ptrtoint ptr %dst_hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dst_hw, align 4
  %dst_hw116 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 3
  %65 = ptrtoint ptr %dst_hw116 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dst_hw116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp117.not = icmp eq i32 %66, %64
  br i1 %cmp117.not, label %if.end109.if.end131_crit_edge, label %do.body120

if.end109.if.end131_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end131

do.body120:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx122 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.2
  %67 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 264, ptr %arrayidx122, align 4
  %mask125 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx122, i32 0, i32 1
  %68 = ptrtoint ptr %mask125 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %mask125, align 4
  %val127 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx122, i32 0, i32 2
  %69 = ptrtoint ptr %val127 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %val127, align 4
  %inc128 = add nuw nsw i32 %idx.2, 1
  br label %if.end131

if.end131:                                        ; preds = %do.body120, %if.end109.if.end131_crit_edge
  %idx.3 = phi i32 [ %inc128, %do.body120 ], [ %idx.2, %if.end109.if.end131_crit_edge ]
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %70 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src, align 4
  %src132 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20
  %72 = ptrtoint ptr %src132 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp134.not = icmp eq i32 %71, %73
  br i1 %cmp134.not, label %lor.lhs.false136, label %if.end131.do.body152_crit_edge

if.end131.do.body152_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body152

lor.lhs.false136:                                 ; preds = %if.end131
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %74 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %y1, align 4
  %y1139 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 1
  %76 = ptrtoint ptr %y1139 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %y1139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp140.not = icmp eq i32 %75, %77
  br i1 %cmp140.not, label %lor.lhs.false142, label %lor.lhs.false136.do.body152_crit_edge

lor.lhs.false136.do.body152_crit_edge:            ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body152

lor.lhs.false142:                                 ; preds = %lor.lhs.false136
  %fb143 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %78 = ptrtoint ptr %fb143 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fb143, align 4
  %80 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fb, align 4
  %cmp145.not = icmp eq ptr %79, %81
  br i1 %cmp145.not, label %lor.lhs.false147, label %lor.lhs.false142.do.body152_crit_edge

lor.lhs.false142.do.body152_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body152

lor.lhs.false147:                                 ; preds = %lor.lhs.false142
  %82 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %crtc, align 4
  %state149 = getelementptr inbounds %struct.drm_crtc, ptr %83, i32 0, i32 22
  %84 = ptrtoint ptr %state149 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state149, align 4
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load = load i8, ptr %mode_changed, align 2
  %87 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %bf.cast.not = icmp eq i8 %87, 0
  br i1 %bf.cast.not, label %lor.lhs.false147.if.end201_crit_edge, label %lor.lhs.false147.do.body152_crit_edge

lor.lhs.false147.do.body152_crit_edge:            ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body152

lor.lhs.false147.if.end201_crit_edge:             ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end201

do.body152:                                       ; preds = %lor.lhs.false147.do.body152_crit_edge, %lor.lhs.false142.do.body152_crit_edge, %lor.lhs.false136.do.body152_crit_edge, %if.end131.do.body152_crit_edge
  %arrayidx154 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.3
  %88 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 244, ptr %arrayidx154, align 4
  %mask157 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx154, i32 0, i32 1
  %89 = ptrtoint ptr %mask157 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %mask157, align 4
  %addrs = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 4
  %90 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addrs, align 4
  %val164 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx154, i32 0, i32 2
  %92 = ptrtoint ptr %val164 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %val164, align 4
  %inc165 = add nuw nsw i32 %idx.3, 1
  %arrayidx170 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc165
  %93 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 248, ptr %arrayidx170, align 4
  %mask173 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx170, i32 0, i32 1
  %94 = ptrtoint ptr %mask173 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %mask173, align 4
  %arrayidx178 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx178, align 4
  %val181 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx170, i32 0, i32 2
  %97 = ptrtoint ptr %val181 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %val181, align 4
  %inc182 = add nuw nsw i32 %idx.3, 2
  %arrayidx187 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc182
  %98 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 252, ptr %arrayidx187, align 4
  %mask190 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx187, i32 0, i32 1
  %99 = ptrtoint ptr %mask190 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -65536, ptr %mask190, align 4
  %pitches = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 5
  %100 = ptrtoint ptr %pitches to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %pitches, align 4
  %conv195 = zext i16 %101 to i32
  %val197 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx187, i32 0, i32 2
  %102 = ptrtoint ptr %val197 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv195, ptr %val197, align 4
  %inc198 = add nuw nsw i32 %idx.3, 3
  br label %if.end201

if.end201:                                        ; preds = %do.body152, %lor.lhs.false147.if.end201_crit_edge
  %idx.4 = phi i32 [ %inc198, %do.body152 ], [ %idx.3, %lor.lhs.false147.if.end201_crit_edge ]
  %fb202 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %103 = ptrtoint ptr %fb202 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fb202, align 4
  %105 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fb, align 4
  %cmp204.not = icmp eq ptr %104, %106
  br i1 %cmp204.not, label %lor.lhs.false206, label %if.end201.if.then215_crit_edge

if.end201.if.then215_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then215

lor.lhs.false206:                                 ; preds = %if.end201
  %107 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %crtc, align 4
  %state208 = getelementptr inbounds %struct.drm_crtc, ptr %108, i32 0, i32 22
  %109 = ptrtoint ptr %state208 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %state208, align 4
  %mode_changed209 = getelementptr inbounds %struct.drm_crtc_state, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %mode_changed209 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load210 = load i8, ptr %mode_changed209, align 2
  %112 = and i8 %bf.load210, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %bf.cast213.not = icmp eq i8 %112, 0
  br i1 %bf.cast213.not, label %if.else, label %lor.lhs.false206.if.then215_crit_edge

lor.lhs.false206.if.then215_crit_edge:            ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then215

if.then215:                                       ; preds = %lor.lhs.false206.if.then215_crit_edge, %if.end201.if.then215_crit_edge
  %fmt220 = getelementptr inbounds %struct.armada_framebuffer, ptr %106, i32 0, i32 1
  %113 = ptrtoint ptr %fmt220 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %fmt220, align 8
  %conv221 = zext i8 %114 to i32
  %shl = shl nuw nsw i32 %conv221, 16
  %mod = getelementptr inbounds %struct.armada_framebuffer, ptr %106, i32 0, i32 2
  %115 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %mod, align 1
  %conv226 = zext i8 %116 to i32
  %shl227 = shl nuw nsw i32 %conv226, 8
  %or228 = or i32 %shl227, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %114)
  %cmp235 = icmp ugt i8 %114, 7
  %or238 = or i32 %or228, 268435456
  %spec.select435 = select i1 %cmp235, i32 %or238, i32 %or228
  %117 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %visible38, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool241.not = icmp eq i8 %118, 0
  %or243 = or i32 %spec.select435, 256
  %cfg.1 = select i1 %tobool241.not, i32 %spec.select435, i32 %or243
  %interlace = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 6
  %119 = ptrtoint ptr %interlace to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %interlace, align 2, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool248.not = icmp eq i8 %120, 0
  %or250 = or i32 %cfg.1, 32768
  %cfg.2 = select i1 %tobool248.not, i32 %cfg.1, i32 %or250
  br label %if.end266

if.else:                                          ; preds = %lor.lhs.false206
  %121 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %visible, align 4, !range !26
  %123 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %visible38, align 4, !range !26
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %124)
  %cmp258.not = icmp eq i8 %122, %124
  br i1 %cmp258.not, label %if.else.if.end266_crit_edge, label %if.then260

if.else.if.end266_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end266

if.then260:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool256.not = icmp eq i8 %124, 0
  %cond = select i1 %tobool256.not, i32 0, i32 256
  br label %if.end266

if.end266:                                        ; preds = %if.then260, %if.else.if.end266_crit_edge, %if.then215
  %tobool291.not = phi i1 [ true, %if.else.if.end266_crit_edge ], [ false, %if.then260 ], [ false, %if.then215 ]
  %cfg_mask.0 = phi i32 [ 0, %if.else.if.end266_crit_edge ], [ 256, %if.then260 ], [ 269459200, %if.then215 ]
  %cfg.3 = phi i32 [ 0, %if.else.if.end266_crit_edge ], [ %cond, %if.then260 ], [ %cfg.2, %if.then215 ]
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %125 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %x2.i, align 4
  %127 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %src, align 4
  %sub.i = sub i32 %126, %128
  %x2.i439 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 2
  %129 = ptrtoint ptr %x2.i439 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %x2.i439, align 4
  %131 = ptrtoint ptr %src132 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %src132, align 4
  %sub.i440 = sub i32 %130, %132
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.i440)
  %cmp271.not = icmp eq i32 %sub.i, %sub.i440
  br i1 %cmp271.not, label %lor.lhs.false273, label %if.end266.if.end290.thread_crit_edge

if.end266.if.end290.thread_crit_edge:             ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end290.thread

lor.lhs.false273:                                 ; preds = %if.end266
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %x2.i441 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %133 = ptrtoint ptr %x2.i441 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %x2.i441, align 4
  %135 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dst, align 4
  %sub.i442 = sub i32 %134, %136
  %dst275 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  %x2.i443 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %137 = ptrtoint ptr %x2.i443 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %x2.i443, align 4
  %139 = ptrtoint ptr %dst275 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dst275, align 4
  %sub.i444 = sub i32 %138, %140
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i442, i32 %sub.i444)
  %cmp277.not = icmp eq i32 %sub.i442, %sub.i444
  br i1 %cmp277.not, label %if.end290, label %lor.lhs.false273.if.end290.thread_crit_edge

lor.lhs.false273.if.end290.thread_crit_edge:      ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end290.thread

if.end290.thread:                                 ; preds = %lor.lhs.false273.if.end290.thread_crit_edge, %if.end266.if.end290.thread_crit_edge
  %or280 = or i32 %cfg_mask.0, 16384
  %shr = ashr i32 %sub.i440, 16
  %dst283 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  %x2.i447 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %141 = ptrtoint ptr %x2.i447 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %x2.i447, align 4
  %143 = ptrtoint ptr %dst283 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dst283, align 4
  %sub.i448 = sub i32 %142, %144
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub.i448)
  %cmp285.not = icmp eq i32 %shr, %sub.i448
  %or288 = or i32 %cfg.3, 16384
  %spec.select436 = select i1 %cmp285.not, i32 %cfg.3, i32 %or288
  br label %do.body293

if.end290:                                        ; preds = %lor.lhs.false273
  br i1 %tobool291.not, label %if.end290.if.end305_crit_edge, label %if.end290.do.body293_crit_edge

if.end290.do.body293_crit_edge:                   ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body293

if.end290.if.end305_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end305

do.body293:                                       ; preds = %if.end290.do.body293_crit_edge, %if.end290.thread
  %cfg.4453 = phi i32 [ %spec.select436, %if.end290.thread ], [ %cfg.3, %if.end290.do.body293_crit_edge ]
  %cfg_mask.1452 = phi i32 [ %or280, %if.end290.thread ], [ %cfg_mask.0, %if.end290.do.body293_crit_edge ]
  %arrayidx295 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.4
  %145 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 400, ptr %arrayidx295, align 4
  %neg297 = xor i32 %cfg_mask.1452, -1
  %mask299 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx295, i32 0, i32 1
  %146 = ptrtoint ptr %mask299 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %neg297, ptr %mask299, align 4
  %val301 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx295, i32 0, i32 2
  %147 = ptrtoint ptr %val301 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %cfg.4453, ptr %val301, align 4
  %inc302 = add nuw nsw i32 %idx.4, 1
  br label %if.end305

if.end305:                                        ; preds = %do.body293, %if.end290.if.end305_crit_edge
  %idx.5 = phi i32 [ %inc302, %do.body293 ], [ %idx.4, %if.end290.if.end305_crit_edge ]
  %148 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %regs_idx, align 8
  %add = add i32 %149, %idx.5
  store i32 %add, ptr %regs_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end305, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_primary_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %7, ptr noundef %9) #4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %base5 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base5, align 8
  %name8 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name8, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb, align 4
  %base9 = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %13, ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %23) #4
  %24 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc, align 4
  %regs12 = getelementptr inbounds %struct.armada_crtc, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs12, align 4
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %25, i32 0, i32 24
  %28 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs_idx, align 8
  %add.ptr13 = getelementptr %struct.armada_regs, ptr %27, i32 %29
  %30 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 400, ptr %add.ptr13, align 4
  %mask = getelementptr %struct.armada_regs, ptr %27, i32 %29, i32 1
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -257, ptr %mask, align 4
  %val = getelementptr %struct.armada_regs, ptr %27, i32 %29, i32 2
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val, align 4
  %arrayidx18 = getelementptr %struct.armada_regs, ptr %add.ptr13, i32 1
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 420, ptr %arrayidx18, align 4
  %mask21 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx18, i32 0, i32 1
  %34 = ptrtoint ptr %mask21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %mask21, align 4
  %val23 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx18, i32 0, i32 2
  %35 = ptrtoint ptr %val23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 201, ptr %val23, align 4
  %36 = load i32, ptr %regs_idx, align 8
  %add = add i32 %36, 2
  store i32 %add, ptr %regs_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_primary_helper_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 48, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 92, i32 30}
!4 = !{ptr @armada_primary_plane_helper_funcs, !5, !"armada_primary_plane_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 257, i32 44}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 148, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 153, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 240, i32 2}
!12 = !{ptr @armada_primary_plane_funcs, !13, !"armada_primary_plane_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 288, i32 37}
!14 = !{ptr @armada_primary_formats, !15, !"armada_primary_formats", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/armada/armada_plane.c", i32 20, i32 23}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i8 0, i8 2}
